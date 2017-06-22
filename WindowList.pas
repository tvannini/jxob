(*
   Window List Component 1.5 by Jerry Ryle

   Aaugh! I accidentally uploaded the wrong source
   which had a nasty bug in the refresh procedure!
   Thanks to Serge, who found my mistake and suggested
   a few other improvements!

   This component will enumerate windows and return
   information about them in the Windows property.
   The component currently returns a handle, caption text,
   associated ProcessID, visibility, and dimensions.
   For documentation, please read the accompanying
   WindowList.txt

   This component is completely free of course. If you find
   it useful, and are compelled to send me cash, beer, or
   dead things in envelopes, please feel free to do so.

   email me if you make it better:  gryle@calpoly.edu
*)
unit WindowList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type

  TWindowObject = record
    WinHandle: HWnd;     {Window Handle}
    WinCaption: string;  {Window Caption Text (If any)}
    ProcessID: integer;  {Process the window belongs to}
    IsVisible: boolean;  {Is the window visible?}
    IsEnabled: boolean;
    {Is the window enabled for mouse/keyboard input?}
    IsIconic: boolean; {Is the window minimized?}
    WindowRect: TRect;   {Window Dimensions}
                    {Add more properties here if you like,
                     then fill them in at the WindowCallback
                     function.}
  end;
  PTWindowObject = ^TWindowObject;

  TWindowList = class(TComponent)
  private
    WindowLst: TList;
    FCount: integer;
  protected
    function GetAWindow(Index: integer): TWindowObject;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure Refresh;
    property Windows[Index: integer]: TWindowObject Read GetAWindow;
    property Count: integer Read FCount;
  published
    { Published declarations }
  end;

procedure Register;

implementation

{Note that this function is not a member of WindowList.
 Therefore, the list to be filled needs to be passed
 as a pointer. Note that this is passed as a VAR. if you
 don't do this, bad things happen in memory.}
function WindowCallback(WHandle: HWnd; var Parm: Pointer): boolean; stdcall;
  {This function is called once for each window}
var
  MyString: PChar;
  MyInt:    integer;
  MyWindowPtr: ^TWindowObject;
begin
  New(MyWindowPtr);

  {Window Handle (Passed by the enumeration)}
  MyWindowPtr.WinHandle := WHandle;

  {Window text}
  MyString := Allocmem(255);
  GetWindowText(WHandle, MyString, 255);
  MyWindowPtr.WinCaption := string(MyString);
  FreeMem(MyString, 255);

  {Process ID}
  MyInt := 0;
  MyWindowPtr.ProcessID := GetWindowThreadProcessId(WHandle, @MyInt);

  {Visiblity}
  MyWindowPtr.IsVisible := IsWindowVisible(WHandle);

  {Enabled}
  MyWindowPtr.IsEnabled := IsWindowEnabled(WHandle);

  {Iconic}
  MyWindowPtr.IsIconic := IsIconic(WHandle);

  {Window Dimensions}
  MyWindowPtr.WindowRect := Rect(0, 0, 0, 0);
  GetWindowRect(WHandle, MyWindowPtr.WindowRect);

    {Add the structure to the list. Do not dereference Parm...
     once again, bad things happen.}
  TList(Parm).Add(MyWindowPtr);
  Result := True; {Everything's okay. Continue to enumerate windows}
end;

constructor TWindowList.Create(AOwner: TComponent);
var
  MyWindowPtr: PTWindowObject;
begin
  inherited;
  WindowLst := TList.Create;

{Thanks Serge, I should've done this from the start :)
 Sloppy me. }
  if not (csDesigning in ComponentState) then
  begin
    EnumWindows(@WindowCallback, longint(@WindowLst));
    FCount := WindowLst.Count;
  end
  else begin
    FCount := 0
  end;
end;

destructor TWindowList.Destroy;
var
  I: integer;
begin
  if WindowLst.Count > 0 then
  begin
    for I := 0 to (WindowLst.Count - 1) do
    begin
      Dispose(PTWindowObject(WindowLst[I]))
    end;
  end;
  WindowLst.Free;
  inherited;
end;

procedure TWindowList.Refresh;
begin
  WindowLst.Clear; {Clear the list!}
  EnumWindows(@WindowCallback, longint(@WindowLst));
  FCount := WindowLst.Count;
end;

function TWindowList.GetAWindow(Index: integer): TWindowObject;
begin
  Result := PTWindowObject(WindowLst[Index])^;
end;

procedure Register;
begin
  RegisterComponents('System', [TWindowList]);
end;

end.
