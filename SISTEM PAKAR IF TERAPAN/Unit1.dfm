object FormKonsultasi: TFormKonsultasi
  Left = 50
  Top = 2
  Width = 1289
  Height = 726
  Caption = 'Form Konsultasi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 16
    Width = 491
    Height = 29
    Caption = 'SISTEM PAKAR HEWAN YANG ADA DI LAUT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 312
    Top = 64
    Width = 303
    Height = 25
    Caption = 'METODE FORWARD CHANNING'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 184
    Width = 68
    Height = 13
    Caption = 'WORKPLACE'
  end
  object lbl3: TLabel
    Left = 472
    Top = 216
    Width = 81
    Height = 20
    Caption = 'Pertanyaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 768
    Top = 200
    Width = 401
    Height = 217
    Stretch = True
  end
  object Panel1: TPanel
    Left = 40
    Top = 112
    Width = 321
    Height = 49
    TabOrder = 0
    object lblnama: TLabel
      Left = 8
      Top = 8
      Width = 52
      Height = 25
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Memo1: TMemo
    Left = 40
    Top = 216
    Width = 321
    Height = 241
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btnYa: TBitBtn
    Left = 392
    Top = 272
    Width = 81
    Height = 25
    Caption = 'YA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnYaClick
  end
  object btnTidak: TBitBtn
    Left = 552
    Top = 272
    Width = 75
    Height = 25
    Caption = 'TIDAK'
    TabOrder = 3
    OnClick = btnTidakClick
  end
  object BitBtn2: TBitBtn
    Left = 392
    Top = 352
    Width = 83
    Height = 25
    Caption = 'KONSULTASI'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 552
    Top = 352
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkClose
  end
  object Panel2: TPanel
    Left = 880
    Top = 40
    Width = 241
    Height = 137
    TabOrder = 6
    object Label4: TLabel
      Left = 24
      Top = 32
      Width = 89
      Height = 13
      Caption = 'Hewan Ini adalah :'
    end
    object Label5: TLabel
      Left = 128
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Label5'
    end
    object Label6: TLabel
      Left = 128
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Label6'
    end
    object Label7: TLabel
      Left = 40
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Kode Hewan :'
    end
  end
  object MediaPlayer1: TMediaPlayer
    Left = 832
    Top = 480
    Width = 253
    Height = 30
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 832
    Top = 528
    Width = 265
    Height = 153
    Caption = 'Panel3'
    TabOrder = 8
  end
  object Button1: TButton
    Left = 1136
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Play Vidio'
    TabOrder = 9
    OnClick = Button1Click
  end
  object SMDBGrid1: TSMDBGrid
    Left = 40
    Top = 488
    Width = 401
    Height = 169
    DataSource = DM1.pRule_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
  end
  object MediaPlayer2: TMediaPlayer
    Left = 496
    Top = 480
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 11
  end
  object Button2: TButton
    Left = 584
    Top = 568
    Width = 75
    Height = 25
    Caption = 'Pengejaan'
    TabOrder = 12
    OnClick = Button2Click
  end
end
