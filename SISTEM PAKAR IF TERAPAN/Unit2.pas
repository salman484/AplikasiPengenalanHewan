unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
  SMDBGrid, Buttons, SMDBCtrl;

type
  TFormTabel = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SMDBGrid1: TSMDBGrid;
    SMDBGrid2: TSMDBGrid;
    SMDBGrid3: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    SMDBNavigator2: TSMDBNavigator;
    SMDBNavigator3: TSMDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabel: TFormTabel;

implementation
uses Unit1, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TFormTabel.BitBtn1Click(Sender: TObject);
begin
FormTabel.Close;
FormKonsultasi.Show;
end;

procedure TFormTabel.BitBtn2Click(Sender: TObject);
begin
FormTabel.Close;
TabelRule.Show;
end;

procedure TFormTabel.FormActivate(Sender: TObject);
begin
DM1.TabelAktif(True);
end;



end.
