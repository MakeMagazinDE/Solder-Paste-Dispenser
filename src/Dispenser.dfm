object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'PasteDispenser 0.92 by cm 8/22'
  ClientHeight = 639
  ClientWidth = 884
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 900
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    884
    639)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 8
    Top = 359
    Width = 501
    Height = 272
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    Style = bsRaised
    ExplicitWidth = 497
    ExplicitHeight = 346
  end
  object Bevel1: TBevel
    Left = 289
    Top = 150
    Width = 220
    Height = 163
    Shape = bsFrame
  end
  object LabelStatus: TLabel
    Left = 44
    Top = 36
    Width = 40
    Height = 14
    Caption = 'Offline'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelXM: TLabel
    Left = 8
    Top = 74
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelYM: TLabel
    Left = 8
    Top = 99
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelZM: TLabel
    Left = 8
    Top = 124
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelXW: TLabel
    Left = 76
    Top = 74
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelYW: TLabel
    Left = 76
    Top = 99
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelZW: TLabel
    Left = 76
    Top = 124
    Width = 20
    Height = 14
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 37
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label2: TLabel
    Left = 8
    Top = 55
    Width = 39
    Height = 13
    Caption = 'Machine'
  end
  object Label3: TLabel
    Left = 76
    Top = 55
    Width = 25
    Height = 13
    Caption = 'Work'
  end
  object Bevel10: TBevel
    Left = 8
    Top = 151
    Width = 275
    Height = 202
    Shape = bsFrame
  end
  object Label17: TLabel
    Left = 18
    Top = 216
    Width = 43
    Height = 16
    Caption = 'X Axis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 130
    Top = 160
    Width = 44
    Height = 16
    Caption = 'Y Axis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 152
    Top = 195
    Width = 70
    Height = 24
    Caption = 'Jogpad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 33023
    Font.Height = 24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 199
    Top = 160
    Width = 43
    Height = 16
    Caption = 'Z Axis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = 16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 457
    Top = 161
    Width = 32
    Height = 13
    Caption = 'Pitch X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 353
    Top = 162
    Width = 32
    Height = 13
    Caption = 'Pads X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 353
    Top = 189
    Width = 32
    Height = 13
    Caption = 'Pads Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 515
    Top = 340
    Width = 112
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'Gerber Pad Positions'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 681
    Top = 10
    Width = 95
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'Gerber Apertures'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DrawingBox: TPaintBox
    Left = 13
    Top = 364
    Width = 492
    Height = 263
    Cursor = crCross
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16384
    DragCursor = crCross
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    OnMouseDown = DrawingBoxMouseDown
    OnMouseMove = DrawingBoxMouseMove
    OnMouseUp = DrawingBoxMouseUp
    ExplicitHeight = 294
  end
  object Label9: TLabel
    Left = 353
    Top = 289
    Width = 92
    Height = 13
    Caption = 'Zero = Bottom Left'
  end
  object Label10: TLabel
    Left = 439
    Top = 328
    Width = 31
    Height = 14
    Caption = 'Zoom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 457
    Top = 189
    Width = 32
    Height = 13
    Caption = 'Pitch Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 457
    Top = 75
    Width = 41
    Height = 13
    Caption = 'Dwell ms'
  end
  object Label13: TLabel
    Left = 457
    Top = 100
    Width = 41
    Height = 13
    Caption = 'Pad Mult'
  end
  object Label14: TLabel
    Left = 516
    Top = 10
    Width = 80
    Height = 14
    Anchors = [akTop, akRight]
    Caption = 'GCode Output'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 209
    Top = 55
    Width = 58
    Height = 13
    Caption = 'Saved Mpos'
  end
  object Label20: TLabel
    Left = 432
    Top = 264
    Width = 36
    Height = 13
    Caption = 'Presets'
  end
  object Label21: TLabel
    Left = 457
    Top = 125
    Width = 34
    Height = 13
    Caption = 'Pad ms'
  end
  object Label22: TLabel
    Left = 411
    Top = 50
    Width = 82
    Height = 13
    Caption = 'Dispense all Pads'
  end
  object Memo1: TMemo
    Left = 515
    Top = 30
    Width = 159
    Height = 285
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button_Settings: TButton
    Left = 74
    Top = 6
    Width = 50
    Height = 25
    Caption = 'Setup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button_SettingsClick
  end
  object Button_Open: TButton
    Left = 6
    Top = 6
    Width = 62
    Height = 25
    Caption = 'Connect'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button_OpenClick
  end
  object EditStatus: TEdit
    Left = 134
    Top = 8
    Width = 343
    Height = 21
    TabOrder = 3
    Text = 'EditStatus'
  end
  object BitBtnXzero: TBitBtn
    Left = 134
    Top = 70
    Width = 65
    Height = 24
    Caption = 'X Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnXzeroClick
  end
  object BitBtnYzero: TBitBtn
    Left = 134
    Top = 95
    Width = 65
    Height = 24
    Caption = 'Y Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtnYzeroClick
  end
  object BitBtnZzero: TBitBtn
    Left = 134
    Top = 120
    Width = 65
    Height = 24
    Caption = 'Z Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtnZzeroClick
  end
  object BitBtn9: TBitBtn
    Tag = 12
    Left = 98
    Top = 157
    Width = 26
    Height = 24
    Caption = '+10'
    TabOrder = 7
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn8: TBitBtn
    Tag = 11
    Left = 98
    Top = 185
    Width = 26
    Height = 24
    Caption = '+1'
    TabOrder = 8
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn7: TBitBtn
    Tag = 10
    Left = 98
    Top = 213
    Width = 26
    Height = 24
    Caption = '+0.1'
    TabOrder = 9
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn10: TBitBtn
    Tag = 13
    Left = 98
    Top = 263
    Width = 26
    Height = 24
    Caption = '-0.1'
    TabOrder = 10
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn11: TBitBtn
    Tag = 14
    Left = 98
    Top = 290
    Width = 26
    Height = 24
    Caption = '-1'
    TabOrder = 11
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn12: TBitBtn
    Tag = 15
    Left = 98
    Top = 317
    Width = 26
    Height = 24
    Caption = '-10'
    TabOrder = 12
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn4: TBitBtn
    Left = 124
    Top = 238
    Width = 26
    Height = 24
    Caption = '+0.1'
    TabOrder = 13
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn5: TBitBtn
    Tag = 1
    Left = 152
    Top = 238
    Width = 26
    Height = 24
    Caption = '+1'
    TabOrder = 14
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn6: TBitBtn
    Tag = 2
    Left = 181
    Top = 238
    Width = 26
    Height = 24
    Caption = '+10'
    TabOrder = 15
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn13: TBitBtn
    Tag = 3
    Left = 72
    Top = 238
    Width = 26
    Height = 24
    Caption = '-0.1'
    TabOrder = 16
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn14: TBitBtn
    Tag = 4
    Left = 44
    Top = 238
    Width = 26
    Height = 24
    Caption = '-1'
    TabOrder = 17
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn15: TBitBtn
    Tag = 5
    Left = 16
    Top = 238
    Width = 26
    Height = 24
    Caption = '-10'
    TabOrder = 18
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn16: TBitBtn
    Tag = 22
    Left = 248
    Top = 157
    Width = 26
    Height = 24
    Caption = '+10'
    TabOrder = 19
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn17: TBitBtn
    Tag = 21
    Left = 248
    Top = 185
    Width = 26
    Height = 24
    Caption = '+1'
    TabOrder = 20
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn18: TBitBtn
    Tag = 20
    Left = 248
    Top = 213
    Width = 26
    Height = 24
    Caption = '+0.1'
    TabOrder = 21
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn19: TBitBtn
    Tag = 23
    Left = 248
    Top = 263
    Width = 26
    Height = 24
    Caption = '-0.1'
    TabOrder = 22
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn20: TBitBtn
    Tag = 24
    Left = 248
    Top = 290
    Width = 26
    Height = 24
    Caption = '-1'
    TabOrder = 23
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtn21: TBitBtn
    Tag = 25
    Left = 248
    Top = 317
    Width = 26
    Height = 24
    Caption = '-10'
    TabOrder = 24
    OnMouseDown = BitBtnJogMouseDown
  end
  object BitBtnHome: TBitBtn
    Left = 332
    Top = 95
    Width = 70
    Height = 24
    Caption = 'Home'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    OnClick = BitBtnHomeClick
  end
  object BitBtnGotoZero: TBitBtn
    Left = 332
    Top = 120
    Width = 70
    Height = 24
    Caption = 'Goto Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
    OnClick = BitBtnGotoZeroClick
  end
  object EditPitchX: TEdit
    Left = 410
    Top = 159
    Width = 41
    Height = 21
    TabOrder = 27
    Text = '1.0'
  end
  object EditPadsX: TEdit
    Left = 306
    Top = 159
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 28
    Text = '15'
  end
  object EditPadsY: TEdit
    Left = 306
    Top = 186
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 29
    Text = '15'
  end
  object BitBtnCreateBGA: TBitBtn
    Left = 318
    Top = 213
    Width = 149
    Height = 24
    Caption = 'Create Pattern'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 30
    OnClick = BitBtnCreatePatternClick
  end
  object BitBtnAbort: TBitBtn
    Left = 332
    Top = 70
    Width = 70
    Height = 24
    Caption = 'Abort'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 31
    OnClick = BitBtnAbortClick
  end
  object BitBtn23: TBitBtn
    Left = 712
    Top = 329
    Width = 164
    Height = 24
    Anchors = [akTop, akRight]
    Caption = 'Open Gerber Paste File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 32
    OnClick = BitBtn23Click
  end
  object SgBlocks: TStringGrid
    Tag = 3
    Left = 515
    Top = 359
    Width = 361
    Height = 272
    Hint = 
      'Left-click to find aperture, right-click to set reference point ' +
      'zero'
    Anchors = [akTop, akRight, akBottom]
    ColCount = 7
    DefaultRowHeight = 18
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 33
    OnDrawCell = SgBlocksDrawCell
    OnMouseDown = SgBlocksMouseDown
    OnSelectCell = SgBlocksSelectCell
    ColWidths = (
      28
      45
      45
      75
      45
      45
      50)
    RowHeights = (
      18
      18)
  end
  object SgApert: TStringGrid
    Tag = 3
    Left = 680
    Top = 30
    Width = 196
    Height = 285
    Hint = 'Left-click to find first pad of aperture, right-click to edit'
    Anchors = [akTop, akRight]
    ColCount = 4
    DefaultRowHeight = 18
    DrawingStyle = gdsClassic
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goThumbTracking]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 34
    OnDrawCell = SgApertDrawCell
    OnMouseDown = SgApertMouseDown
    OnSelectCell = SgApertSelectCell
    ColWidths = (
      45
      40
      40
      45)
    RowHeights = (
      18
      18)
  end
  object TrackBar1: TTrackBar
    Left = 289
    Top = 326
    Width = 144
    Height = 30
    Max = 15
    Min = 3
    Position = 5
    TabOrder = 35
    OnChange = TrackBar1Change
  end
  object BitBtnRun: TBitBtn
    Left = 332
    Top = 45
    Width = 70
    Height = 24
    Caption = 'Run'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 36
    OnClick = BitBtnRunClick
  end
  object EditPitchY: TEdit
    Left = 410
    Top = 186
    Width = 41
    Height = 21
    TabOrder = 37
    Text = '1.0'
  end
  object EditDwellTime: TEdit
    Left = 410
    Top = 72
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 38
    Text = '100'
  end
  object EditPadTime: TEdit
    Left = 410
    Top = 97
    Width = 41
    Height = 21
    NumbersOnly = True
    TabOrder = 39
    Text = '100'
  end
  object EditSavedX: TEdit
    Left = 209
    Top = 72
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 40
    Text = '0.0'
  end
  object EditSavedY: TEdit
    Left = 209
    Top = 97
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 41
    Text = '0.0'
  end
  object EditSavedZ: TEdit
    Left = 209
    Top = 122
    Width = 62
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 42
    Text = '0.0'
  end
  object BitBtnGotoPos: TBitBtn
    Left = 277
    Top = 95
    Width = 44
    Height = 49
    Caption = 'Goto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 43
    OnClick = BitBtnGotoPosClick
  end
  object BitBtnSavePos: TBitBtn
    Left = 277
    Top = 70
    Width = 44
    Height = 24
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 44
    OnClick = BitBtnSavePosClick
  end
  object BitBtnAllzero: TBitBtn
    Left = 134
    Top = 45
    Width = 65
    Height = 24
    Caption = 'All Zero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 45
    OnClick = BitBtnAllZeroClick
  end
  object BitBtnFeedAir: TBitBtn
    Left = 157
    Top = 290
    Width = 65
    Height = 24
    Caption = 'Feed Air'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 28912
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 46
    OnMouseDown = BitBtnFeedAirMouseDown
  end
  object BtnSO8: TButton
    Left = 318
    Top = 241
    Width = 40
    Height = 20
    Caption = 'SO8 H'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 47
    OnClick = BtnSO8Click
  end
  object BtnSO16W: TButton
    Left = 364
    Top = 241
    Width = 58
    Height = 20
    Caption = 'SO16W H'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 48
    OnClick = BtnSO16WClick
  end
  object BtnBGA: TButton
    Left = 427
    Top = 241
    Width = 40
    Height = 20
    Caption = 'BGA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 49
    OnClick = BtnBGAClick
  end
  object Button1: TButton
    Left = 364
    Top = 262
    Width = 58
    Height = 20
    Caption = 'SO16W V'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 50
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 318
    Top = 262
    Width = 40
    Height = 20
    Caption = 'SO8 V'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 51
    OnClick = Button4Click
  end
  object EditPadTimeRO: TEdit
    Left = 410
    Top = 122
    Width = 41
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 52
    Text = '0'
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnAfterOpen = ComPortAfterOpen
    OnAfterClose = ComPortAfterClose
    OnRxChar = ComPortRxChar
    Left = 512
    Top = 204
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 528
    Top = 140
  end
  object OpenDialog1: TOpenDialog
    Left = 584
    Top = 148
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 424
    object SetReferenceNozzleisatthisPad1: TMenuItem
      Caption = 'Set Zero Reference (Nozzle is at this Pad)'
      OnClick = SetZeroReferencePoint
    end
    object MovetothispadXY: TMenuItem
      Caption = 'Move to this Pad (XY)'
      OnClick = MovetothispadXYClick
    end
    object DispensethisPad1: TMenuItem
      Caption = 'Dispense this Pad'
      OnClick = DispensethisPad1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EnableAperture1: TMenuItem
      Caption = 'Circle'
      OnClick = SgBlocksCircleClick
    end
    object DisableAperture1: TMenuItem
      Caption = 'Rectangle'
      OnClick = SgBlocksRectClick
    end
    object DisableallApertures1: TMenuItem
      Caption = 'None (OFF)'
      OnClick = SgBlocksOffClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 736
    Top = 176
    object DispensePadswiththisAperture1: TMenuItem
      Caption = 'Dispense Pads with this Aperture'
      OnClick = DispensePadswiththisAperture1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuItemApertCircle: TMenuItem
      Caption = 'Circle'
      OnClick = MenuItemApertCircleClick
    end
    object MenuItemApertRect: TMenuItem
      Caption = 'Rectangle'
      OnClick = MenuItemApertRectClick
    end
    object MenuItemApertOff: TMenuItem
      Caption = 'None (OFF)'
      OnClick = MenuItemApertOffClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MenuItemApertDisableAll: TMenuItem
      Caption = 'Disable All'
      OnClick = MenuItemApertDisableAllClick
    end
    object MenuItemApertEnableAll: TMenuItem
      Caption = 'Enable All'
      OnClick = MenuItemApertEnableAllClick
    end
  end
  object TimerDraw: TTimer
    Interval = 100
    OnTimer = TimerDrawTimer
    Left = 528
    Top = 76
  end
end
