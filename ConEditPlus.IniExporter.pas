unit ConEditPlus.IniExporter;

interface
uses
    System.SysUtils, System.Rtti, System.TypInfo, System.Classes, System.IniFiles, System.Generics.Collections,
    System.StrUtils, Conversation.Classes;
type
    TEventTypeSet = set of Conversation.Classes.TEventType;

procedure SaveConFileParametersToIni(const Params: TConFileParameters; const AIni: TCustomIniFile);
procedure SaveConversationsToIni(ConversationsList: TObjectList<TConversation>; const Params: TConFileParameters; const FileName: string);
procedure SaveConversationsToIniFiltered(
  ConversationsList: TObjectList<TConversation>;
  const Params: TConFileParameters;
  const AllowedEventTypes: TEventTypeSet;
  const FileName: string);

procedure SaveObjectToIniEx(
    const Obj: TObject;
    const AIni: TCustomIniFile;
    const ASection: string;
    const Exclude: array of string);


implementation


procedure SaveConFileParametersToIni(const Params: TConFileParameters; const AIni: TCustomIniFile);
var
    ctx: TRttiContext;
    rType: TRttiType;
    field: TRttiField;
    value: TValue;
    i: Integer;
begin
    if Params = nil then Exit();

    ctx := TRttiContext.Create;
    try
        rType := ctx.GetType(Params.ClassType);
        for field in rType.GetFields do
        begin
            value := field.GetValue(Params);

            case field.FieldType.TypeKind of
                tkInteger, tkFloat, tkChar, tkString, tkUString, tkInt64,
                tkWChar, tkLString, tkWString, tkEnumeration:
                    begin
                        if field.FieldType.TypeKind = tkEnumeration then
                        begin
                            if SameText(field.FieldType.Name, 'Boolean') or SameText(field.FieldType.Name, 'bool') then
                                AIni.WriteString('FileParameters', field.Name, BoolToStr(value.AsBoolean, True))
                            else
                                AIni.WriteString('FileParameters', field.Name, GetEnumName(value.TypeInfo, value.AsOrdinal));
                        end
                        else
                            AIni.WriteString('FileParameters', field.Name, value.ToString());
                    end;

                tkDynArray:
                    for i := 0 to value.GetArrayLength - 1 do
                        AIni.WriteString('FileParameters', Format('%s[%d]', [field.Name, i]), value.GetArrayElement(i).ToString());

                tkClass:
                begin
                    // Если это TStringList — сериализуем по ключам
                    if value.AsObject is TStringList then
                    begin
                        var sl := TStringList(value.AsObject);
                        for i := 0 to sl.Count - 1 do
                            AIni.WriteString('FileParameters', field.Name + '[' + IntToStr(i) + ']', sl[i]);
                    end
                    // ...другие классы можно по необходимости
                end;
            end;
        end;
    finally
        ctx.Free;
    end;
end;

procedure WriteSimpleValue(const AIni: TCustomIniFile; const ASection, AKey: string; const AValue: TValue);
begin
    if AValue.Kind = tkEnumeration then
    begin
        if SameText(String(AValue.TypeInfo.Name), 'Boolean') or SameText(String(AValue.TypeInfo.Name), 'bool') then
            AIni.WriteString(ASection, AKey, BoolToStr(AValue.AsBoolean, True))
        else
            AIni.WriteString(ASection, AKey, GetEnumName(AValue.TypeInfo, AValue.AsOrdinal));
    end
    else
        AIni.WriteString(ASection, AKey, AValue.ToString());
end;

procedure SaveRecordToIni(const Rec: TValue; const AIni: TCustomIniFile; const ASection, APrefix: string);
var
    ctx   : TRttiContext;
    rType : TRttiType;
    field : TRttiField;
    value : TValue;
begin
    ctx   := TRttiContext.Create;
    rType := ctx.GetType(Rec.TypeInfo);

    for field in rType.GetFields do
    begin
        value := field.GetValue(Rec.GetReferenceToRawData);

        case field.FieldType.TypeKind of
            tkInteger, tkFloat, tkChar, tkString, tkUString,
            tkInt64, tkWChar, tkLString, tkWString, tkEnumeration:
                WriteSimpleValue(AIni, ASection, APrefix + field.Name, value);

            tkRecord:
                SaveRecordToIni(value, AIni, ASection, APrefix + field.Name + '.');
        end;
    end;
end;

procedure SaveObjectToIni(const Obj: TObject; const AIni: TCustomIniFile; const ASection: string);
var
    ctx   : TRttiContext;
    rType : TRttiType;
    field : TRttiField;
    value : TValue;
    i     : Integer;
begin
    ctx   := TRttiContext.Create;
    rType := ctx.GetType(Obj.ClassType);

    for field in rType.GetFields do
    begin
        value := field.GetValue(Obj);

        case field.FieldType.TypeKind of
            tkInteger, tkFloat, tkChar, tkString, tkUString,
            tkInt64, tkWChar, tkLString, tkWString, tkEnumeration:
                WriteSimpleValue(AIni, ASection, field.Name, value);

            tkRecord:
                SaveRecordToIni(value, AIni, ASection, field.Name + '.');

            tkDynArray:
            begin
                for i := 0 to value.GetArrayLength - 1 do
                begin
                    var item := value.GetArrayElement(i);

                    case item.Kind of
                        tkClass:
                            SaveObjectToIni(
                                item.AsObject,
                                AIni,
                                Format('%s.%s[%d]', [ASection, field.Name, i]));

                        tkRecord:
                            SaveRecordToIni(
                                item,
                                AIni,
                                ASection,
                                Format('%s[%d].', [field.Name, i]));

                    else
                        WriteSimpleValue(
                            AIni,
                            ASection,
                            Format('%s[%d]', [field.Name, i]),
                            item);
                    end;
                end;
            end;

            tkClass:
                if (not value.IsEmpty) and (value.AsObject <> nil) then
                    SaveObjectToIni(
                        value.AsObject,
                        AIni,
                        ASection + '.' + field.Name);
        end;
    end;
end;

procedure SaveConversationsToIni(ConversationsList: TObjectList<TConversation>; const Params: TConFileParameters; const FileName: string);
var
    ini : TMemIniFile;
    idx : Integer;
begin
    ini := TMemIniFile.Create(FileName);
    try
        // ConFileParameters
        if Params <> nil then
            SaveConFileParametersToIni(Params, ini);

        // ...и диалоги
        for idx := 0 to ConversationsList.Count - 1 do
            SaveObjectToIni(
                ConversationsList[idx],
                ini,
                'Conversation_' + idx.ToString()
            );

        ini.UpdateFile;
    finally
        ini.Free;
    end;
end;
procedure SaveConversationsToIniFiltered(
  ConversationsList: TObjectList<TConversation>;
  const Params: TConFileParameters;
  const AllowedEventTypes: TEventTypeSet;
  const FileName: string);
var
    ini : TMemIniFile;
    idx, evIdx, outEvIdx: Integer;
    conv: TConversation;
    event: TConEvent;
    section: string;
begin
    ini := TMemIniFile.Create(FileName);
    try
        // 1. Пишем параметры файла
        if Params <> nil then
            SaveConFileParametersToIni(Params, ini);

        // 2. Пишем диалоги, фильтруем события по типу
        for idx := 0 to ConversationsList.Count - 1 do
        begin
            conv := ConversationsList[idx];
            // Сохраняем поля самого TConversation, кроме массива Events
            // (если хочешь всё подряд — можно отдельной процедурой,
            // сейчас пропущу, чтобы не плодить мусор в ini)
            SaveObjectToIniEx(
                conv,
                ini,
                'Conversation_' + idx.ToString(),
                ['Events']       // <-- исключаем только массив событий
            );

            // Сохраняем только выбранные события!
            outEvIdx := 0;
            for evIdx := 0 to High(conv.Events) do
            begin
                event := conv.Events[evIdx];
                if event.EventType in AllowedEventTypes then
                begin
                    section := Format('Conversation_%d.Events[%d]', [idx, outEvIdx]);
                    SaveObjectToIni(event, ini, section);
                    Inc(outEvIdx);
                end;
            end;
        end;

        ini.UpdateFile;
    finally
        ini.Free;
    end;
end;
procedure SaveObjectToIniEx(
    const Obj: TObject;
    const AIni: TCustomIniFile;
    const ASection: string;
    const Exclude: array of string
);
var
    ctx   : TRttiContext;
    rType : TRttiType;
    field : TRttiField;
    value : TValue;
    i     : Integer;
begin
    ctx   := TRttiContext.Create;
    try
        rType := ctx.GetType(Obj.ClassType);
        for field in rType.GetFields do
        begin
            // >>> пропускаем исключённые поля
            if MatchText(field.Name, Exclude) then
                Continue;
            value := field.GetValue(Obj);
            case field.FieldType.TypeKind of
                tkInteger, tkFloat, tkChar, tkString, tkUString,
                tkInt64, tkWChar, tkLString, tkWString, tkEnumeration:
                    WriteSimpleValue(AIni, ASection, field.Name, value);
                tkRecord:
                    SaveRecordToIni(value, AIni, ASection, field.Name + '.');
                tkDynArray:
                    for i := 0 to value.GetArrayLength - 1 do
                        WriteSimpleValue(
                            AIni,
                            ASection,
                            Format('%s[%d]', [field.Name, i]),
                            value.GetArrayElement(i)
                        );
                tkClass:
                    if (not value.IsEmpty) and (value.AsObject <> nil) then
                        SaveObjectToIniEx(
                            value.AsObject,
                            AIni,
                            ASection + '.' + field.Name,
                            [] // дочерним объектам отдельный Exclude не нужен
                        );
            end;
        end;
    finally
        ctx.Free;
    end;
end;

end.

