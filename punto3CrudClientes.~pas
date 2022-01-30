unit punto3CrudClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, MConnect, ADODB, Grids, DBGrids,
  ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    Label10: TLabel;
    Edit10: TEdit;
    Label11: TLabel;
    Edit11: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOCommand1: TADOCommand;
    ADOQuery1: TADOQuery;
    GroupBox1: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    Button3: TButton;
    ADODataSet1: TADODataSet;
    DBNavigator1: TDBNavigator;
    ComboBox1: TComboBox;
    Button7: TButton;
    ADOQuery2: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    

    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

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
    ADOCommand1 : TADOCommand;

    begin

      ADOCommand1:=TADOCommand.Create(nil);
      try
       ADOCommand1.Connection:=AdoConnection1;
       ADOCommand1.Parameters.Clear;
//       ADOCommand1.CommandText:='INSERT INTO cliente (codigo,nombre,tipodocumento,numerodocumento,nombrerepresenLegal,telefono,email,personacontacto,valoractivos,valorpasivos,valorpatrimonio) VALUES (:id,:name,:tdoc,:numdoc,:nomre,:tel,:email,:perscont,:valoractivos,:valorpasivos,:patrim)';
       ADOCommand1.CommandText:='INSERT INTO cliente VALUES (:id,:name,:tdoc,:numdoc,:nomre,:tel,:email,:perscont,:valoractivos,:valorpasivos,:patrim)';
       ADOCommand1.ParamCheck:=False;
      ADOCommand1.Parameters.ParamByName('id').Value      := StrToInt(Edit1.Text);
       ADOCommand1.Parameters.ParamByName('name').Value    := Edit2.Text;
       ADOCommand1.Parameters.ParamByName('tdoc').Value    := combobox1.Text;
       ADOCommand1.Parameters.ParamByName('numdoc').Value    := StrToInt(Edit4.Text);
       ADOCommand1.Parameters.ParamByName('nomre').Value    := Edit5.Text;
       ADOCommand1.Parameters.ParamByName('tel').Value    := StrToFloat(Edit6.Text);
       ADOCommand1.Parameters.ParamByName('email').Value    := Edit7.Text;
       ADOCommand1.Parameters.ParamByName('perscont').Value    := Edit8.Text;
       ADOCommand1.Parameters.ParamByName('valoractivos').Value    := StrToFloat(Edit9.Text);
       ADOCommand1.Parameters.ParamByName('valorpasivos').Value    := StrToFloat(Edit10.Text);
       ADOCommand1.Parameters.ParamByName('patrim').Value    := StrToFloat(Edit11.Text);




       ADOCommand1.Execute;
 showMessage('Datos guardados con éxito');
 datasource1.Enabled:=false;
   datasource1.Enabled:=true;
 dbgrid1.DataSource:=DataSource1;
 adotable1.Close;
 adotable1.Open;
 //AdoTable1.Refresh;




      //dbgrid1.refresh;

      finally
      ADOCommand1.Free;
      end;

      button2.Enabled:=false;
      button3.Enabled:=True;



end;


procedure TForm1.Button4Click(Sender: TObject);

var
ADOCommand1 : TADOCommand;
c:integer;
begin

c:=StrToInt(Dialogs.InputBox('Eliminar Registro', 'Ingrese codigo', ''));
  ADOCommand1:=TADOCommand.Create(nil);
      try
       ADOCommand1.Connection:=AdoConnection1;
       ADOCommand1.Parameters.Clear;
       ADOCommand1.CommandText:='Delete from cliente where codigo=(:id)';
       ADOCommand1.ParamCheck:=False;
      ADOCommand1.Parameters.ParamByName('id').Value:= c;

       ADOCommand1.Execute;
 showMessage('Registro eliminado con éxito');
 datasource1.Enabled:=false;
 datasource1.Enabled:=true;
 dbgrid1.DataSource:=DataSource1;
 dbgrid1.refresh;
//dbgrid1.UpdateControlState;
        adotable1.Close;
 adotable1.Open;



      finally
      ADOCommand1.Free;
 end;
  

end;




procedure TForm1.DBGrid1CellClick(Column: TColumn);
var
i:integer;
begin
for i := 0 to dbgrid1.SelectedRows.Count-1 do
begin


     {ir al registro seleccionado}
     dbgrid1.DataSource.DataSet.Bookmark:=dbgrid1.SelectedRows[i];

    {mostrar un primer valor de campo}
//ShowMessage(dbgrid1.DataSource.DataSet.DataSetField.);
ShowMessage(DBGrid1.DataSource.DataSet.Fields[1].Value);

end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';

Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
Edit10.Text:='';
Edit11.Text:='';
Button2.Enabled:=True;


Edit1.Enabled:=true;
Edit2.Enabled:=true;
Edit4.Enabled:=true;
Edit5.Enabled:=true;
Edit6.Enabled:=true;
Edit7.Enabled:=true;
Edit8.Enabled:=true;
Edit9.Enabled:=true;
Edit10.Enabled:=true;
Edit11.Enabled:=true;
combobox1.Enabled:=true;
button3.Enabled:=false;

end;






procedure TForm1.Button1Click(Sender: TObject);
var
 conStr : string;
begin

conStr:='Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=Clientes;Data Source=DESKTOP-PUAI1HC\SQLEXPRESS01;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=DESKTOP-PUAI1HC;';


 AdoConnection1.Close;

ADOConnection1.ConnectionString:= conStr;

 ADOConnection1.LoginPrompt:= False;
 if (NOT ADOConnection1.Connected) then
  begin
   try
    ADOConnection1.Open;
    showmessage('Se ha conectado al servidor,Conexion exitosa..');
      AdoTable1.Connection.Connected;
       adotable1.Close;
                 adotable1.Open;
       datasource1.Enabled:=false;
 datasource1.Enabled:=true;
 dbgrid1.DataSource:=DataSource1;
 dbgrid1.refresh;


    //Result:= True;
   Except on E:Exception do
    begin
    if e.Message = 'Login failed for user '+chr(39)+'admin' then
     showmessage('Login fallo para el ingreso..');
    if e.Message = '[DBNETLIB][ConnectionOpen (Connect()).]SQL Server does not exist or access denied' then
       showmessage('Servidor SQL no existe o acceso denegado');
     ADOConnection1.Close;
     ADOConnection1.ConnectionString:= '';
     //Result:= False;
    end;
   end;
  end;
   end;


procedure TForm1.Button7Click(Sender: TObject);


begin
Edit1.text:='';
Edit2.text:='';
Edit4.text:='';
Edit5.text:='';
Edit6.text:='';
Edit7.text:='';
Edit8.text:='';
Edit9.text:='';
Edit10.text:='';
Edit11.text:='';

Edit1.Enabled:=false;
Edit2.Enabled:=false;
Edit4.Enabled:=false;
Edit5.Enabled:=false;
Edit6.Enabled:=false;
Edit7.Enabled:=false;
Edit8.Enabled:=false;
Edit9.Enabled:=false;
Edit10.Enabled:=false;
Edit11.Enabled:=false;
combobox1.Enabled:=false;

 button2.Enabled:=false;
  button3.Enabled:=true;



   adotable1.Close;
                 adotable1.Open;
       datasource1.Enabled:=false;
 datasource1.Enabled:=true;
 dbgrid1.DataSource:=DataSource1;
 dbgrid1.refresh;


 end;



procedure TForm1.Button5Click(Sender: TObject);
    var
a:integer;
co:string;
begin



a:=StrToInt(Dialogs.InputBox('Buscar Registro', 'Ingrese codigo', ''));
adoquery2.Close;
ADOQuery2.SQL.Add('select * from cliente where codigo=:codigo');
AdoQuery2.Parameters.ParamByName('codigo').Value:=a;
adoquery2.Open;
AdoQuery2.ExecSQL;
//edit1.Text:=adoquery2.Recordset.Fields.Item[0].Value;
if AdoQuery2.RecordCount>0 then
begin
edit1.Text:=inttostr(AdoQuery2.RecordCount);


edit1.text := adoquery2.fieldbyname('codigo').Value;
co:=adoquery2.fieldbyname('codigo').Value;
edit2.text := adoquery2.fieldbyname('nombre').AsString;

combobox1.Text:= adoquery2.fieldbyname('tipodocumento').AsString;
edit4.text := FloatToStr(adoquery2.fieldbyname('numerodocumento').Value);
edit5.text := adoquery2.fieldbyname('nombrerepresenLegal').AsString;
edit6.text := FloatToStr(adoquery2.fieldbyname('telefono').Value);
edit7.text := adoquery2.fieldbyname('email').AsString;
edit8.text := adoquery2.fieldbyname('personacontacto').AsString;
edit9.text := FloatToStr(adoquery2.fieldbyname('valoractivos').Value);
edit10.text := FloatToStr(adoquery2.fieldbyname('valorpasivos').Value);
edit11.text := FloatToStr(adoquery2.fieldbyname('valorpatrimonio').Value);
 showMessage('datos encontrados   CODIGO:'+co+' NOMBRE: '+adoquery2.fieldbyname('nombre').AsString);
 button6.Enabled:=true;
 end
else
    begin
  showmessage('Datos no encontrados');

end;


 end;






procedure TForm1.Button6Click(Sender: TObject);


begin

ADOCommand1.CommandText:='Update cliente SET nombre=:name,tipodocumento=:tpdoc,numerodocumento=:num,nombrerepresenLegal=:repleg,telefono=:tel,personacontacto=:pco,valoractivos=:vact,valorpasivos=:acpas, valorpatrimonio=:vpatri  WHERE codigo=:id';




       ADOCommand1.ParamCheck:=False;
    ADOCommand1.Parameters.ParamByName('id').Value:=StrToInt(Edit1.Text);
       ADOCommand1.Parameters.ParamByName('name').Value:= Edit2.Text;
        ADOCommand1.Parameters.ParamByName('num').Value:= StrToFloat(Edit4.Text);
        ADOCommand1.Parameters.ParamByName('tpdoc').Value:= combobox1.Text;
               ADOCommand1.Parameters.ParamByName('tel').Value:= StrToFloat(Edit6.Text);
 //ADOCommand1.Parameters.ParamByName('email').Value:= Edit7.Text;
                     ADOCommand1.Parameters.ParamByName('repleg').Value:= Edit5.Text;
                     ADOCommand1.Parameters.ParamByName('pco').Value:= Edit8.Text;

                ADOCommand1.Parameters.ParamByName('vact').Value:= StrToFloat(Edit9.Text);
                 ADOCommand1.Parameters.ParamByName('acpas').Value:= StrToFloat(Edit10.Text);
                  ADOCommand1.Parameters.ParamByName('vpatri').Value:= StrToFloat(Edit11.Text);



         ADOCommand1.Execute;



//Adoquery1.ExecSQL;

   adotable1.Close;
                 adotable1.Open;
       datasource1.Enabled:=false;
 datasource1.Enabled:=true;
 dbgrid1.DataSource:=DataSource1;
 dbgrid1.refresh;
         end;

end.



