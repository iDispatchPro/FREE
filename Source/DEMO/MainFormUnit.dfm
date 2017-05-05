object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FREE Demo'
  ClientHeight = 481
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 64
    Height = 13
    Caption = 'Expression:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 59
    Width = 42
    Height = 13
    Caption = 'Source:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 267
    Width = 45
    Height = 13
    Caption = 'Results:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object HelloWorldButton: TButton
    Left = 552
    Top = 19
    Width = 149
    Height = 25
    Caption = 'Hello world!'
    TabOrder = 0
    OnClick = HelloWorldButtonClick
  end
  object eExpression: TEdit
    Left = 104
    Top = 21
    Width = 425
    Height = 21
    TabOrder = 1
  end
  object mSource: TMemo
    Left = 104
    Top = 56
    Width = 425
    Height = 193
    TabOrder = 2
  end
  object mResults: TMemo
    Left = 104
    Top = 264
    Width = 425
    Height = 193
    TabOrder = 3
  end
  object InvalidExpressionButton: TButton
    Left = 552
    Top = 81
    Width = 149
    Height = 25
    Caption = 'Invalid expression'
    TabOrder = 4
    OnClick = InvalidExpressionButtonClick
  end
  object FindAllButton: TButton
    Left = 552
    Top = 50
    Width = 149
    Height = 25
    Caption = 'Find all'
    TabOrder = 5
    OnClick = FindAllButtonClick
  end
  object ComplexExpressionButton: TButton
    Left = 552
    Top = 112
    Width = 149
    Height = 25
    Caption = 'Complex expression'
    TabOrder = 6
    OnClick = ComplexExpressionButtonClick
  end
  object ReplaceButton: TButton
    Left = 552
    Top = 143
    Width = 149
    Height = 25
    Caption = 'Replace'
    TabOrder = 7
    OnClick = ReplaceButtonClick
  end
  object SubstituteButton: TButton
    Left = 552
    Top = 174
    Width = 149
    Height = 25
    Caption = 'Substitute'
    TabOrder = 8
    OnClick = SubstituteButtonClick
  end
end
