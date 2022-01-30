unit punto2calculosalariosemanal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
hora: integer;
aux: integer;
aux2: integer;
sueldo:double;
begin

hora:=StrToInt(Edit2.Text);
if(hora<=35) then
begin
sueldo:=hora*15000;
end;
if(hora>35)then
begin
aux:=hora-35;
aux2:=hora-aux;
sueldo:=(aux2*15000)+(aux*19000);
end;

showmessage('Al empleado '+ Edit1.Text +' Se le debe pagar la suma de: '+FloatToStr(sueldo));


end;

end.
