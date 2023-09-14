object FormTabel: TFormTabel
  Left = 101
  Top = 43
  Width = 1244
  Height = 684
  Caption = 'Form Tabel'
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
    Left = 112
    Top = 120
    Width = 58
    Height = 13
    Caption = 'TABEL CIRI'
  end
  object Label2: TLabel
    Left = 512
    Top = 120
    Width = 78
    Height = 13
    Caption = 'TABEL HEWAN'
  end
  object Label3: TLabel
    Left = 912
    Top = 112
    Width = 110
    Height = 13
    Caption = 'TABEL PERTANYAAN'
  end
  object Label4: TLabel
    Left = 8
    Top = 520
    Width = 54
    Height = 13
    Caption = 'KODE CIRI'
  end
  object Label5: TLabel
    Left = 8
    Top = 568
    Width = 55
    Height = 13
    Caption = 'NAMA CIRI'
  end
  object Label6: TLabel
    Left = 376
    Top = 520
    Width = 74
    Height = 13
    Caption = 'KODE HEWAN'
  end
  object Label7: TLabel
    Left = 368
    Top = 568
    Width = 75
    Height = 13
    Caption = 'NAMA HEWAN'
  end
  object Label8: TLabel
    Left = 744
    Top = 520
    Width = 106
    Height = 13
    Caption = 'KODE PERTANYAAN'
  end
  object Label9: TLabel
    Left = 744
    Top = 560
    Width = 73
    Height = 13
    Caption = 'PERTANYAAN'
  end
  object BitBtn1: TBitBtn
    Left = 408
    Top = 40
    Width = 97
    Height = 33
    Caption = 'MENU UTAMA'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 664
    Top = 40
    Width = 89
    Height = 33
    Caption = 'TABEL RULE'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object SMDBNavigator1: TSMDBNavigator
    Left = 56
    Top = 168
    Width = 240
    Height = 25
    DataSource = DM1.Ciri_ds
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 2
  end
  object SMDBNavigator2: TSMDBNavigator
    Left = 424
    Top = 160
    Width = 240
    Height = 25
    DataSource = DM1.Hewan_ds
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 3
  end
  object SMDBNavigator3: TSMDBNavigator
    Left = 848
    Top = 152
    Width = 240
    Height = 25
    DataSource = DM1.Pertanyaan_ds
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 4
  end
  object SMDBGrid1: TSMDBGrid
    Left = 48
    Top = 208
    Width = 249
    Height = 281
    DataSource = DM1.Ciri_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object SMDBGrid2: TSMDBGrid
    Left = 384
    Top = 200
    Width = 305
    Height = 289
    DataSource = DM1.Hewan_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object SMDBGrid3: TSMDBGrid
    Left = 784
    Top = 200
    Width = 329
    Height = 289
    DataSource = DM1.Pertanyaan_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
    DefaultRowHeight = 24
    ScrollBars = ssHorizontal
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 520
    Width = 121
    Height = 21
    DataField = 'KodeCiri'
    DataSource = DM1.Ciri_ds
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 568
    Width = 121
    Height = 21
    DataField = 'NamaCiri'
    DataSource = DM1.Ciri_ds
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 488
    Top = 512
    Width = 121
    Height = 21
    DataField = 'KodeHewan'
    DataSource = DM1.Hewan_ds
    TabOrder = 10
  end
  object DBEdit4: TDBEdit
    Left = 488
    Top = 568
    Width = 121
    Height = 21
    DataField = 'NamaHewan'
    DataSource = DM1.Hewan_ds
    TabOrder = 11
  end
  object DBEdit5: TDBEdit
    Left = 872
    Top = 520
    Width = 121
    Height = 21
    DataField = 'KodePertanyaan'
    DataSource = DM1.Pertanyaan_ds
    TabOrder = 12
  end
  object DBEdit6: TDBEdit
    Left = 872
    Top = 560
    Width = 201
    Height = 21
    DataField = 'Pertanyaan'
    DataSource = DM1.Pertanyaan_ds
    TabOrder = 13
  end
end
