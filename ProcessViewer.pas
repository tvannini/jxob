{
  ProcessViewer Unit V1.0
  by Leo, March 2001

  See the file ProcessViewer.txt for informations about the properties and methods.
}

unit ProcessViewer;

interface

uses
  Windows, Dialogs, SysUtils, Classes, ShellAPI, TLHelp32, Forms;

const
  SleepForReCheck = 5000;

type
  TProcessInfo = record
    FileName: string;
    Caption: string;
    Visible: boolean;
    Handle: DWord;
    PClass: string;
    ThreadID: DWord;
    PID: DWord;
  end;


var
  DateiList, CaptionList, VisibleList, HandleList, ClassList, ThreadIdList, PIDList:
  TStringList;
  ProcessInfo: array of TProcessInfo;

function EnumWindowsProc(hWnd: HWND; lParam: LPARAM): Bool; stdcall;
function KillProcessByPID(PID: DWord): boolean;
function KillProcessByFileName(FileName: string; KillAll: boolean): boolean;
procedure GetProcessList;
function GetFileNameFromHandle(Handle: hwnd): string;
function IsFileActive(FileName: string): boolean;

implementation

procedure GetProcessList;
var
  i, Laenge: integer;
begin
  DateiList.Clear;
  HandleList.Clear;
  ClassList.Clear;
  CaptionList.Clear;
  VisibleList.Clear;
  ThreadIdList.Clear;
  PIDList.Clear;
  EnumWindows(@EnumWindowsProc, 0);
  Laenge := DateiList.Count;
  SetLength(ProcessInfo, Laenge);
  for i := 0 to Laenge - 1 do
  begin
    DateiList[i] := UpperCase(DateiList[i]);
    with ProcessInfo[i] do
    begin
      FileName := DateiList[i];
      Caption  := CaptionList[i];
      Visible  := VisibleList[i] = '1';
      Handle   := StrToInt64(HandleList[i]);
      PClass   := ClassList[i];
      ThreadID := StrToInt64(ThreadIdList[i]);
      PID      := StrToInt64(PIDList[i]);
    end;
  end;
end;

function IsFileActive(FileName: string): boolean;
var
  i: integer;
begin
  Result := False;
  if FileName = '' then
  begin
    exit
  end;
  GetProcessList;
  FileName := UpperCase(ExtractFileName(FileName));
  for i := 0 to Length(ProcessInfo) - 1 do
  begin

    if Pos(FileName, ProcessInfo[i].FileName) > 0 then
    begin
      Result := True;
      break;
    end;
  end;
end;

function GetFileNameFromHandle(Handle: hwnd): string;
var
  PID: DWord;
  aSnapShotHandle: THandle;
  ContinueLoop: boolean;
  aProcessEntry32: TProcessEntry32;
begin
  GetWindowThreadProcessID(Handle, @PID);
  aSnapShotHandle := CreateToolHelp32SnapShot(TH32CS_SNAPPROCESS, 0);
  aProcessEntry32.dwSize := SizeOf(aProcessEntry32);
  ContinueLoop    := Process32First(aSnapShotHandle, aProcessEntry32);
  while integer(ContinueLoop) <> 0 do
  begin
    if aProcessEntry32.th32ProcessID = PID then
    begin
      Result := aProcessEntry32.szExeFile;
      break;
    end;
    ContinueLoop := Process32Next(aSnapShotHandle, aProcessEntry32);
  end;
  CloseHandle(aSnapShotHandle);
end;

function EnumWindowsProc(hWnd: HWND; lParam: LPARAM): Bool;
var
  Capt, Cla: array[0..255] of char;
  Datei:     string;
  ident:     dword;
begin
  GetWindowText(hWnd, Capt, 255);
  GetClassName(hwnd, Cla, 255);
  ThreadIdList.Add(IntToStr(GetWindowThreadProcessId(hwnd, nil)));
  Datei := GetFileNameFromhandle(hwnd);
  DateiList.Add(Datei);
  HandleList.Add(IntToStr(HWnd));
  if IsWindowVisible(HWnd) then
  begin
    VisibleList.Add('1')
  end
  else begin
    VisibleList.Add('0')
  end;
  ClassList.Add(Cla);
  CaptionList.Add(Capt);
  GetWindowThreadProcessId(StrToInt(HandleList[HandleList.Count - 1]), @ident);
  PIDList.Add(IntToStr(ident));
  Result := True;
end;

function KillProcessByPID(PID: DWord): boolean;
var
  myhandle: THandle;
  i: integer;
begin
  myhandle := OpenProcess(PROCESS_TERMINATE, False, PID);
  TerminateProcess(myhandle, 0);
  for i := 0 to SleepForReCheck do
  begin
    Application.ProcessMessages
  end; //Genug Zeit geben
  GetProcessList;
  Result := PIDList.IndexOf(IntToStr(PID)) = -1;
end;

function KillProcessByFileName(FileName: string; KillAll: boolean): boolean;
var
  i: integer;
  FileFound: boolean;
begin
  Result := False;
  if FileName = '' then
  begin
    exit
  end;
  FileName := UpperCase(ExtractFileName(FileName));
  Result   := True;
  GetProcessList;
  if KillAll then
  begin
    //Kill all
    FileFound := False;
    repeat
      GetProcessList;
      FileFound := False;
      for i := 0 to DateiList.Count - 1 do
      begin
        if Pos(Filename, DateiList[i]) > 0 then
        begin
          FileFound := True;
          break;
        end;
      end;
      if i < DateiList.Count then
      begin
        if not KillProcessByPID(StrToInt64(PIDList[i])) then
        begin
          Result := False;
          exit;
        end;
      end;
    until not FileFound;
  end
  else begin
    //Kill one
    for i := 0 to DateiList.Count - 1 do
    begin
      if Pos(Filename, DateiList[i]) > 0 then
      begin
        break
      end;
    end;
    if i < DateiList.Count then
    begin
      if not KillProcessByPID(StrToInt64(PIDList[i])) then
      begin
        Result := False;
        exit;
      end;
    end;
  end;
end;

initialization
  DateiList    := TStringList.Create;
  HandleList   := TStringList.Create;
  ClassList    := TStringList.Create;
  CaptionList  := TStringList.Create;
  VisibleList  := TStringList.Create;
  ThreadIdList := TStringList.Create;
  PIDList      := TStringList.Create;

finalization
  DateiList.Free;
  HandleList.Free;
  ClassList.Free;
  CaptionList.Free;
  VisibleList.Free;
  ThreadIdList.Free;
  PIDList.Free;

end.
