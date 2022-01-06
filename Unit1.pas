unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tah: Integer;
  tut :Integer;
  hak :Integer;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  tut := Random(1024)+1;
  hak := 10;
  Label3.Caption := 'Kalan Hakk�n : ' + IntToStr(hak);
  ShowMessage('1 ile 1024 Aras�nda Bir Tam Say� Giriniz !');
  Button2.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   tah:=StrToInt(Edit1.Text);
  if  tah= tut then
  begin
  ShowMessage('Bravo Bildin. Harikas�n');
  Label3.Caption:='Kalan hakk�n: 10';
  Button2.Enabled := False;
  end

  else if ( tah<1) or ( tah>1024) then
  begin
   ShowMessage ('L�tfen 1 ile 1024 Aras�nda Bir Say� Giriniz !');
  end

  else if  tah>tut then
  begin
   Dec(hak);
   ShowMessage ('Bilemedin. Daha k���k say� ile dene. ;)');
   Label3.Caption:='Kalan Hakk�n: '+IntToStr(hak);
  end

  else if  tah<tut then
  begin
   Dec(hak);
   ShowMessage ('Bilemedin. Daha b�y�k say� ile dene. ;');
   Label3.Caption:='Kalan Hakk�n: '+IntToStr(hak);
  end;

  if hak=0 then
  begin
   ShowMessage('Bilemedin. :( Do�ru Say� = '+ IntToStr(tut));
   Button2.Enabled := False;
  end;

  edit1.Text:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Label3.Caption:='Kalan Hakk�n : ' + IntToStr(hak);
 Button2.Enabled := False;
 edit1.Text:='';
end;

end.
