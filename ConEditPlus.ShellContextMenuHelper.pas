//
unit ConEditPlus.ShellContextMenuHelper;

interface

uses
  Winapi.Windows, Winapi.ShlObj, Winapi.ShellAPI, Winapi.ActiveX, System.SysUtils, System.Classes,
  System.Win.ComObj;

type
  TShellContextMenu = class (TObject)
  private
    FContextMenu: IContextMenu;
    FContextMenu2: IContextMenu2;
    FContextMenu3: IContextMenu3;
    FWndProcOld: Pointer;
    FPopupWnd: HWND;
    FOwnerWnd: HWND;
    procedure HookWndProc();
    procedure UnhookWndProc();
    class function PopupWndProc(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall; static;
    procedure PrepareInterfaces();
  public
    constructor Create();
    destructor Destroy(); override;
    function ShowContextMenu(const FileName: string; OwnerWnd: HWND; const ScreenPt: TPoint): Boolean;
  end;

implementation

{TShellContextMenu}

constructor TShellContextMenu.Create();
begin
    inherited Create();
    FContextMenu := nil;
    FContextMenu2 := nil;
    FContextMenu3 := nil;
    FWndProcOld := nil;
    FPopupWnd := 0;
    FOwnerWnd := 0;
end;

destructor TShellContextMenu.Destroy();
begin
    UnhookWndProc();
    inherited;
end;

// Замена оконной процедуры временного окна для ловли сообщений вложенных Shell-меню
class function TShellContextMenu.PopupWndProc(hWnd: HWND; uMsg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
var
    SelfObj: TShellContextMenu;
    res: LRESULT;
begin
    // Получаем объект TShellContextMenu по GWLP_USERDATA
    SelfObj := TShellContextMenu(GetWindowLongPtr(hWnd, GWLP_USERDATA));
    if Assigned(SelfObj) then
    begin
        // IContextMenu3 — самый новый
        if Assigned(SelfObj.FContextMenu3) then
        begin
            if SelfObj.FContextMenu3.HandleMenuMsg2(uMsg, wParam, lParam, res) = S_OK then
            begin
                Result := res;
                Exit();
            end;
        end
        // IContextMenu2 — чуть старее
        else if Assigned(SelfObj.FContextMenu2) then
        begin
            if SelfObj.FContextMenu2.HandleMenuMsg(uMsg, wParam, lParam) = S_OK then
            begin
                Result := 0;
                Exit();
            end;
        end;
        // Остальные сообщения — стандартная обработка
        if Assigned(SelfObj.FWndProcOld) then
        begin
            Result := CallWindowProc(SelfObj.FWndProcOld, hWnd, uMsg, wParam, lParam);
            Exit();
        end;
    end;
    Result := DefWindowProc(hWnd, uMsg, wParam, lParam);
end;

// Переназначаем оконную процедуру и сохраняем старую
procedure TShellContextMenu.HookWndProc();
begin
    SetWindowLongPtr(FPopupWnd, GWLP_USERDATA, NativeInt(Self));
    FWndProcOld := Pointer(SetWindowLongPtr(FPopupWnd, GWLP_WNDPROC, NativeInt(@TShellContextMenu.PopupWndProc)));
end;

// Восстанавливаем оконную процедуру (очищаем hook)
procedure TShellContextMenu.UnhookWndProc();
begin
    if FPopupWnd <> 0 then
    begin
        if Assigned(FWndProcOld) then
            SetWindowLongPtr(FPopupWnd, GWLP_WNDPROC, NativeInt(FWndProcOld));

        SetWindowLongPtr(FPopupWnd, GWLP_USERDATA, 0);
        DestroyWindow(FPopupWnd);
        FPopupWnd := 0;
    end;
    FWndProcOld := nil;
end;

procedure TShellContextMenu.PrepareInterfaces();
begin
    FContextMenu2 := nil;
    FContextMenu3 := nil;

    if Assigned(FContextMenu) then
    begin
        Supports(FContextMenu, IContextMenu3, FContextMenu3);

        if not Assigned(FContextMenu3) then
            Supports(FContextMenu, IContextMenu2, FContextMenu2);
    end;
end;

function TShellContextMenu.ShowContextMenu(const FileName: string; OwnerWnd: HWND; const ScreenPt: TPoint): Boolean;
var
    pidl, child: PItemIDList;
    sfgao: ULONG;
    parentFolder: IShellFolder;
    h_Menu: HMENU;
    cmd: UINT;
    ici: TCMInvokeCommandInfo;
begin
    Result := False;
    FOwnerWnd := OwnerWnd;

    OleCheck(OleInitialize(nil));
    try
        FContextMenu := nil;
        pidl := nil;
        OleCheck(SHParseDisplayName(PChar(FileName), nil, pidl, 0, sfgao));
        try
            OleCheck(SHBindToParent(pidl, IID_IShellFolder, Pointer(parentFolder), child));
            OleCheck(parentFolder.GetUIObjectOf(0, 1, child, IID_IContextMenu, nil, FContextMenu));
            PrepareInterfaces;

            // Временное окно для обработки сообщений вложенных меню
            FPopupWnd := CreateWindow('STATIC', nil, WS_POPUP, 0, 0, 0, 0, 0, 0, HInstance, nil);
            if FPopupWnd = 0 then RaiseLastOSError();

            HookWndProc();
            try
                h_Menu := CreatePopupMenu;
                try
                    OleCheck(FContextMenu.QueryContextMenu(h_Menu, 0, 1, $7FFF, CMF_NORMAL));
                    cmd := UINT(TrackPopupMenu(
                      h_Menu,
                      TPM_RETURNCMD or TPM_LEFTALIGN or TPM_TOPALIGN,
                      ScreenPt.X, ScreenPt.Y, 0, FPopupWnd, nil
                      ));

                    if cmd <> 0 then
                    begin
                        ZeroMemory(@ici, SizeOf(ici));
                        ici.cbSize := SizeOf(ici);
                        ici.hwnd := OwnerWnd;
                        ici.lpVerb := PAnsiChar(NativeUInt(cmd - 1));
                        ici.nShow := SW_SHOWNORMAL;
                        OleCheck(FContextMenu.InvokeCommand(ici));
                        Result := True;
                    end;

                finally
                    DestroyMenu(h_Menu);
                end;

            finally
                UnhookWndProc();
            end;

        finally
            CoTaskMemFree(pidl);
        end;

    finally
        OleUninitialize();
    end;
end;

end.

