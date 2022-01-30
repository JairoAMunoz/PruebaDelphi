unit punto1serieibonacci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);

var
num: integer;
anterior:integer;
aux: integer;
k:integer;
c:integer;
begin

num:=1;
anterior:=0;
aux:=0;
k:=0;


c:=StrToInt(Dialogs.InputBox('Calculo de la serie fibonacci', 'Ingrese Valor', ''));
c:=c;
memo1.Clear;

 while k<c do
  begin
    memo1.Lines.Add(inttostr(num));
    aux:=num;
    num:=num+anterior;
    anterior:=aux;
    k:=k+1;
    end;
  end;
end.
