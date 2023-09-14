object DM1: TDM1
  OldCreateOrder = False
  Left = 537
  Top = 123
  Height = 318
  Width = 504
  object con1: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'hewan'
    User = 'root'
    Connected = True
    Left = 40
    Top = 24
  end
  object Ciri_zq: TZQuery
    Connection = con1
    SQL.Strings = (
      'select*From tabelciri'
      'order by KodeCiri')
    Params = <>
    Left = 40
    Top = 88
  end
  object Hewan_zq: TZQuery
    Connection = con1
    SQL.Strings = (
      'select*From tabelhewan'
      'order by KodeHewan')
    Params = <>
    Left = 96
    Top = 88
  end
  object Pertanyaan_zq: TZQuery
    Connection = con1
    SQL.Strings = (
      'select*From tabelpertanyaan'
      'order by KodePertanyaan')
    Params = <>
    Left = 152
    Top = 88
  end
  object Rule_zq: TZQuery
    Connection = con1
    SQL.Strings = (
      'select*From tabelrule'
      'order by KodeRule')
    Params = <>
    Left = 208
    Top = 88
  end
  object pRule_zq: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tabelrule')
    Params = <>
    Left = 272
    Top = 88
    object pRule_zqKodeRule: TStringField
      DisplayWidth = 12
      FieldName = 'KodeRule'
      Required = True
      Size = 7
    end
    object pRule_zqKodePertanyaan1: TStringField
      DisplayWidth = 45
      FieldName = 'KodePertanyaan1'
      Size = 50
    end
    object pRule_zqKodeHewan: TStringField
      DisplayWidth = 15
      FieldName = 'KodeHewan'
      Size = 7
    end
    object pRule_zqNamaHewan: TStringField
      DisplayWidth = 22
      FieldName = 'Nama Hewan'
      Size = 15
    end
    object pRule_zqGambar: TStringField
      DisplayWidth = 144
      FieldName = 'Gambar'
      ReadOnly = True
      Size = 100
    end
    object pRule_zqVidio: TStringField
      DisplayWidth = 144
      FieldName = 'Vidio'
      ReadOnly = True
      Size = 100
    end
    object pRule_zqSuara: TStringField
      FieldName = 'Suara'
      Size = 100
    end
  end
  object login_zq: TZQuery
    Connection = con1
    SQL.Strings = (
      'SELECT * FROM login')
    Params = <>
    Left = 336
    Top = 88
  end
  object Ciri_ds: TDataSource
    DataSet = Ciri_zq
    Left = 40
    Top = 160
  end
  object Hewan_ds: TDataSource
    DataSet = Hewan_zq
    Left = 96
    Top = 160
  end
  object Pertanyaan_ds: TDataSource
    DataSet = Pertanyaan_zq
    Left = 152
    Top = 160
  end
  object Rule_ds: TDataSource
    DataSet = Rule_zq
    Left = 208
    Top = 160
  end
  object pRule_ds: TDataSource
    DataSet = pRule_zq
    Left = 272
    Top = 160
  end
  object login_ds: TDataSource
    DataSet = login_zq
    Left = 336
    Top = 160
  end
end
