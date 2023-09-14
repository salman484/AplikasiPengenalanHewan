object TabelRule: TTabelRule
  Left = 192
  Top = 125
  Width = 622
  Height = 480
  Caption = 'TabelRule'
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
  object SMDBNavigator1: TSMDBNavigator
    Left = 128
    Top = 80
    Width = 240
    Height = 25
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 0
  end
  object SMDBGrid1: TSMDBGrid
    Left = 40
    Top = 136
    Width = 465
    Height = 265
    DataSource = DM1.Rule_ds
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
  object BitBtn1: TBitBtn
    Left = 440
    Top = 80
    Width = 75
    Height = 25
    Caption = 'KE TABEL'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
