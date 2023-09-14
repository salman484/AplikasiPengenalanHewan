unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SMDBCtrl, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons;

type
  TTabelRule = class(TForm)
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    SMDBNavigator1: TSMDBNavigator;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabelRule: TTabelRule;

implementation
uses Unit2,Unit4;

{$R *.dfm}

procedure TTabelRule.BitBtn1Click(Sender: TObject);
begin
TabelRule.Close;
FormTabel.Show;
end;

procedure TTabelRule.FormActivate(Sender: TObject);
begin
DM1.TabelAktif(True);
end;

end.
