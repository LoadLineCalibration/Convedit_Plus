unit ConEditPlus.ConEventList.Utils;

interface
uses
    Vcl.Graphics, Vcl.StdCtrls, Vcl.Controls, Vcl.ExtCtrls, System.Types, System.SysUtils,
    Vcl.GraphUtil, Winapi.Windows, Conversation.Classes, ConEditPlus.Consts, ConEditPlus.Helpers;


procedure ConEventListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

procedure DrawET_Speech(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);



procedure DrawEventSelection(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState); // if event is selected
procedure HighlightSelectedEvent(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);

implementation

uses
    MainWindow;


procedure ConEventListDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
    with (Control as TListBox).Canvas do
    begin
        Font.Size := CEP_EVENT_LIST_FONT_SIZE;
        Font.Name := CEP_EVENT_LIST_FONT_NAME;

        Pen.Style := psInsideFrame;
        if  frmMain.bUseCustomGridColor = True then
            Frame3D(TListBox(Control).Canvas, Rect, frmMain.clrGrid, frmMain.clrGrid, 1) // разделитель
        else
            Frame3D(TListBox(Control).Canvas, Rect, frmMain.EventListColors.GridBG, frmMain.EventListColors.GridColor, 1); // разделитель

        // Turns out, original ConEdit highlights events with non-empty label with green color!
        // But I will implement that feature differently...
        with frmMain.ConEventList do
        begin
            if Items[Index].Contains(ET_Speech_Caption) then          DrawET_Speech(Control, Index, Rect, State) else
{            if Items[Index].Contains(ET_Choice_Caption) then          DrawET_Choice(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_SetFlag_Caption) then         DrawET_SetFlag(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_CheckFlag_Caption) then       DrawET_CheckFlag(Control, Index, Rect, State) else
            if Items[Index] = ET_CheckObject_Caption then             DrawET_CheckObject(Control, Index, Rect, State) else
            if Items[Index] = ET_TransferObject_Caption then          DrawET_TransferObject(Control, Index, Rect, State) else
            if Items[Index] = ET_MoveCamera_Caption then              DrawET_MoveCamera(Control, Index, Rect, State) else
            if Items[Index] = ET_Animation_Caption then               DrawET_Animation(Control, Index, Rect, State) else
            if Items[Index] = ET_Trade_Caption then                   DrawET_Trade(Control, Index, Rect, State) else
            if Items[Index] = ET_Jump_Caption then                    DrawET_Jump(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Random_Caption) then          DrawET_Random(Control, Index, Rect, State) else
            if Items[Index] = ET_Trigger_Caption then                 DrawET_Trigger(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_AddGoal_Caption) then         DrawET_AddGoal(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_AddNote_Caption) then         DrawET_AddNote(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_AddSkillPoints_Caption) then  DrawET_AddSkillPoints(Control, Index, Rect, State) else
            if Items[Index] = ET_AddCredits_Caption then              DrawET_AddCredits(Control, Index, Rect, State) else
            if Items[Index] = ET_CheckPersona_Caption then            DrawET_CheckPersona(Control, Index, Rect, State) else
            if Items[Index].Contains(ET_Comment_Caption) then         DrawET_Comment(Control, Index, Rect, State) else
            if Items[Index] = ET_End_Caption then                     DrawET_End(Control, Index, Rect, State);
            }
        end;

        if frmMain.ConEventList.Items.Objects[Index] <> nil then
        begin
            if (frmMain.ConEventList.Items.Objects[Index] is TConEventSpeech) and frmMain.bchkSpeech = True then HighlightSelectedEvent(Control, Index, Rect, State);
{            if (ConEventList.Items.Objects[Index] is TConEventChoice)         and bchkChoice = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventSetFlag)        and bchkSetFlag = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventCheckFlag)      and bchkCheckFlag = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventCheckObject)    and bchkCheckObject = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventTransferObject) and bchkTransferObject = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventMoveCamera)     and bchkMoveCamera = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAnimation)      and bchkAnimation = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventTrade)          and bchkTrade = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventJump)           and bchkJump = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventRandom)         and bchkRandom = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventTrigger)        and bchkTrigger = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddGoal)        and bchkAddGoal = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddNote)        and bchkAddNote = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddSkillPoints) and bchkAddSkillPoints = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventAddCredits)     and bchkAddCredits = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventCheckPersona)   and bchkCheckPersona = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventComment)        and bchkComment = True then HighlightSelectedEvent(Control, Index, Rect, State);
            if (ConEventList.Items.Objects[Index] is TConEventEnd)            and bchkEnd = True then HighlightSelectedEvent(Control, Index, Rect, State);
            }
        end;

        frmMain.ConEventList.Color := frmMain.EventListColors.EventListBG;
    end;
end;

procedure DrawET_Speech(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    tempRect: TRect;
    mp3str, SpeechStr,
    ActorNameStr,
    ActorToNameStr: string;
    SpeechEvent: TConEventSpeech;
begin
    SpeechEvent := TConEventSpeech(frmMain.ConEventList.Items.Objects[Index]);
    if SpeechEvent = nil then Exit();

    // load data from event
    //if ((CurrentConversation <> nil) and (TConEventSpeech(ConEventList.Items.Objects[Index]) <> nil)) then
    if ((frmMain.CurrentConversation <> nil) and (SpeechEvent <> nil)) then
    begin
        {mp3str := TConEventSpeech(ConEventList.Items.Objects[Index]).mp3File;
        ActorNameStr := TConEventSpeech(ConEventList.Items.Objects[Index]).ActorValue;
        ActorToNameStr := TConEventSpeech(ConEventList.Items.Objects[Index]).ActorToValue;
        SpeechStr := TConEventSpeech(ConEventList.Items.Objects[Index]).TextLine;}
        mp3str         := SpeechEvent.mp3File;
        ActorNameStr   := SpeechEvent.ActorValue;
        ActorToNameStr := SpeechEvent.ActorToValue;
        SpeechStr      := SpeechEvent.TextLine;
    end;

    if frmMain.bchkSpeech = False then Exit();  // Filter

    with (Control as TListBox).Canvas do
    begin
        if odSelected in State then
        begin
            DrawEventSelection(Control, Index, Rect, State);
            {
            if bUse3DSelectionFrame = True then
                DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO); // 3D рамка

            if bHglEventsGradient = True then
                GradientFillCanvas(ConEventList.Canvas, EventListColors.HighlightEventFrom, EventListColors.HighlightEventTo, Rect, gdVertical)
                //GradientFillCanvas(ConEventList.Canvas, clrHighlightEventFrom, clrHighlightEventTo, Rect, gdVertical)
            else
            begin
                //Brush.Color := clrHighlightEvent;
                Brush.Color := EventListColors.HighlightEvent;
                FillRect(Rect); // Заполнение цветом
            end
            }
        end else
        begin
            if (frmMain.bHglEventWithNoAudio = True) and (mp3str = '') then // what the point?
                Brush.Color := frmMain.EventListColors.SpeechBGNoAudio
                //Brush.Color := RGB(192,255,255)
            else
            begin
                if (frmMain.bUsePlayerSpeechBGColor = True) and (ActorNameStr = PLAYER_BINDNAME) then
                begin
                    if frmMain.clPlayerSpeechBGColor <> clNone then // Если цвет отличается от clNone, то берём его.
                        Brush.Color := frmMain.clPlayerSpeechBGColor
                    else
                        Brush.Color := frmMain.EventListColors.PlayerSpeechBG // В противном случае берём из темы.
                end
                else
                    Brush.Color := frmMain.EventListColors.SpeechBG;
                    //Brush.Color := RGB(192,255,192); // green
            end;

            FillRect(Rect); // Заполнение цветом
        end;

        //if ((odSelected in State) and (bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clBlack;
        if ((odSelected in State) and (frmMain.bUseWhiteSelectedText = True)) then
        begin
            //if clPlayerBindNameColor <> clNone then
            //    Font.Color := clPlayerBindNameColor
            //else
                Font.Color := clWhite;
        end
        else
        begin
            if (ActorNameStr = PLAYER_BINDNAME) and (frmMain.bUsePlayerBindNameColor = True) then
            begin
                if frmMain.clPlayerBindNameColor <> clNone then
                    Font.Color := frmMain.clPlayerBindNameColor
                else
                    Font.Color := frmMain.EventListColors.PlayerSpeechBindName
            end
                else Font.Color := frmMain.EventListColors.PlayerSpeechBindName;
                //Font.Color := EventListColors.PlayerSpeechBindName else Font.Color := EventListColors.EventHeaderText;
                //Font.Color := clPlayerBindNameColor else Font.Color := clBlack;
        end;

        Font.Style := [fsBold];

        Brush.Style := bsClear;
        TextOut(Rect.Left + frmMain.HeaderControl1.Sections[0].Width, Rect.Top, ET_Speech_Caption); // Event header

        // NPC/Actor/Player BindName
        TextOut(Rect.Left + frmMain.HeaderControl1.Sections[1].Width + frmMain.HeaderControl1.Sections[0].Width, Rect.Top, ActorNameStr + '');

        if frmMain.bShowAudioFiles = true then
        begin
            TempRect := Rect;
            TempRect.Left := Rect.Left + frmMain.HeaderControl1.Sections[0].Width + frmMain.HeaderControl1.Sections[1].Width + frmMain.HeaderControl1.Sections[2].Width;
            DrawText(Handle, mp3str, -1, TempRect, DT_END_ELLIPSIS);  // mp3 file path
        end;

        tempRect := Rect;
        tempRect.Left := Rect.Left + frmMain.HeaderControl1.Sections[0].Width;
        tempRect.Top := Rect.Top + Round(16 * ConEditPlus.Helpers.GetDPIAsRatio());
        tempRect.Right := Rect.Right - frmMain.SysScrollBarWidth; // right offset

        Font.Style := [];

        if ((odSelected in State) and (frmMain.bUseWhiteSelectedText = true)) then Font.Color := clWhite
            else
            begin
                if (ActorNameStr = PLAYER_BINDNAME) and (frmMain.bUsePlayerBindNameColor = True) then
                    Font.Color := frmMain.EventListColors.PlayerSpeechText  // player speech text - selected
                    else Font.Color := frmMain.EventListColors.SpeechText;  // NPC speech text - selected
            end;
            //(bUseWhiteSelectedText = true)) then Font.Color := clWhite else Font.Color := clNavy;

        Font.Name := CEP_SPEECH_EVENT_FONT;
        Font.Size := CEP_SPEECH_EVENT_FONT_SIZE;

        DrawText(Handle, SpeechStr, -1, TempRect,  DT_END_ELLIPSIS or DT_WORDBREAK or DT_EDITCONTROL); // and draw it!
    end;
end;

procedure DrawEventSelection(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState); // if event is selected
begin
    with (Control as TListBox).Canvas do
    begin
        if frmMain.bUse3DSelectionFrame = True then
           DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_ADJUSTRECT or DFCS_MONO);

        if frmMain.bUseCustomHighlightEventColor = True then // override colors?
        begin
            if (frmMain.bHglEventsGradient = True) then
            begin
                GradientFillCanvas(frmMain.ConEventList.Canvas, frmMain.clrHighlightEventFrom, frmMain.clrHighlightEventTo, Rect, gdVertical)
            end
            else
            begin
                //Brush.Color := clrHighlightEventFrom;
                Brush.Color := frmMain.clrHighlightEvent;
                FillRect(Rect);
            end;
        end
        else // Or use from selected theme?
        begin
            if (frmMain.bHglEventsGradient = False) then
            begin
                GradientFillCanvas(frmMain.ConEventList.Canvas, frmMain.EventListColors.HighlightEventFrom, frmMain.EventListColors.HighlightEventTo, Rect, gdVertical)
            end
            else
            begin
                Brush.Color := frmMain.EventListColors.HighlightEvent;
                FillRect(Rect);
            end;
        end;
    end;
end;

procedure HighlightSelectedEvent(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
    labelStr, idxStr: String;
    tempRect: TRect;
    Event: TConEvent;
begin
    with (Control as TListBox).Canvas do
    begin
        if frmMain.CurrentConversation <> nil then
        begin
            Event := TConEvent(frmMain.ConEventList.Items.Objects[Index]);
            if Event <> nil then
            begin
               labelStr:= TConEvent(frmMain.ConEventList.Items.Objects[Index]).EventLabel;
               idxStr := TConEvent(frmMain.ConEventList.Items.Objects[Index]).EventIdx.ToString() + '>' +
                         TConEvent(frmMain.ConEventList.Items.Objects[Index]).unknown1.ToString();
            end;
        end;

        if Event = nil then Exit();

        Font.Size := CEP_EVENT_LABEL_FONT_SIZE;
        Font.Name := CEP_EVENT_LABEL_FONT;
        Font.Style := [fsBold];

        if labelStr <> '' then
        begin
            tempRect := Rect;

            tempRect.Left := Rect.Left;
            tempRect.Right := frmMain.HeaderControl1.Sections[0].Width - 1;
            tempRect.Top := Rect.Top;
            Brush.Style := bsClear;

            //FillRectAlpha(TListBox(Control).Canvas, tempRect, clLime, 64);
            FillRectAlpha(TListBox(Control).Canvas, tempRect, frmMain.EventListColors.EventWithLabel, 64);
        end;

        case Event.EventHighlightType of
            EHT_Related:
            begin
                tempRect := Rect;

                tempRect.Left := Rect.Left;
                tempRect.Right := frmMain.HeaderControl1.Sections[0].Width - 1;
                tempRect.Top := Rect.Top;
                Brush.Style := bsClear;

                //case EventListColorsMode of
                GradientFillCanvas(TListBox(Control).Canvas, frmMain.EventListColors.RelatedEventFrom, frmMain.EventListColors.RelatedEventTo, tempRect, gdHorizontal);
                    //ELCM_Default: GradientFillCanvas(TListBox(Control).Canvas, clYellow, clCream, tempRect, gdHorizontal);
                    //ELCM_Dark:    GradientFillCanvas(TListBox(Control).Canvas, RGB(128,121,0), clWebYellowGreen, tempRect, gdHorizontal);
                //end;
            end;

            EHT_Error:
            begin
                tempRect := Rect;

                tempRect.Left := Rect.Left;
                tempRect.Right := frmMain.HeaderControl1.Sections[0].Width - 1;
                tempRect.Top := Rect.Top;
                Brush.Style := bsClear;

                GradientFillCanvas(TListBox(Control).Canvas, frmMain.EventListColors.ErrorEventFrom, frmMain.EventListColors.ErrorEventTo, tempRect, gdHorizontal);
                //GradientFillCanvas(TListBox(Control).Canvas, clWebOrange, clRed, tempRect, gdHorizontal);
            end;
        end;

        if ((odSelected in State) and (frmMain.bUseWhiteSelectedText = true)) then
            Font.Color := clWhite else Font.Color := frmMain.EventListColors.EventLabelText;
           //Font.Color := clWhite else Font.Color := clMaroon;

        if frmMain.bDrawEventIdx = True then
            //TextOut(Rect.Left + Round(40 * GetDPIAsRatio()), Rect.Top + 4, labelStr)
            //TextOut(Rect.Left + 20, Rect.Top + 14, labelStr)
            TextOut(Rect.Left + 2, Rect.Top + 20, labelStr)
        else
            TextOut(Rect.Left + 2, Rect.Top + 2, labelStr);

        // draw event index here (set color and draw text)
        if frmMain.bDrawEventIdx = True then  // Hide Event Index when needed
        begin
            if ((odSelected in State) and (frmMain.bUseWhiteSelectedText = true)) then
               Font.Color := clYellow else Font.Color := clBlue;

            TextOut(Rect.Left, Rect.Top + 4, idxStr);
        end;
    end;
end;



end.

