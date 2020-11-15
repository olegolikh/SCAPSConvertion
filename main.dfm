object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SCAPS Conversion'
  ClientHeight = 700
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object LFile: TLabel
    Left = 203
    Top = 281
    Width = 238
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = 'No Selection'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LAction: TLabel
    Left = 203
    Top = 328
    Width = 238
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = 'Not Yet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BtFileSelect: TButton
    Left = 11
    Top = 277
    Width = 153
    Height = 34
    Caption = '&Select  .iv file'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtFileSelectClick
  end
  object BtDone: TButton
    Left = 11
    Top = 325
    Width = 153
    Height = 34
    Caption = '&Extract IV files'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtDoneClick
  end
  object BtClose: TButton
    Left = 168
    Top = 664
    Width = 105
    Height = 25
    Caption = '&Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtCloseClick
  end
  object GBTemp: TGroupBox
    Left = 11
    Top = 88
    Width = 97
    Height = 105
    Caption = 'Temperature'
    TabOrder = 3
    object LTemp_start: TLabel
      Left = 11
      Top = 24
      Width = 33
      Height = 16
      Caption = 'Start:'
    end
    object LTemp_Finish: TLabel
      Left = 11
      Top = 47
      Width = 38
      Height = 16
      Caption = 'Finish:'
    end
    object LTemp_Step: TLabel
      Left = 11
      Top = 68
      Width = 31
      Height = 16
      Caption = 'Step:'
    end
    object STTemp_start: TStaticText
      Left = 64
      Top = 24
      Width = 25
      Height = 20
      Caption = '300'
      TabOrder = 0
    end
    object STTemp_Finish: TStaticText
      Left = 63
      Top = 47
      Width = 25
      Height = 20
      Caption = '350'
      TabOrder = 1
    end
    object STTemp_Step: TStaticText
      Left = 64
      Top = 68
      Width = 18
      Height = 20
      Caption = '10'
      TabOrder = 2
    end
  end
  object GBBoron: TGroupBox
    Left = 333
    Top = 88
    Width = 250
    Height = 120
    Caption = 'Base'
    TabOrder = 4
    object LBase_Conc: TLabel
      Left = 11
      Top = 19
      Width = 103
      Height = 54
      Caption = 'Boron concentration (cm-3)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LBase_Thick: TLabel
      Left = 11
      Top = 77
      Width = 74
      Height = 36
      Caption = 'Thickness (mkm)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object STBoron: TStaticText
      Left = 131
      Top = 27
      Width = 48
      Height = 28
      Caption = '1e16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object STBase_Thick: TStaticText
      Left = 131
      Top = 81
      Width = 48
      Height = 28
      Caption = '1e16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object BMaterialFileCreate: TButton
    Left = 48
    Top = 227
    Width = 228
    Height = 36
    Caption = '.material file create'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    WordWrap = True
    OnClick = BMaterialFileCreateClick
  end
  object BDatesDat: TButton
    Left = 8
    Top = 393
    Width = 129
    Height = 48
    Caption = 'dates.dat convert'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    WordWrap = True
    OnClick = BDatesDatClick
  end
  object BFeB_x: TButton
    Left = 305
    Top = 483
    Width = 130
    Height = 48
    Caption = 'Fe(x) and FeB(x) create'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    WordWrap = True
    OnClick = BFeB_xClick
  end
  object GBFerum: TGroupBox
    Left = 11
    Top = 464
    Width = 262
    Height = 73
    Caption = 'Iron concentration, cm-3'
    TabOrder = 8
    object LFe_Lo: TLabel
      Left = 16
      Top = 24
      Width = 33
      Height = 16
      Caption = 'Start:'
    end
    object LFe_Hi: TLabel
      Left = 99
      Top = 24
      Width = 38
      Height = 16
      Caption = 'Finish:'
    end
    object LFe_steps: TLabel
      Left = 173
      Top = 24
      Width = 31
      Height = 16
      Caption = 'Step:'
    end
    object STFe_Lo: TStaticText
      Left = 16
      Top = 47
      Width = 25
      Height = 20
      Caption = '300'
      TabOrder = 0
    end
    object STFe_Hi: TStaticText
      Left = 99
      Top = 47
      Width = 25
      Height = 20
      Caption = '350'
      TabOrder = 1
    end
    object STFe_steps: TStaticText
      Left = 179
      Top = 47
      Width = 18
      Height = 20
      Caption = '10'
      TabOrder = 2
    end
  end
  object BDatesDatCorrect: TButton
    Left = 165
    Top = 393
    Width = 130
    Height = 48
    Caption = 'correct dates.dat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    WordWrap = True
    OnClick = BDatesDatCorrectClick
  end
  object GBFinal: TGroupBox
    Left = 509
    Top = 464
    Width = 231
    Height = 148
    Caption = 'Final'
    TabOrder = 10
    object BResult: TButton
      Left = 29
      Top = 53
      Width = 178
      Height = 71
      Caption = 'ResultAll.dat convert'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = BResultClick
    end
  end
  object GBBSF: TGroupBox
    Left = 589
    Top = 88
    Width = 202
    Height = 120
    Caption = 'SBF layer'
    TabOrder = 11
    object LSBF_Conc: TLabel
      Left = 11
      Top = 19
      Width = 103
      Height = 54
      Caption = 'Boron concentration (cm-3)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LSBF_Thick: TLabel
      Left = 11
      Top = 77
      Width = 74
      Height = 36
      Caption = 'Thickness (mkm)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object STSBF_Con: TStaticText
      Left = 131
      Top = 27
      Width = 48
      Height = 28
      Caption = '1e16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object STSBF_Thick: TStaticText
      Left = 131
      Top = 81
      Width = 48
      Height = 28
      Caption = '1e16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GBEmiter: TGroupBox
    Left = 117
    Top = 88
    Width = 210
    Height = 120
    Caption = 'Emiter'
    TabOrder = 12
    object LEmiter_Conc: TLabel
      Left = 11
      Top = 19
      Width = 103
      Height = 54
      Caption = 'Phosphorus concentration (cm-3)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object LEmiter_Thick: TLabel
      Left = 11
      Top = 77
      Width = 74
      Height = 36
      Caption = 'Thickness (mkm)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object STEmiter_Con: TStaticText
      Left = 131
      Top = 40
      Width = 48
      Height = 28
      Caption = '1e16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object STEmiter_Thick: TStaticText
      Left = 131
      Top = 81
      Width = 48
      Height = 28
      Caption = '1e16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object BScapsFileCreate: TButton
    Left = 315
    Top = 227
    Width = 228
    Height = 36
    Caption = '.scaps file create'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    WordWrap = True
    OnClick = BScapsFileCreateClick
  end
  object GBFolderSelect: TGroupBox
    Left = 16
    Top = 3
    Width = 724
    Height = 77
    Caption = 'Folder Select'
    TabOrder = 14
    object L_SCAPSF: TLabel
      Left = 323
      Top = 19
      Width = 385
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'D:\Oleg\Disser\Dokument\etap6\CD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_ResF: TLabel
      Left = 323
      Top = 47
      Width = 385
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'D:\Oleg\Disser\Dokument\etap6\CD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ST_SCAPSF: TStaticText
      Left = 21
      Top = 21
      Width = 101
      Height = 24
      Caption = 'SCAPS Folder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object B_SCAPSFSelect: TButton
      Left = 141
      Top = 13
      Width = 156
      Height = 25
      Caption = 'Select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = B_SCAPSFSelectClick
    end
    object ST_ResF: TStaticText
      Left = 21
      Top = 49
      Width = 103
      Height = 24
      Caption = 'Results Folder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object B_ResFSelect: TButton
      Left = 141
      Top = 44
      Width = 156
      Height = 25
      Caption = 'Select'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = B_ResFSelectClick
    end
  end
  object BAllDatesDat: TButton
    Left = 8
    Top = 564
    Width = 156
    Height = 48
    Caption = 'all dates.dat convert'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    WordWrap = True
    OnClick = BAllDatesDatClick
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Scaps files (*.iv)|*.iv'
    Left = 426
    Top = 564
  end
  object OpenDialog2: TOpenDialog
    Left = 336
    Top = 600
  end
end
