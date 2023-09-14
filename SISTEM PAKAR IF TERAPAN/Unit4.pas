unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, Dialogs, ZAbstractTable;

type
  TDM1 = class(TDataModule)
    con1: TZConnection;
    Ciri_zq: TZQuery;
    Hewan_zq: TZQuery;
    Pertanyaan_zq: TZQuery;
    Rule_zq: TZQuery;
    pRule_zq: TZQuery;
    Ciri_ds: TDataSource;
    Hewan_ds: TDataSource;
    Pertanyaan_ds: TDataSource;
    Rule_ds: TDataSource;
    pRule_ds: TDataSource;
    pRule_zqKodeRule: TStringField;
    pRule_zqKodePertanyaan1: TStringField;
    pRule_zqKodeHewan: TStringField;
    login_zq: TZQuery;
    login_ds: TDataSource;
    pRule_zqNamaHewan: TStringField;
    pRule_zqGambar: TStringField;
    pRule_zqVidio: TStringField;
    pRule_zqSuara: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TabelAktif(b:Boolean);
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}
procedure TDM1.TabelAktif(b:Boolean);
begin
  Ciri_zq.Active := b;
  Hewan_zq.Active := b;
  Pertanyaan_zq.Active := b;
  pRule_zq.Active := b;
end;

end.
