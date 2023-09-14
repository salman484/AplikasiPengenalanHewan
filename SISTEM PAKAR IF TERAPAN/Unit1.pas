unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ExtDlgs,
  MPlayer, SMDBGrid;

type
  TFormKonsultasi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    lbl3: TLabel;
    btnYa: TBitBtn;
    btnTidak: TBitBtn;
    Memo1: TMemo;
    Label3: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MediaPlayer1: TMediaPlayer;
    Panel3: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    lblnama: TLabel;
    SMDBGrid1: TSMDBGrid;
    MediaPlayer2: TMediaPlayer;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnYaClick(Sender: TObject);
    procedure btnTidakClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPertanyaan;
    procedure CariCiri;
  public
    { Public declarations }
  end;

var
  FormKonsultasi: TFormKonsultasi;

implementation
uses Unit2,Unit4,unit5;


{$R *.dfm}

procedure TFormKonsultasi.BitBtn1Click(Sender: TObject);
begin
FormKonsultasi.Hide;
FormTabel.Show;
end;

procedure TFormKonsultasi.BitBtn2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
  DM1.Pertanyaan_zq.First;
  ShowPertanyaan;
  btnYa.Visible := True;
  btnTidak.Visible := True;
  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := 'select * from tabelrule';
  DM1.pRule_zq.Active := True;
  btnYa.Enabled := True;
  btnTidak.Enabled := btnYa.Enabled;
end;

procedure TFormKonsultasi.btnYaClick(Sender: TObject);
var
s: string;
begin
   s := DM1.Pertanyaan_zq.FieldByName('KodePertanyaan').AsString + ' - ' +
    DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
  Memo1.Lines.Add(s);

  if not DM1.Pertanyaan_zq.Eof then begin
    DM1.Pertanyaan_zq.Next;
    ShowPertanyaan;
  end
  else
  begin
    CariCiri;
  end;
end;

procedure TFormKonsultasi.btnTidakClick(Sender: TObject);
begin
DM1.Pertanyaan_zq.Next;
  ShowPertanyaan;
  if DM1.Pertanyaan_zq.Eof then begin
    CariCiri;
  end;
end;

procedure TFormKonsultasi.FormActivate(Sender: TObject);
begin
DM1.TabelAktif(True);
Memo1.Lines.Clear;
end;

procedure TFormKonsultasi.ShowPertanyaan;
begin
  lbl3.Caption := DM1.Pertanyaan_zq.FieldByName('Pertanyaan').AsString;
end;

procedure TFormKonsultasi.CariCiri;
var
  s, s1: string;
  i: Integer;
begin
  s := 'SELECT * FROM tabelrule WHERE ';
  s1 := '';
  for i := 0 to Memo1.Lines.Count - 1 do begin
    s1 := s1 + ' AND kodepertanyaan1 LIKE ' + QuotedStr('%' + Trim(copy(Memo1.Lines[i], 1, 5)) + '%');
  end;
  if Length(s1) > 0 then
    Delete(s1, 1, 5);
  DM1.pRule_zq.Active := False;
  DM1.pRule_zq.SQL.Text := s+s1;
  DM1.pRule_zq.Active := True;

  if DM1.pRule_zq.RecordCount = 0 then begin
    Application.MessageBox('Maaf, tidak ada penyakit yang terdeteksi', 'Keterangan', MB_OK + MB_ICONWARNING);
  end;

  btnYa.Enabled := False;
  btnTidak.Enabled := False;
end;

procedure TFormKonsultasi.SMDBGrid1DblClick(Sender: TObject);
begin
Image1.Picture.LoadFromFile(DM1.pRule_zq['Gambar']);
Label5.Caption  := DM1.pRule_zq.FieldValues['Nama Hewan'];
Label6.Caption := DM1.pRule_zq.FieldValues['KodeHewan'];
MediaPlayer1.filename:= DM1.pRule_zq.FieldValues['Vidio'];
MediaPlayer2.filename:= DM1.pRule_zq.FieldValues['Suara'];

end;

procedure TFormKonsultasi.Button1Click(Sender: TObject);
begin
MediaPlayer1.Open;
MediaPlayer1.Play;
end;

procedure TFormKonsultasi.Button2Click(Sender: TObject);
begin
MediaPlayer2.Open;
MediaPlayer2.Play;
end;

end.
