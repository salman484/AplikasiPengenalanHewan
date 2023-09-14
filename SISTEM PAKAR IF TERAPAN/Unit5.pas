unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    edt_username: TEdit;
    Label2: TLabel;
    edt_pass: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4, Unit2, Unit1;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
var
  i : Integer;
  a,b,c : string;
begin
 DM1.login_zq.SQL.Text := 'SELECT * FROM login';
 DM1.login_zq.Active := True;

 for i := 1 to DM1.login_zq.RecordCount do begin
   a := String(DM1.login_zq['Nama']);
   b := IntToStr(DM1.login_zq['password']);
   c:= string(DM1.login_zq['Akses']);

 if((edt_username.Text=a)and (edt_pass.Text=b))then begin

      if c='Admin' then
      begin
      Application.MessageBox('Selamat Datang Admin', 'Selamat', MB_OK +
        MB_ICONINFORMATION);
      FormTabel.Show;
      Break;
      end
      else begin
        Application.MessageBox('Selamat Datang', 'Selamat', MB_OK +
        MB_ICONINFORMATION);
        FormKonsultasi.Show;
        FormKonsultasi.lblnama.Caption:='Selamat Datang '+DM1.login_zq.Fieldbyname('nama').AsString;
        Break;
        end;

    end;
    if ((edt_username.Text=a) and (edt_pass.Text<>b))then begin
        Application.MessageBox('Maaf password anda salah!!', 'Eror', MB_OK +
          MB_ICONSTOP);
        Break;
      end
    else if ((edt_username.Text<>a) and (edt_pass.Text=b))then begin
        Application.MessageBox('Maaf username anda salah', 'Eror', MB_OK +
          MB_ICONSTOP);
        Break;
      end;
//    else if ((edt_username.Text<>a) and (edt_pass.Text<>b))then begin
//        Application.MessageBox('Maaf password atau usename anda salah!!', 'Eror', MB_OK +
//          MB_ICONSTOP);
//        Break;
//      end;
      DM1.login_zq.Next;
  end;

end;

end.
