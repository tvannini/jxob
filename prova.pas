unit prova;

interface

uses Winprocs, Messages, Graphics, Controls, Classes;

type
  TAnalysisControl = class(TCustomControl)
  public
    constructor Create(AOwner: TComponent); override;
    procedure MouseDown(Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
      override;
    procedure MouseMove(Shift: TShiftState;
      X, Y: integer); override;
    procedure Paint; override;
  end;

implementation

const
  sizeBorder      = 2;
  sc_SizeLeft     = $F001;  { these are the variations }
  sc_SizeRight    = $F002;  { on the SC_SIZE value }
  sc_SizeTop      = $F003;
  sc_SizeTopLeft  = $F004;
  sc_SizeTopRight = $F005;
  sc_SizeBottom   = $F006;
  sc_SizeBottomRight = $F008;
  sc_SizeBottomLeft = $F007;
  sc_DragMove     = $F012;


constructor TAnalysisControl.Create(AOwner: TComponent);
begin
  inherited;
  Width  := 100;
  Height := 100;

end;

procedure TAnalysisControl.MouseDown(Button: TMouseButton;
  Shift: TShiftState;
  X, Y: integer);
begin
  if Button = mbLeft then
  begin
    WinProcs.ReleaseCapture;
    if (X >= Width - sizeBorder) and not ((Y <= sizeBorder) or
      (Y >= Height - sizeBorder)) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeRight, 0)
    end
    else if not ((X <= sizeBorder) or (X >= Width - sizeBorder)) and
      (Y <= sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeTop, 0)
    end
    else if (X <= sizeBorder) and (Y <= sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeTopLeft, 0)
    end
    else if (X >= Width - sizeBorder) and (Y <= sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeTopRight, 0)
    end
    else if not ((X <= sizeBorder) or (X >= Width - sizeBorder)) and
      (Y >= Height - sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeBottom, 0)
    end
    else if (Y >= Height - sizeBorder) and (X <= sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeBottomLeft, 0)
    end
    else if (Y >= Height - sizeBorder) and (X >= Width - sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeBottomRight, 0)
    end
    else if not ((Y <= sizeBorder) or (Y >= Height - sizeBorder)) and
      (X <= sizeBorder) then
    begin
      Self.Perform(WM_SysCommand, sc_SizeLeft, 0)
    end
    else begin
      Self.Perform(WM_SysCommand, SC_DragMove, 0);
    end;
  end;
end;

procedure TAnalysisControl.Paint;
begin
  with Canvas do
  begin
    Brush.Color := clRed;
    Brush.Style := bsSolid;
    FillRect(GetClientRect);
  end;
end;

procedure TAnalysisControl.MouseMove(Shift: TShiftState;
  X, Y: integer);

begin
  if (X <= sizeBorder) or (X >= Width - sizeBorder) then
  begin
    if (Y >= Height - sizeBorder) then
    begin
      if (X >= Width - sizeBorder) then
      begin
        Cursor := crSizeNWSE
      end
      else begin
        Cursor := crSizeNESW
      end;
    end
    else if (Y <= sizeBorder) then
    begin
      if (X >= Width - sizeBorder) then
      begin
        Cursor := crSizeNESW
      end
      else begin
        Cursor := crSizeNWSE
      end;
    end
    else begin
      Cursor := crSizeWE
    end;
  end
  else if (Y <= sizeBorder) or (Y >= Height - sizeBorder) then
  begin
    Cursor := crSizeNS;
  end
  else begin
    Cursor := crDefault
  end;
end;


end.
