object Form1: TForm1
  Left = 325
  Top = 208
  Width = 837
  Height = 470
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 32
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 80
    Top = 72
    Width = 35
    Height = 13
    Caption = 'nombre'
  end
  object Label3: TLabel
    Left = 48
    Top = 112
    Width = 92
    Height = 13
    Caption = 'Tipo de documento'
  end
  object Label4: TLabel
    Left = 40
    Top = 152
    Width = 93
    Height = 13
    Caption = 'Numero documento'
  end
  object Label5: TLabel
    Left = 8
    Top = 192
    Width = 130
    Height = 13
    Caption = 'Nombre representante legal'
  end
  object Label6: TLabel
    Left = 80
    Top = 232
    Width = 42
    Height = 13
    Caption = 'Tel'#233'fono'
  end
  object Label7: TLabel
    Left = 80
    Top = 272
    Width = 30
    Height = 13
    Caption = 'e- mail'
  end
  object Label8: TLabel
    Left = 48
    Top = 304
    Width = 84
    Height = 13
    Caption = 'Persona contacto'
  end
  object Label9: TLabel
    Left = 64
    Top = 336
    Width = 62
    Height = 13
    Caption = 'Valor Activos'
  end
  object Label10: TLabel
    Left = 64
    Top = 368
    Width = 63
    Height = 13
    Caption = 'Valor pasivos'
  end
  object Label11: TLabel
    Left = 56
    Top = 400
    Width = 75
    Height = 13
    Caption = 'Valor patrimonio'
  end
  object Edit1: TEdit
    Left = 160
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 160
    Top = 152
    Width = 89
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 160
    Top = 184
    Width = 89
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 160
    Top = 224
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 160
    Top = 264
    Width = 89
    Height = 21
    TabOrder = 5
  end
  object Edit8: TEdit
    Left = 160
    Top = 296
    Width = 89
    Height = 21
    TabOrder = 6
  end
  object Edit9: TEdit
    Left = 160
    Top = 328
    Width = 81
    Height = 21
    TabOrder = 7
  end
  object Edit10: TEdit
    Left = 160
    Top = 368
    Width = 89
    Height = 21
    TabOrder = 8
  end
  object Edit11: TEdit
    Left = 160
    Top = 400
    Width = 89
    Height = 21
    TabOrder = 9
  end
  object Button1: TButton
    Left = 304
    Top = 16
    Width = 89
    Height = 41
    Caption = 'conexion'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 16
    Width = 81
    Height = 41
    Caption = 'Guardar'
    Enabled = False
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 400
    Top = 72
    Width = 81
    Height = 41
    Caption = 'Eliminar'
    TabOrder = 12
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 280
    Top = 128
    Width = 481
    Height = 241
    TabStop = False
    BiDiMode = bdLeftToRight
    DataSource = DataSource1
    ParentBiDiMode = False
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object GroupBox1: TGroupBox
    Left = 504
    Top = 16
    Width = 225
    Height = 97
    Caption = 'Edici'#243'n'
    TabOrder = 14
    object Button5: TButton
      Left = 24
      Top = 32
      Width = 73
      Height = 49
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 120
      Top = 32
      Width = 73
      Height = 49
      Caption = 'Modificar'
      Enabled = False
      TabOrder = 1
      OnClick = Button6Click
    end
  end
  object Button3: TButton
    Left = 304
    Top = 72
    Width = 89
    Height = 41
    Caption = 'Nuevo'
    TabOrder = 15
    OnClick = Button3Click
  end
  object DBNavigator1: TDBNavigator
    Left = 440
    Top = 376
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 16
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 112
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Text = 'cedula'
    Items.Strings = (
      'cedula'
      'tarjeta de identidad'
      'pasaporte'
      'cedula de extranjeria ')
  end
  object Button7: TButton
    Left = 736
    Top = 56
    Width = 81
    Height = 41
    Caption = 'Actualizar datos'
    TabOrder = 18
    OnClick = Button7Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=Clientes;Data Source=DESKT' +
      'OP-PUAI1HC\SQLEXPRESS01;Use Procedure for Prepare=1;Auto Transla' +
      'te=True;Packet Size=4096;Workstation ID=DESKTOP-PUAI1HC;Initial ' +
      'File Name="";Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False;MARS Connection=False;DataTypeCompatibi' +
      'lity=0;Trust Server Certificate=False;Server SPN="";Application ' +
      'Intent=READWRITE;MultiSubnetFailover=False;Use FMTONLY=False;Aut' +
      'hentication="";Access Token="";TransparentNetworkIPResolution=Tr' +
      'ue'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 776
    Top = 168
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'cliente'
    Left = 776
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 776
    Top = 208
  end
  object ADOCommand1: TADOCommand
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=Clientes;Data Source=DESKT' +
      'OP-PUAI1HC\SQLEXPRESS01;Use Procedure for Prepare=1;Auto Transla' +
      'te=True;Packet Size=4096;Workstation ID=DESKTOP-PUAI1HC;Initial ' +
      'File Name="";Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False;MARS Connection=False;DataTypeCompatibi' +
      'lity=0;Trust Server Certificate=False;Application Intent=READWRI' +
      'TE;MultiSubnetFailover=False;Use FMTONLY=False;Authentication=""' +
      ';TransparentNetworkIPResolution=True;'
    Parameters = <>
    Left = 776
    Top = 280
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=Clientes;Data Source=DESKT' +
      'OP-PUAI1HC\SQLEXPRESS01;Use Procedure for Prepare=1;Auto Transla' +
      'te=True;Packet Size=4096;Workstation ID=DESKTOP-PUAI1HC;Initial ' +
      'File Name="";Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False;MARS Connection=False;DataTypeCompatibi' +
      'lity=0;Trust Server Certificate=False;Application Intent=READWRI' +
      'TE;MultiSubnetFailover=False;Use FMTONLY=False;Authentication=""' +
      ';TransparentNetworkIPResolution=True;'
    Parameters = <>
    Left = 776
    Top = 320
  end
  object ADODataSet1: TADODataSet
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=Clientes;Data Source=DESKT' +
      'OP-PUAI1HC\SQLEXPRESS01;Use Procedure for Prepare=1;Auto Transla' +
      'te=True;Packet Size=4096;Workstation ID=DESKTOP-PUAI1HC;Initial ' +
      'File Name="";Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False;MARS Connection=False;DataTypeCompatibi' +
      'lity=0;Trust Server Certificate=False;Application Intent=READWRI' +
      'TE;MultiSubnetFailover=False;Use FMTONLY=False;Authentication=""' +
      ';TransparentNetworkIPResolution=True;'
    DataSource = DataSource1
    Parameters = <>
    Left = 776
    Top = 360
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Integrated Security=SSPI;Persist Security ' +
      'Info=False;User ID="";Initial Catalog=Clientes;Data Source=DESKT' +
      'OP-PUAI1HC\SQLEXPRESS01;Use Procedure for Prepare=1;Auto Transla' +
      'te=True;Packet Size=4096;Workstation ID=DESKTOP-PUAI1HC;Initial ' +
      'File Name="";Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False;MARS Connection=False;DataTypeCompatibi' +
      'lity=0;Trust Server Certificate=False;Application Intent=READWRI' +
      'TE;MultiSubnetFailover=False;Use FMTONLY=False;Authentication=""' +
      ';TransparentNetworkIPResolution=True;'
    Parameters = <>
    Left = 744
    Top = 392
  end
end
