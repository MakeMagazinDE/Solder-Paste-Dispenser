unit Dispenser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes,
  System.Variants, System.Classes, System.Types, Registry,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.Menus, Vcl.Buttons, Vcl.XPMan,
  _GClass, IniFiles,
  CPort, CPortCtl, System.Math;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button_Settings: TButton;
    Button_Open: TButton;
    ComPort: TComPort;
    Timer1: TTimer;
    EditStatus: TEdit;
    LabelStatus: TLabel;
    LabelXM: TLabel;
    LabelYM: TLabel;
    LabelZM: TLabel;
    LabelXW: TLabel;
    LabelYW: TLabel;
    LabelZW: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnXzero: TBitBtn;
    BitBtnYzero: TBitBtn;
    BitBtnZzero: TBitBtn;
    Bevel10: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtnHome: TBitBtn;
    BitBtnGotoZero: TBitBtn;
    EditPitchX: TEdit;
    EditPadsX: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EditPadsY: TEdit;
    Label6: TLabel;
    BitBtnCreateBGA: TBitBtn;
    BitBtnAbort: TBitBtn;
    Bevel1: TBevel;
    OpenDialog1: TOpenDialog;
    BitBtn23: TBitBtn;
    SgBlocks: TStringGrid;
    SgApert: TStringGrid;
    Label7: TLabel;
    Label8: TLabel;
    DrawingBox: TPaintBox;
    TrackBar1: TTrackBar;
    Bevel2: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtnRun: TBitBtn;
    PopupMenu1: TPopupMenu;
    SetReferenceNozzleisatthisPad1: TMenuItem;
    EnableAperture1: TMenuItem;
    DisableAperture1: TMenuItem;
    DisableallApertures1: TMenuItem;
    N1: TMenuItem;
    EditPitchY: TEdit;
    Label11: TLabel;
    EditDwellTime: TEdit;
    Label12: TLabel;
    EditPadTime: TEdit;
    Label13: TLabel;
    PopupMenu2: TPopupMenu;
    MenuItemApertCircle: TMenuItem;
    MenuItemApertRect: TMenuItem;
    MenuItemApertOff: TMenuItem;
    N2: TMenuItem;
    MenuItemApertDisableAll: TMenuItem;
    MenuItemApertEnableAll: TMenuItem;
    Label14: TLabel;
    TimerDraw: TTimer;
    MovetothispadXY: TMenuItem;
    Label19: TLabel;
    EditSavedX: TEdit;
    EditSavedY: TEdit;
    EditSavedZ: TEdit;
    BitBtnGotoPos: TBitBtn;
    BitBtnSavePos: TBitBtn;
    BitBtnAllzero: TBitBtn;
    BitBtnFeedAir: TBitBtn;
    BtnSO8: TButton;
    BtnSO16W: TButton;
    BtnBGA: TButton;
    Button1: TButton;
    Button4: TButton;
    Label20: TLabel;
    EditPadTimeRO: TEdit;
    Label21: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button_OpenClick(Sender: TObject);
    procedure Button_SettingsClick(Sender: TObject);
    procedure ComPortRxChar(Sender: TObject; Count: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ComPortAfterClose(Sender: TObject);
    procedure ComPortAfterOpen(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtnJogMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtnHomeClick(Sender: TObject);
    procedure BitBtnXzeroClick(Sender: TObject);
    procedure BitBtnYzeroClick(Sender: TObject);
    procedure BitBtnZzeroClick(Sender: TObject);
    procedure BitBtnAllZeroClick(Sender: TObject);
    procedure BitBtnCreatePatternClick(Sender: TObject);
    procedure BitBtnAbortClick(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure SgBlocksSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SgBlocksDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnRunClick(Sender: TObject);
    procedure SetZeroReferencePoint(Sender: TObject);
    procedure SgBlocksMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SgApertSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormResize(Sender: TObject);
    procedure SgBlocksCircleClick(Sender: TObject);
    procedure SgBlocksRectClick(Sender: TObject);
    procedure SgBlocksOffClick(Sender: TObject);
    procedure SgApertMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItemApertDisableAllClick(Sender: TObject);
    procedure MenuItemApertEnableAllClick(Sender: TObject);
    procedure MenuItemApertCircleClick(Sender: TObject);
    procedure MenuItemApertRectClick(Sender: TObject);
    procedure MenuItemApertOffClick(Sender: TObject);
    procedure SgApertDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure TimerDrawTimer(Sender: TObject);
    procedure MovetothispadXYClick(Sender: TObject);
    procedure BitBtnGotoZeroClick(Sender: TObject);
    procedure BitBtnSavePosClick(Sender: TObject);
    procedure BitBtnGotoPosClick(Sender: TObject);
    procedure BitBtnFeedAirMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BtnSO8Click(Sender: TObject);
    procedure BtnSO16Click(Sender: TObject);
    procedure BtnSO16WClick(Sender: TObject);
    procedure BtnBGAClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DrawingBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawingBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawingBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

type
  t_fpos = record
    X, Y, Z: Double;
  end;

  t_gerberinfo = record
    UseInches: Boolean;

    IntDigitsX: Integer;
    DecimalDigitsX: Integer;
    ScaleX: Double;

    IntDigitsY: Integer;
    DecimalDigitsY: Integer;
    ScaleY: Double;
    RefPointRow: Integer;
  end;


var
  Form1: TForm1;
  StatusIdle: Boolean;
  Mpos: t_fpos;
  Wpos: t_fpos;
  AbortFlag: Boolean;
  AppFilePath, LastFileName: String;
  GerberInfo: t_gerberinfo;
  GerberBitmap: Tbitmap;
  RefPointX, RefPointY: Double;
  RefreshGerberDrawingSema: Boolean;
  ZeroAllok, ZeroYok, ZeroXok, ZeroZok, Homed: Boolean;
  mouse_start, bm_scroll: TPoint;
  gerber_bottomleft: t_fpos;

implementation

{$R *.dfm}

// -----------------------------------------------------------------------------

function FloatToStrDot(my_val: Double):String;
var
  my_Settings: TFormatSettings;
begin
  my_Settings.Create;
  my_Settings.DecimalSeparator := '.';
  FloatToStrDot:= FormatFloat('0.00',my_val,my_Settings);
end;

function FloatToStr4Dot(my_val: Double):String;
var
  my_Settings: TFormatSettings;
begin
  my_Settings.Create;
  my_Settings.DecimalSeparator := '.';
  result:= FormatFloat('0.0000',my_val,my_Settings);
end;

function StrDotToFloat(my_str: String): Double;
var
  my_Settings: TFormatSettings;
begin
  my_Settings.Create;
  my_Settings.DecimalSeparator := '.';
  StrDotToFloat:= StrToFloatDef(my_str,0,my_Settings);
end;

// -----------------------------------------------------------------------------

procedure SendSingleCommandStr(cmd_str: String);
var ok_str: String;
  count: Integer;
begin
  with Form1 do begin
    ComPort.WriteStr(cmd_str + #13);
    repeat
      sleep(1);
      count:= ComPort.InputCount;
    until count > 3;
    ComPort.ReadStr(ok_str, count);
    ok_str  := StringReplace(ok_str, #13, ' ', [rfReplaceAll, rfIgnoreCase]);
    //if pos('error', ok_str) > 0 then
    Memo1.Lines.Add(cmd_str + ' ' + ok_str);
  end;
end;

// -----------------------------------------------------------------------------
// --------------------------- DISPENSE PASTE ----------------------------------
// -----------------------------------------------------------------------------

procedure DispenseDot(dx, dy, dwell_time: Double);
begin
  Form1.EditPadTimeRO.Text:= FloatToStrDot(dwell_time);
  SendSingleCommandStr('G0 X' + FloatToStrDot(dx) + ' Y' + FloatToStrDot(dy));
  SendSingleCommandStr('G0 Z2');
  SendSingleCommandStr('M3 S1000');
  // Dwell Time, Sekunden bei GRBL - Vorimpuls
  SendSingleCommandStr('G4 P' + FloatToStr4Dot(dwell_time));
  SendSingleCommandStr('M5');
  SendSingleCommandStr('G0 Z-0.05');
{
  SendSingleCommandStr('M3');
  // Dwell Time, Sekunden bei GRBL
  SendSingleCommandStr('G4 P' + FloatToStr4Dot(dwell_time));
  SendSingleCommandStr('M5');
}
  SendSingleCommandStr('G1 Z0.1 F200');
  SendSingleCommandStr('G0 Z2');
end;

procedure Dispense(dx, dy, rx, ry: Double);
var
  dwell_time, pad_time: Double;
begin
  pad_time:= StrDotToFloat(Form1.EditPadtime.Text) / 1000;
  dwell_time:= StrDotToFloat(Form1.EditDwelltime.Text) / 1000;
  pad_time:= (rx * ry * pad_time);  // Sekunden!
  if (rx < 2.5) and (ry < 2.5) then
    DispenseDot(dx, dy, dwell_time + pad_time)
  else begin
    pad_time:= pad_time / 2;  // 2 Dots
    if rx >= 2.5 then begin
     DispenseDot(dx - rx/4, dy, dwell_time + pad_time);
     DispenseDot(dx + rx/4, dy, dwell_time + pad_time);
    end;
    if ry >= 2.5 then begin
     DispenseDot(dx, dy - ry/4, dwell_time + pad_time);
     DispenseDot(dx, dy + ry/4, dwell_time + pad_time);
    end;
  end;
end;

// -----------------------------------------------------------------------------

function GetStatus: Boolean;
// liefert TRUE wenn IDLE
var
  aStr: String;
  count, timeout: Integer;
  sl: TStringList;
begin
  result:= false;
  with Form1 do
    if ComPort.Connected then begin
      ComPort.TransmitChar('?');
      timeout:= 0;
      repeat
        count:= ComPort.InputCount;
        sleep(1);
        inc(timeout)
      until (count > 40) or (timeout > 100);
      if timeout > 100 then
        exit;
      sleep(5);
      count:= ComPort.InputCount;
      ComPort.ReadStr(aStr, count);
      if (aStr[1] = '<') then begin
        aStr:= copy(aStr, 2, length(aStr) - 4);
        EditStatus.Text:= aStr;
        sl := Tstringlist.Create;
        sl.Delimiter :=','; //comma delimiter
        sl.DelimitedText:= aStr;
        if sl.Count > 6 then begin
          LabelStatus.Caption:= sl[0];
          if sl[0]= 'Idle'  then
            result:= true;

          aStr:= copy(sl[1], 6, 9);
          LabelXM.Caption:= aStr;
          Mpos.X:= StrDotToFloat(aStr);
          LabelYM.Caption:= sl[2];
          Mpos.Y:= StrDotToFloat(sl[2]);
          LabelZM.Caption:=  sl[3];
          Mpos.Z:= StrDotToFloat(sl[3]);

          aStr:= copy(sl[4], 6, 9);
          LabelXW.Caption:= aStr;
          Wpos.X:= StrDotToFloat(aStr);
          LabelYW.Caption:= sl[5];
          Wpos.Z:= StrDotToFloat(sl[3]);
          LabelZW.Caption:= sl[6];
          Wpos.Z:= StrDotToFloat(sl[3]);
        end;
        sl.free;
      end;
    end;
end;

// -----------------------------------------------------------------------------

procedure DrawGerber(grow_sel, apert_sel: Integer);
// grow_sel, apert_sel: Aktive Zeile des SG
const
  graph_offset = 16;
var
  aRow: Integer;
  x, y: Double;
  ix, iy, rx, ry,
  ref_x, ref_y,
  offs_y_h: Integer;
  astr: String;
  zoom: Double;
begin
  with Form1 do begin
    GerberBitmap.Height:= DrawingBox.Height;
    GerberBitmap.Width:= DrawingBox.Width;
    astr:= SgApert.Cells[0, apert_sel];
    zoom:= Trackbar1.Position;
    offs_y_h:= GerberBitmap.Height - graph_offset;
    GerberBitmap.Canvas.Pen.Color:= clgray;
    GerberBitmap.Canvas.Brush.Color:= $00003000;  // Hintergrund dunkelgrün
    GerberBitmap.Canvas.FillRect(rect(0, 0, GerberBitmap.Width, GerberBitmap.Height));
    GerberBitmap.Canvas.moveto(bm_scroll.x + graph_offset, 0);
    GerberBitmap.Canvas.lineto(bm_scroll.x + graph_offset, GerberBitmap.Height);
    GerberBitmap.Canvas.moveto(0, bm_scroll.y + offs_y_h);
    GerberBitmap.Canvas.lineto(GerberBitmap.Width, bm_scroll.y + offs_y_h);

    for aRow:= 1 to Form1.SgBlocks.RowCount - 1 do begin
      x:= StrDotToFloat(SgBlocks.Cells[1, aRow]);
      ix:= round(x * zoom) + graph_offset;
      y:= StrDotToFloat(SgBlocks.Cells[2, aRow]);
      iy:= GerberBitmap.Height - round(y * zoom) - graph_offset;

      rx:= round(StrDotToFloat(SgBlocks.Cells[4, aRow]) * zoom / 2);
      ry:= round(StrDotToFloat(SgBlocks.Cells[5, aRow]) * zoom / 2);
      if aRow = grow_sel then
        GerberBitmap.Canvas.Brush.Color:= clred
      else if SgBlocks.Cells[3, aRow] = astr then
        GerberBitmap.Canvas.Brush.Color:= $00A0A0FF    // hellrot
      else
        GerberBitmap.Canvas.Brush.Color:= clsilver;
      if SgBlocks.Cells[6, arow] = 'OFF' then
        GerberBitmap.Canvas.Brush.Color:= $00304030;
      if SgBlocks.Cells[6, arow] = 'Circle' then
        GerberBitmap.Canvas.Ellipse(bm_scroll.x + ix - rx, bm_scroll.y + iy - ry, bm_scroll.x + ix + rx, bm_scroll.y + iy + ry)
      else
        GerberBitmap.Canvas.FillRect(rect(bm_scroll.x + ix - rx, bm_scroll.y + iy - ry, bm_scroll.x + ix + rx, bm_scroll.y + iy + ry));
    end;
    // Ref Point Zero anzeigen
    ref_x:= bm_scroll.x + round(RefPointX * zoom) + graph_offset;
    ref_y:= bm_scroll.y + GerberBitmap.Height - round(RefPointY * zoom) - graph_offset;
    GerberBitmap.Canvas.Pen.Color:= clyellow;
    GerberBitmap.Canvas.Brush.Color:= $0000A0FF;
    GerberBitmap.Canvas.moveto(ref_x - 15, ref_y);
    GerberBitmap.Canvas.lineto(ref_x + 15, ref_y);
    GerberBitmap.Canvas.moveto(ref_x, ref_y - 15);
    GerberBitmap.Canvas.lineto(ref_x, ref_y + 15);
    GerberBitmap.Canvas.Ellipse(ref_x - 5, ref_y - 5, ref_x + 5, ref_y + 5);
    GerberBitmap.Canvas.Brush.Color:= $00003000;
    GerberBitmap.Canvas.Font.Color:= clyellow;
    GerberBitmap.Canvas.TextOut(ref_x + 6, ref_y - 16, 'Zero Ref');
    Form1.DrawingBox.Canvas.Draw(0, 0, GerberBitmap);
  end;
end;

procedure SearchGerber(aStr: String);  // sucht in Blocks-SG nach Aperture
var
  gRow: Integer;
begin
  with Form1 do begin
    for gRow:= 1 to SgBlocks.RowCount - 1 do
      if SgBlocks.Cells[3, gRow] = aStr then
        break;
    if gRow < SgBlocks.RowCount then
      SgBlocks.Row:= gRow
    else
      SgBlocks.Row:= 1;
  end;
end;

procedure SearchApert(aStr: String);  // sucht in Apertures-SG nach Aperture
var
  aRow: Integer;
begin
  with Form1 do begin
    for aRow:= 1 to SgApert.RowCount - 1 do
      if SgApert.Cells[0, aRow] = aStr then
        break;
    if aRow < SgApert.RowCount then
      SgApert.Row:= aRow
    else
      SgApert.Row:= 1;
  end;
end;

// -----------------------------------------------------------------------------

procedure GerberFileload(filename: String);
// Liest File in FileBuffer und liefert Länge zurück
var
  my_ReadFile: TextFile;
  n, apert, slen, spos, xpos, ypos, tpos,
  dpos, cpos, grow, arow: Integer;
  my_line, my_str: String;
  dx, dy, cscale: Double;
begin
  if not FileExists(filename) then
     exit;
  Form1.Timer1.Enabled:= false;
  Form1.TimerDraw.Enabled:= false;
  GerberInfo.UseInches:= false;
  GerberInfo.IntDigitsX:= 3;
  GerberInfo.IntDigitsY:= 3;
  GerberInfo.DecimalDigitsX:= 5;
  GerberInfo.DecimalDigitsY:= 5;
  FileMode := fmOpenRead;
  AssignFile(my_ReadFile, filename);
  Reset(my_ReadFile);
  cscale:= 1;
  grow:= 0;
  arow:= 0;
  dx:= 0;
  dy:= 0;
  apert:= 10;
  gerber_bottomleft.X:= 999;
  gerber_bottomleft.Y:= 999;
  while not Eof(my_ReadFile) do begin
    Readln(my_ReadFile, my_line);
    if pos('D03', my_line) > 0 then  // Flash commands zählen
      inc(grow);
  end;
  Form1.SgBlocks.RowCount:= grow + 1;
  grow:= 0;

  Reset(my_ReadFile);
  while not Eof(my_ReadFile) do begin
    Application.ProcessMessages;
    Readln(my_ReadFile, my_line);
    slen:= length(my_line);
    if slen > 1 then begin
      if my_line[1] = '%' then begin  // eg. %FSLAX35Y35*%
        if pos('%FSLA', my_line) > 0 then begin
          spos:= pos('X', my_line);
          if spos > 0 then begin
            GerberInfo.IntDigitsX:= Byte(my_line[spos + 1]) - 48;
            GerberInfo.DecimalDigitsX:= Byte(my_line[spos + 2]) - 48;
            GerberInfo.ScaleX:= Power(10, -GerberInfo.DecimalDigitsX);
          end;
          spos:= pos('Y', my_line);
          if spos > 0 then begin
            GerberInfo.IntDigitsY:= Byte(my_line[spos + 1]) - 48;
            GerberInfo.DecimalDigitsY:= Byte(my_line[spos + 2]) - 48;
            GerberInfo.ScaleY:= Power(10, -GerberInfo.DecimalDigitsY);
          end;
        end;
        // Unit used
        if pos('%MOIN', my_line) > 0 then begin
          GerberInfo.UseInches:= true;
          cscale:= 25.4;
        end;
        if pos('%MOMM', my_line) > 0 then begin
          GerberInfo.UseInches:= false;
          cscale:= 1;
        end;
        // Apertures
        if pos('%ADD', my_line) > 0 then with Form1 do begin
          cpos:= pos(',', my_line) - 1;
          xpos:= pos('X', my_line);
          tpos:= pos('T', my_line);
          if tpos > 0 then
            my_str:= copy(my_line, 5, tpos - 5)
          else
            my_str:= copy(my_line, 5, cpos - 5);
          inc(arow);
          SgApert.RowCount:= arow + 1;
          SgApert.Cells[0, arow]:= 'D' + my_str;
          if tpos > 0 then begin
            SgApert.Cells[3, arow]:= 'Tool';
            dx:= 0.5;
            SgApert.Cells[1, arow]:= FloatToStrDot(dx);
            dy:= 0.5;
            SgApert.Cells[2, arow]:= FloatToStrDot(dy);
          end else if my_line[cpos] = 'C' then begin  // Circle
            SgApert.Cells[3, arow]:= 'Circle';
            my_str:= copy(my_line, cpos + 2, slen - cpos  - 3);
            dx:= StrDotToFloat(my_str) * cscale;
            SgApert.Cells[1, arow]:= FloatToStrDot(dx);
            SgApert.Cells[2, arow]:= SgApert.Cells[1, arow];
          end else if xpos > 0 then begin
            SgApert.Cells[3, arow]:= 'Rect';
            my_str:= copy(my_line, cpos + 2, xpos - cpos  - 2);
            dx:= StrDotToFloat(my_str) * cscale;
            SgApert.Cells[1, arow]:= FloatToStrDot(dx);
            my_str:= copy(my_line, xpos + 1, slen - xpos  - 2);
            dy:= StrDotToFloat(my_str) * cscale;
            SgApert.Cells[2, arow]:= FloatToStrDot(dy);
          end;
        end;
      end;
      if my_line[1] = 'D' then begin
        my_str:= copy(my_line, 2, slen - 2);
        n:= StrToIntDef(my_str, 10);
        if n >= 10 then
          apert:= n;
      end;

      dpos:= pos('D03', my_line);  // Flash command, eg. X39400Y128744D03*
      if dpos > 0 then with Form1 do begin
        inc(grow);
        SgBlocks.Cells[0, grow]:= IntToStr(grow);
        xpos:= pos('X', my_line);
        ypos:= pos('Y', my_line);
        if ypos > 0 then begin
          my_str:= copy(my_line, ypos + 1, dpos - ypos - 1); // Y-Wert
          dy:= StrDotToFloat(my_str) * GerberInfo.ScaleY * cscale;
          if xpos > 0 then begin
            my_str:= copy(my_line, xpos + 1, ypos - xpos - 1); // X-Wert
            dx:= StrToFloat(my_str) * GerberInfo.ScaleX * cscale;
          end;
          SgBlocks.Cells[1, grow]:= FloatToStrDot(dx);
          SgBlocks.Cells[2, grow]:= FloatToStrDot(dy);
          SgBlocks.Cells[3, grow]:= 'D' + IntToStr(apert);
        end else begin
          my_str:= copy(my_line, xpos + 1, dpos - xpos - 1); // X-Wert
          dx:= StrToFloat(my_str) * GerberInfo.ScaleX * cscale;
          SgBlocks.Cells[1, grow]:= FloatToStrDot(dx);
          SgBlocks.Cells[2, grow]:= FloatToStrDot(dy);
          SgBlocks.Cells[3, grow]:= 'D' + IntToStr(apert);
        end;
        if (dx <= gerber_bottomleft.X) and (dy <= gerber_bottomleft.Y) then begin
          gerber_bottomleft.X:= dx;
          gerber_bottomleft.Y:= dy;
          GerberInfo.RefPointRow:= gRow;
        end;
      end;
    end;
    if AbortFlag then
      break;
  end;
  CloseFile(my_ReadFile);
  // Aperture-Werte in Haupt-Tabelle übertragen
  with Form1 do begin
    for grow:= 1 to SgBlocks.RowCount - 1 do begin
      // Offset unten links abziehen
      dx:= StrDotToFloat(SgBlocks.Cells[1, grow]) - gerber_bottomleft.X;
      dy:= StrDotToFloat(SgBlocks.Cells[2, grow]) - gerber_bottomleft.Y;
      SgBlocks.Cells[1, grow]:= FloatToStrDot(dx);
      SgBlocks.Cells[2, grow]:= FloatToStrDot(dy);
      for arow := 1 to SgApert.RowCount - 1 do
        if SgBlocks.Cells[3, grow] = SgApert.Cells[0, arow] then begin
          SgBlocks.Cells[4, grow]:= SgApert.Cells[1, arow];
          SgBlocks.Cells[5, grow]:= SgApert.Cells[2, arow];
          SgBlocks.Cells[6, grow]:= SgApert.Cells[3, arow];
          break;
        end;
    end;
    Timer1.Enabled:= true;
    TimerDraw.Enabled:= true;
    Trackbar1.Position:= 5;
    SgBlocks.Row:= GerberInfo.RefPointRow;
  end;
  RefreshGerberDrawingSema:= true;
end;

// #############################################################################

procedure TForm1.BitBtnSavePosClick(Sender: TObject);
begin
  EditSavedX.Text:= FloatToStrDot(Mpos.X);
  EditSavedY.Text:= FloatToStrDot(Mpos.Y);
  EditSavedZ.Text:= FloatToStrDot(Mpos.Z);
end;

procedure TForm1.BitBtnGotoPosClick(Sender: TObject);
begin
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G53 G0 X' +  EditSavedX.Text + 'Y' + EditSavedY.Text);
  SendSingleCommandStr('G53 G0 Z' + EditSavedZ.Text);
end;


procedure TForm1.BitBtnAllZeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 X0Y0Z0');
  RefPointX:= 0;
  RefPointY:= 0;
  RefreshGerberDrawingSema:= true;
  ZeroXok:= true;
  ZeroYok:= true;
  ZeroZok:= true;
  ZeroAllok:= true;
end;

procedure TForm1.BitBtnXzeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 X0');
  RefPointX:= 0;
  ZeroXok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.BitBtnYzeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 Y0');
  RefPointY:= 0;
  ZeroYok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.BitBtnZzeroClick(Sender: TObject);
begin
  repeat
  until GetStatus;  // warte auf IDLE
  SendSingleCommandStr('G92 Z0');
  ZeroZok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.BtnBGAClick(Sender: TObject);
begin
  EditPitchX.Text:= '1.0';
  EditPitchY.Text:= '1.0';
  EditPadsX.Text:= '15';
  EditPadsY.Text:= '15';
  BitBtnCreatePatternClick(Sender);
end;

procedure TForm1.BtnSO16Click(Sender: TObject);
begin
  EditPitchX.Text:= '1.27';
  EditPitchY.Text:= '5.5';
  EditPadsX.Text:= '8';
  EditPadsY.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure TForm1.BtnSO16WClick(Sender: TObject);
begin
  EditPitchX.Text:= '1.27';
  EditPitchY.Text:= '9.5';
  EditPadsX.Text:= '8';
  EditPadsY.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure TForm1.BtnSO8Click(Sender: TObject);
begin
  EditPitchX.Text:= '1.27';
  EditPitchY.Text:= '5.5';
  EditPadsX.Text:= '4';
  EditPadsY.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  EditPitchY.Text:= '1.27';
  EditPitchX.Text:= '9.5';
  EditPadsY.Text:= '8';
  EditPadsX.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  EditPitchY.Text:= '1.27';
  EditPitchX.Text:= '5.5';
  EditPadsY.Text:= '4';
  EditPadsX.Text:= '2';
  BitBtnCreatePatternClick(Sender);
end;


procedure TForm1.BitBtn23Click(Sender: TObject);
begin
  OpenDialog1.DefaultExt:='*.GTP';
  OpenDialog1.InitialDir:= AppFilePath;
  OpenDialog1.Title:= 'Open Gerber Paste File (GTP):';
  if OpenDialog1.Execute then begin
    LastFileName:= OpenDialog1.FileName;
    GerberFileload(OpenDialog1.FileName);
    bm_scroll.X:= 0;
    bm_scroll.Y:= 0;
  end else
    LastFileName:='';
  ZeroXok:= false;
  ZeroYok:= false;
  ZeroZok:= false;
  ZeroAllok:= false;
end;

procedure TForm1.BitBtnAbortClick(Sender: TObject);
begin
  AbortFlag:= true;
end;

procedure TForm1.BitBtnHomeClick(Sender: TObject);
begin
  if ComPort.Connected then begin
    repeat
    until GetStatus;  // warte auf IDLE
    SendSingleCommandStr('$x');
    SendSingleCommandStr('$h');
    Homed:= true;
  end;
end;

procedure TForm1.BitBtnJogMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var dx, dy, dz: Double;
  first_loop_done: boolean;
begin
  if not ComPort.Connected then
    exit;
  Timer1.Enabled:= false;
  repeat
  until GetStatus;  // warte auf IDLE
  dx := 0;
  dy := 0;
  dz := 0;
  case (Sender as TBitBtn).tag of   // Welcher Jog-Button?
    0: dx:= 0.1;
    1: dx:= 1;
    2: dx:= 10;
    3: dx:= -0.1;
    4: dx:= -1;
    5: dx:= -10;
    10: dy:= 0.1;
    11: dy:= 1;
    12: dy:= 10;
    13: dy:= -0.1;
    14: dy:= -1;
    15: dy:= -10;
    20: dz:= 0.1;
    21: dz:= 1;
    22: dz:= 10;
    23: dz:= -0.1;
    24: dz:= -1;
    25: dz:= -10;
  end;
  first_loop_done:= false;
  while GetAsyncKeyState(VK_LBUTTON) <> 0 do begin
    if (dx <> 0) and (Mpos.x + dx >= -150) and (Mpos.x + dx <= 0) then begin
      SendSingleCommandStr('G91 G0 X' + FloatToStrDot(dx));
      Mpos.X:= Mpos.x + dx;
    end;
    if (dy <> 0) and (Mpos.y + dy >= -100) and (Mpos.y + dy <= 0) then begin
      // relative Move
      SendSingleCommandStr('G91 G0 Y' + FloatToStrDot(dy));
      Mpos.Y:= Mpos.Y + dy;
    end;
    if (dz <> 0) and (Mpos.z + dz >= -35) and (Mpos.z + dz <= -1) then begin
      // relative Move
      SendSingleCommandStr('G91 G0 Z' + FloatToStrDot(dz));
      Mpos.Z:= Mpos.Z + dz;
    end;
    if not first_loop_done then
      sleep(300)
    else
      sleep(75);
    if GetAsyncKeyState(VK_LBUTTON) = 0 then
      break;
    SendSingleCommandStr('G4 P0');   // Dwell Time
    first_loop_done:= true;
  end; // stop when mouse released
  SendSingleCommandStr('G90');   // absolute Move
  Timer1.Enabled:= true;
end;


procedure TForm1.BitBtnFeedAirMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SendSingleCommandStr('M3 S1000');   // on
  while GetAsyncKeyState(VK_LBUTTON) <> 0 do begin
  end;
  SendSingleCommandStr('M5');   // on
  repeat
  until GetStatus;  // warte auf IDLE
end;

procedure TForm1.BitBtnRunClick(Sender: TObject);
var gRow: Integer;
  dx, dy, rx, ry: Double;
begin
  Memo1.Lines.Clear;
  AbortFlag:= false;

  for gRow:= 1 to SgBlocks.RowCount - 1 do begin
    if AbortFlag then
      break;
    if SgBlocks.Cells[6, gRow] = 'OFF' then
      continue;
    SgBlocks.Row:= gRow;
    SearchApert(SgBlocks.Cells[3, gRow]);
    RefreshGerberDrawingSema:= true;
    Application.ProcessMessages;  // damit Abbruch möglich ist
    dx:= StrDotToFloat(SgBlocks.Cells[1, gRow]);
    dy:= StrDotToFloat(SgBlocks.Cells[2, gRow]);
    rx:= StrDotToFloat(SgBlocks.Cells[4, gRow]);
    ry:= StrDotToFloat(SgBlocks.Cells[5, gRow]);
    Dispense(dx, dy, rx, ry);
  end;
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G0 X0 Y0');
end;

procedure TForm1.BitBtnGotoZeroClick(Sender: TObject);
begin
  SendSingleCommandStr('G53 G0 Z-1');
  SendSingleCommandStr('G0 X0 Y0');
  SendSingleCommandStr('G0 Z0');
end;


procedure TForm1.BitBtnCreatePatternClick(Sender: TObject);
var padsX, padsY, countX, countY, grow: Integer;
  dx, dy: Double;
  pitchX, pitchY, dia: Double;
begin
  Form1.TimerDraw.Enabled:= false;
  padsX:= StrToInt(EditPadsX.Text);
  padsY:= StrToInt(EditPadsY.Text);
  pitchX:= StrDotToFloat(EditPitchX.Text);
  pitchY:= StrDotToFloat(EditPitchY.Text);
  grow:= 0;
  dia:= min(pitchX, pitchY) * 0.6;
  for countY := 0 to padsY - 1 do begin
    dy:= pitchY * countY;
    for countX := 0 to padsX - 1 do begin
      Application.ProcessMessages;
      inc(grow);
      SgBlocks.RowCount:= grow + 1;
      dx:= pitchX * countX;
      SgBlocks.Cells[0, grow]:= IntToSTr(grow);
      SgBlocks.Cells[1, grow]:= FloatToSTrDot(dx);
      SgBlocks.Cells[2, grow]:= FloatToSTrDot(dy);
      SgBlocks.Cells[3, grow]:= 'D10';
      SgBlocks.Cells[4, grow]:= FloatToSTrDot(dia);
      SgBlocks.Cells[5, grow]:= FloatToSTrDot(dia);
      SgBlocks.Cells[6, grow]:= 'Circle';
    end;
  end;
  SgApert.RowCount:= 2;
  SgApert.Cells[0, 1]:= 'D10';
  SgApert.Cells[1, 1]:= FloatToSTrDot(dia);
  SgApert.Cells[2, 1]:= FloatToSTrDot(dia);
  SgApert.Cells[3, 1]:= 'Circle';
  SgBlocks.Row:= 1;
  Trackbar1.Position:= 12;
  RefPointX:= 0;
  RefPointY:= 0;
  Form1.TimerDraw.Enabled:= true;
  bm_scroll.X:= 0;
  bm_scroll.Y:= 0;
  gerber_bottomleft.X:= 0;
  gerber_bottomleft.Y:= 0;
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.Button_OpenClick(Sender: TObject);
begin
  Homed:= false;
  if ComPort.Connected then begin
    ComPort.Close;
    LabelStatus.Caption:= 'Offline';
  end else begin
    Memo1.Lines.Clear;
    ComPort.Open;
    ComPort.WriteStr('$x'+#13);
    sleep(300);
    Application.ProcessMessages;
    SendSingleCommandStr('$h');
    Homed:= true;
  end;
end;

procedure TForm1.Button_SettingsClick(Sender: TObject);
begin
  ComPort.ShowSetupDialog;
  ComPort.StoreSettings(stIniFile, AppFilePath + '\dispenser.ini');
end;

procedure TForm1.ComPortRxChar(Sender: TObject; Count: Integer);
var
  myStr: String;
begin
  ComPort.ReadStr(myStr, Count);
  Memo1.Lines.Add(myStr);
end;

procedure TForm1.DrawingBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssLeft in Shift) then begin
    mouse_start.x:= X;
    mouse_start.y:= Y;
    // search_entry_in_drawing(x,y);
  end;
end;

procedure TForm1.DrawingBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (ssLeft in Shift) then begin
    bm_scroll.x:= bm_scroll.x + X - mouse_start.x;
    bm_scroll.y:= bm_scroll.y + Y - mouse_start.y;
    mouse_start.x:= X;
    mouse_start.y:= Y;
    Application.ProcessMessages;
    RefreshGerberDrawingSema:= true;
  end;

end;

procedure TForm1.DrawingBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TrackBar1.SetFocus;
end;

procedure TForm1.SgBlocksOffClick(Sender: TObject);
begin
  SgBlocks.Cells[6, SgBlocks.Row]:= 'OFF';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.SgBlocksRectClick(Sender: TObject);
begin
  SgBlocks.Cells[6, SgBlocks.Row]:= 'Rect';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.SgBlocksCircleClick(Sender: TObject);
begin
  SgBlocks.Cells[6, SgBlocks.Row]:= 'Circle';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.ComPortAfterClose(Sender: TObject);
begin
  if Button_Open <> nil then
    Button_Open.Caption := 'Open';
end;

procedure TForm1.ComPortAfterOpen(Sender: TObject);
begin
  Button_Open.Caption := 'Close';
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Ini: TIniFile;
begin
  ComPort.Close;
  Ini := TIniFile.Create(AppFilePath + '\dispenser.ini');
  try
    Ini.WriteInteger('Form', 'Top', Top);
    Ini.WriteInteger('Form', 'Left', Left);
    Ini.WriteInteger('Form', 'Height', Height);
    Ini.WriteInteger('Form', 'Width', Width);
    Ini.WriteString('Positions', 'SavedX', EditSavedX.Text);
    Ini.WriteString('Positions', 'SavedY', EditSavedY.Text);
    Ini.WriteString('Positions', 'SavedZ', EditSavedZ.Text);
    Ini.WriteString('Params', 'PadTime', EditPadTime.Text);
    Ini.WriteString('Params', 'DwellTime', EditDwellTime.Text);
    Ini.WriteInteger('Params', 'Zoom', Trackbar1.Position);
  finally
    Ini.Free;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
 var
   Ini: TIniFile;
begin
  AppFilePath:= ExtractFilePath(Application.ExeName);
  ComPort.LoadSettings(stIniFile, AppFilePath + '\dispenser.ini');
  SgBlocks.Cells[0, 0]:= '#';
  SgBlocks.Cells[1, 0]:= 'Pos X';
  SgBlocks.Cells[2, 0]:= 'Pos Y';
  SgBlocks.Cells[3, 0]:= 'Aperture';
  SgBlocks.Cells[4, 0]:= 'Size X';
  SgBlocks.Cells[5, 0]:= 'Size Y';
  SgBlocks.Cells[6, 0]:= 'Type';
  SgApert.Cells[0, 0]:= '#';
  SgApert.Cells[1, 0]:= 'DX';
  SgApert.Cells[2, 0]:= 'DY';
  SgApert.Cells[3, 0]:= 'Type';
  SgApert.Cells[4, 0]:= 'Ena';
  SgBlocks.Row:= 1;
  SgApert.Row:= 1;
  GerberBitmap:= TBitmap.create;
  LastFileName:='';
  ZeroXok:= false;
  ZeroYok:= false;
  ZeroZok:= false;
  ZeroAllok:= false;
  Homed:= false;
  bm_scroll.X:= 0;
  bm_scroll.Y:= 0;
  Ini := TIniFile.Create(AppFilePath + '\dispenser.ini');
  try
    Top:= Ini.ReadInteger('Form', 'Top', 100);
    Left:= Ini.ReadInteger('Form', 'Left', 100);
    Height:= Ini.ReadInteger('Form', 'Height', 709);
    Width:= Ini.ReadInteger('Form', 'Width', 900);
    EditSavedX.Text:= Ini.ReadString('Positions', 'SavedX', '0.0');
    EditSavedY.Text:= Ini.ReadString('Positions', 'SavedY', '0.0');
    EditSavedZ.Text:= Ini.ReadString('Positions', 'SavedZ', '0.0');
    EditPadTime.Text:= Ini.ReadString('Params', 'PadTime', '50');
    EditDwellTime.Text:= Ini.ReadString('Params', 'DwellTime', '200');
    Trackbar1.Position:= Ini.ReadInteger('Params', 'Zoom', 7);
  finally
    Ini.Free;
  end;
  BitBtnCreatePatternClick(nil);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.MenuItemApertCircleClick(Sender: TObject);
var gRow: Integer;
begin
  SgApert.Cells[3, SgApert.Row]:= 'Circle';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
    if SgBlocks.Cells[3, gRow] = SgApert.Cells[0, SgApert.Row] then
      SgBlocks.Cells[6, gRow]:= 'Circle';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.MenuItemApertRectClick(Sender: TObject);
var gRow: Integer;
begin
  SgApert.Cells[3, SgApert.Row]:= 'Rect';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
    if SgBlocks.Cells[3, gRow] = SgApert.Cells[0, SgApert.Row] then
      SgBlocks.Cells[6, gRow]:= 'Rect';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.MovetothispadXYClick(Sender: TObject);
var gRow: Integer;
begin
  SendSingleCommandStr('G53 G0 Z-1');
  gRow:= SgBlocks.Row;
  SendSingleCommandStr('G0 X' + SgBlocks.Cells[1, gRow] + ' Y' + SgBlocks.Cells[2, gRow]);
  SendSingleCommandStr('G0 Z0.1');
end;

procedure TForm1.MenuItemApertOffClick(Sender: TObject);
var gRow: Integer;
begin
  SgApert.Cells[3, SgApert.Row]:= 'OFF';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
    if SgBlocks.Cells[3, gRow] = SgApert.Cells[0, SgApert.Row] then
      SgBlocks.Cells[6, gRow]:= 'OFF';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.MenuItemApertDisableAllClick(Sender: TObject);
var arow, gRow: Integer;
begin
  for arow:= 1 to SgApert.RowCount - 1 do
    SgApert.Cells[3, aRow]:= 'OFF';
  for gRow:= 1 to SgBlocks.RowCount - 1 do
      SgBlocks.Cells[6, gRow]:= 'OFF';
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.MenuItemApertEnableAllClick(Sender: TObject);
begin
  if LastFileName <> '' then
    GerberFileload(LastFileName)
  else
    MenuItemApertCircleClick(sender);
end;


procedure TForm1.SetZeroReferencePoint(Sender: TObject);
begin
  SendSingleCommandStr('G92 X' + SgBlocks.Cells[1, SgBlocks.Row]
                       + 'Y' + SgBlocks.Cells[2, SgBlocks.Row] + 'Z0');
  RefPointX:= StrDotToFloat(SgBlocks.Cells[1, SgBlocks.Row]);
  RefPointY:= StrDotToFloat(SgBlocks.Cells[2, SgBlocks.Row]);
  ZeroXok:= true;
  ZeroYok:= true;
  ZeroZok:= true;
  ZeroAllok:= true;
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.SgApertDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  SgApert.Font.Style := [];
  with SgApert, Canvas do begin
     if (ACol = 0) or (ARow < 1) then begin
      Font.Style := [fsBold];
      // Rect.Left:= Rect.Left - 2;
      TextRect(Rect, Rect.Left + 4, Rect.Top + 2, Cells[ACol, ARow]);
    end;
  end;
end;


procedure TForm1.SgApertMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  arow, my_col: integer;
  pt: TPoint;
begin
  SgApert.MouseToCell(X, Y, my_col, aRow);
  SgApert.Row:= arow;
  // Context-Menu
  if (ssRight in Shift) and (arow > 0) then begin
    SgApert.Row:= arow;
    pt.x := X + 15;
    pt.y := Y - 10;
    pt := SgApert.ClientToScreen(pt);
    PopUpMenu2.Popup(pt.X, pt.Y)
  end;
  if (ssLeft in Shift) and (aRow > 0) then begin
    SearchGerber(SgApert.Cells[0, aRow]);
    RefreshGerberDrawingSema:= true;
  end;
end;

procedure TForm1.SgApertSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  RefreshGerberDrawingSema:= true;
end;

procedure TForm1.SgBlocksDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  SgBlocks.Font.Style := [];
  with SgBlocks, Canvas do begin
     if (ACol = 0) or (ARow < 1) then begin
      Font.Style := [fsBold];
      // Rect.Left:= Rect.Left - 2;
      TextRect(Rect, Rect.Left + 4, Rect.Top + 2, Cells[ACol, ARow]);
    end;
  end;
end;

procedure TForm1.SgBlocksMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  gRow, my_col: integer;
  pt: TPoint;
begin
  SgBlocks.MouseToCell( X,Y, my_col, gRow );
  // Context-Menu
  if (ssRight in Shift) and (gRow > 0) then begin
    SgBlocks.Row:= grow;
    pt.x := X + 15;
    pt.y := Y - 10;
    pt := SgBlocks.ClientToScreen(pt);
    PopUpMenu1.Popup(pt.X, pt.Y)
  end;
  if (ssLeft in Shift) and (gRow > 0) then begin
    SearchApert(SgBlocks.Cells[3, gRow]);
    RefreshGerberDrawingSema:= true;
  end;
end;

procedure TForm1.SgBlocksSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow = 0 then
    CanSelect:= false
  else
    RefreshGerberDrawingSema:= true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  GetStatus;
end;


procedure TForm1.TimerDrawTimer(Sender: TObject);
begin
  DrawGerber(SgBlocks.Row, SgApert.Row);
  RefreshGerberDrawingSema:= false;
  ZeroAllok:= ZeroXok and ZeroYok and ZeroZok;
  if BitBtnRun.Enabled <> ZeroAllok then begin
    BitBtnRun.Enabled:= ZeroAllok;
    MovetothispadXY.Enabled:= ZeroAllok;
    BitBtnAbort.Enabled:= ZeroAllok;
    BitBtnGotoZero.Enabled:= ZeroAllok;
  end;
  if BitBtnAllzero.Enabled <> Homed then begin
    BitBtnAllzero.Enabled:= Homed;
    BitBtnXzero.Enabled:= Homed;
    BitBtnYzero.Enabled:= Homed;
    BitBtnZzero.Enabled:= Homed;
    SetReferenceNozzleisatthisPad1.Enabled:= Homed;
    BitBtnHome.Enabled:= Homed;
    BitBtnFeedAir.Enabled:= ComPort.Connected;
    BitBtnGotoPos.Enabled:= Homed;
  end;

end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  RefreshGerberDrawingSema:= true;
end;

end.
