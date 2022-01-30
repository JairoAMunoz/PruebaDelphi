object Form1: TForm1
  Left = 193
  Top = 182
  Width = 723
  Height = 373
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
    Left = 32
    Top = 96
    Width = 325
    Height = 29
    Caption = 'Ingrese nombre del empleado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 160
    Width = 272
    Height = 29
    Caption = 'Ingresar horas trabajadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 152
    Top = 24
    Width = 452
    Height = 29
    Caption = 'Programa Salario  Semanal del Empleado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 392
    Top = 96
    Width = 201
    Height = 41
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 392
    Top = 152
    Width = 201
    Height = 41
    TabOrder = 1
  end
  object Button1: TButton
    Left = 312
    Top = 224
    Width = 105
    Height = 49
    Caption = 'Calcular Salario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
