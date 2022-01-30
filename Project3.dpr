program Project3;

uses
  Forms,
  punto3CrudClientes in 'punto3CrudClientes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
