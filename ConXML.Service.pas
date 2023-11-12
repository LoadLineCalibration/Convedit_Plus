//
// ToDo: ѕереместить простыни из MainWindow.pas и сделать из них платочки...
//

unit ConXML.Service;

interface

uses
    System.SysUtils, xml.VerySimple, Conversation.Classes, MainWindow;

procedure ReadConXMLHeader(const aFile: string); // XML mode
procedure ReadConXMLData(const aFile: string);
procedure BuildConXMLFile(aFile: string);


procedure ReadConBinHeader(const aFile: string); // .Con file mode
procedure ReadConBinData(aFile: string);
procedure BuildConBinFile(aFile: string);


implementation

procedure ReadConXMLHeader(const aFile: string);
var
    actorsNode, flagsNode,
    skillsNode, objectsNode,
    parametersNode,
    missionsArray, RootNode: TXmlNode;

    conXMLDocLocal: TXmlVerySimple;
begin
    with frmMain do begin

    ConvoTree.Items.Clear();
    ConEventList.Clear();
    ConversationsList.Clear();
    conFileParameters.Clear();
    conXMLDocLocal:= TXmlVerySimple.Create();
    conXMLDocLocal.Encoding := 'windows-1251';
    conXMLDocLocal.Options := [doCaseInsensitive];
try
    conXMLDocLocal.LoadFromFile(aFile);
    StatusBar.Panels[1].Text := aFile;

    RootNode := conXMLDocLocal.DocumentElement;
    parametersNode := RootNode.Find('Parameters'); // parameters node

    // read and fill parameters
    for var i:=0 to parametersNode.ChildNodes.Count -1 do
    begin
        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('fileVersion') then
           conFileParameters.fpFileVersion := parametersNode.ChildNodes[i].NodeValue.ToInteger;

        if parametersNode.ChildNodes[i].Name = 'createdBy' then  // Creator and date
        begin
           conFileParameters.fpCreatedByName := parametersNode.ChildNodes[i].Find('Name').NodeValue;
           conFileParameters.fpCreatedByDate := parametersNode.ChildNodes[i].Find('Date').NodeValue;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('modifiedBy') then  // who modified and date
        begin
           conFileParameters.fpModifiedByName := parametersNode.ChildNodes[i].Find('Name').NodeValue;
           conFileParameters.fpModifiedByDate := parametersNode.ChildNodes[i].Find('Date').NodeValue;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('audioPackage') then  // Audio Package
           conFileParameters.fpAudioPackage := parametersNode.ChildNodes[i].NodeValue;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('notes') then  // Notes
           conFileParameters.fpNotes := parametersNode.ChildNodes[i].NodeValue;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('missions') then  // array of missions
        begin
           missionsArray := parametersNode.ChildNodes[i];

           for var mi:= 0 to missionsArray.ChildNodes.Count -1 do  // set missions in array
           begin
               SetLength(conFileParameters.fpMissions, missionsArray.ChildNodes.Count); // set array length
               conFileParameters.fpMissions[mi] := missionsArray.ChildNodes[mi].NodeValue.ToInteger;
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('actors') then  // array of Actors/Pawns
        begin
           actorsNode := parametersNode.ChildNodes[i];

           for var act:= 0 to actorsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpActors.Insert(
               actorsNode.ChildNodes[act].Attributes['Index'].ToInteger,
               actorsNode.ChildNodes[act].Attributes['Value']);
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('flags') then  // array of Flags
        begin
           flagsNode := parametersNode.ChildNodes[i];

           for var flg:= 0 to flagsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpFlags.Insert(
               flagsNode.ChildNodes[flg].Attributes['Index'].ToInteger,
               flagsNode.ChildNodes[flg].Attributes['Value']);
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('skills') then  // array of skills
        begin
           skillsNode := parametersNode.ChildNodes[i];

           for var skl:= 0 to skillsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpSkills.Insert(
               skillsNode.ChildNodes[skl].Attributes['Index'].ToInteger,
               skillsNode.ChildNodes[skl].Attributes['Value']);
           end;
        end;

        if UpperCase(parametersNode.ChildNodes[i].Name) = UpperCase('objects') then  // array of Objects
        begin
           objectsNode := parametersNode.ChildNodes[i];

           for var obj:= 0 to objectsNode.ChildNodes.Count -1 do
           begin
               conFileParameters.fpObjects.Insert(
               objectsNode.ChildNodes[obj].Attributes['Index'].ToInteger,
               objectsNode.ChildNodes[obj].Attributes['Value']);
           end;
        end;
    end;
finally
    conXMLDocLocal.Free();
end;

    end;
end;

procedure ReadConXMLData(const aFile: string);
begin
//
end;

procedure BuildConXMLFile(aFile: string);
begin
  //
end;


procedure ReadConBinHeader(const aFile: string);
begin
//
end;

procedure ReadConBinData(aFile: string);
begin
//
end;

procedure BuildConBinFile(aFile: string);
begin
//
end;

end.
