program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormKonsultasi},
  Unit2 in 'Unit2.pas' {FormTabel},
  Unit3 in 'Unit3.pas' {TabelRule},
  Unit4 in 'Unit4.pas' {DM1: TDataModule},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFormKonsultasi, FormKonsultasi);
  Application.CreateForm(TFormTabel, FormTabel);
  Application.CreateForm(TTabelRule, TabelRule);
  Application.CreateForm(TDM1, DM1);
  Application.Run;
end.
