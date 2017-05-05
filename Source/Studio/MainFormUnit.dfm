object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 678
  ClientWidth = 1126
  Color = clWhite
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 241
    Top = 0
    Width = 8
    Height = 678
    AutoSnap = False
    MinSize = 200
    ResizeStyle = rsUpdate
    ExplicitLeft = 201
    ExplicitHeight = 621
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 249
    Top = 8
    Width = 869
    Height = 662
    Margins.Left = 0
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ParentColor = True
    TabOrder = 0
    ExplicitWidth = 749
    object Splitter3: TSplitter
      Left = 0
      Top = 385
      Width = 869
      Height = 8
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      MinSize = 65
      ResizeStyle = rsUpdate
      ExplicitLeft = -7
      ExplicitTop = 208
      ExplicitWidth = 527
    end
    object Splitter4: TSplitter
      Left = 0
      Top = 65
      Width = 869
      Height = 8
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      MinSize = 65
      ResizeStyle = rsUpdate
      ExplicitLeft = -3
      ExplicitTop = 156
      ExplicitWidth = 527
    end
    object Panel4: TPanel
      Left = 0
      Top = 393
      Width = 869
      Height = 269
      Margins.Left = 0
      Margins.Top = 0
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 0
      ExplicitWidth = 749
      object Panel10: TPanel
        Left = 3
        Top = 0
        Width = 865
        Height = 269
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel9'
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 745
        object TextTitle: TPanel
          Left = 0
          Top = 0
          Width = 865
          Height = 30
          Align = alTop
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'Text'
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 745
        end
        object Text: TRichEdit
          Left = 0
          Top = 30
          Width = 865
          Height = 238
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentColor = True
          ParentFont = False
          PlainText = True
          ScrollBars = ssBoth
          TabOrder = 1
          WordWrap = False
          Zoom = 100
          OnChange = TextChange
          OnSelectionChange = TextSelectionChange
          ExplicitWidth = 745
        end
        object Panel20: TPanel
          Left = 0
          Top = 268
          Width = 865
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 2
          ExplicitWidth = 745
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 3
        Height = 269
        Align = alLeft
        BevelOuter = bvNone
        Caption = ' '
        Color = clMedGray
        ParentBackground = False
        TabOrder = 1
      end
      object Panel17: TPanel
        Left = 868
        Top = 0
        Width = 1
        Height = 269
        Align = alRight
        BevelOuter = bvNone
        Caption = ' '
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = 748
      end
    end
    object Panel12: TPanel
      Left = 0
      Top = 0
      Width = 869
      Height = 65
      Margins.Left = 0
      Margins.Top = 0
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 1
      ExplicitWidth = 749
      object Panel13: TPanel
        Left = 3
        Top = 0
        Width = 865
        Height = 64
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel9'
        ParentColor = True
        TabOrder = 0
        ExplicitWidth = 745
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 865
          Height = 30
          Align = alTop
          BevelEdges = [beBottom]
          BevelKind = bkFlat
          BevelOuter = bvNone
          Caption = 'Expression'
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitWidth = 745
          object aShowExpressionTree: TSpeedButton
            AlignWithMargins = True
            Left = 839
            Top = 3
            Width = 24
            Height = 24
            Hint = 'Show expression tree'
            Margins.Left = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alRight
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              E9FF0000E9FF0000E9FF00000000000000000000000000000000000000000000
              0000000000000000000000000000656565FF00000000656565FF000000000000
              E9FFB1B1FFFF0000E9FF00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              E9FF0000E9FF0000E9FF00000000000000000000000000000000000000000000
              0000000000000000000000000000656565FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000FF6E
              3EFFFF6E3EFFFF6E3EFF00000000000000000000000000000000000000000000
              0000000000000000000000000000595959FF00000000595959FF00000000FF6E
              3EFFFFB73EFFFF6E3EFF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000FF6E
              3EFFFF6E3EFFFF6E3EFF00000000000000000000000000000000000000000000
              0000000000000000000000000000595959FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000006E
              94FF006E94FF006E94FF00000000000000000000000000000000000000000000
              0000000000000000000000000000595959FF00000000656565FF00000000006E
              94FF77FFEEFF006E94FF00000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000006E
              94FF006E94FF006E94FF00000000000000000000000000000000000000000000
              0000000000000000000000000000595959FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000009411FF009411FF009411FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000009411FF5BFF6FFF009411FF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000009411FF009411FF009411FF00000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = aShowExpressionTreeClick
            ExplicitLeft = 496
            ExplicitHeight = 22
          end
          object aShowTestSets: TSpeedButton
            AlignWithMargins = True
            Left = 812
            Top = 3
            Width = 24
            Height = 24
            Hint = 'Show test set'
            Margins.Left = 1
            Margins.Right = 2
            Margins.Bottom = 1
            Align = alRight
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000AC7867FFAC78
              67FFAC7867FFAB7867FFAB7867FFAB7867FFAA7867FFAA7868FFAA7868FFA978
              68FFA97868FFA97868FFA97968FFA97969FFA87969FFAC7867FFB27866FFF9F3
              EFFFF9F3EEFFFAF3EEFFFAF3EEFFFAF3EDFFF9F3EEFFF9F3EEFFF9F2EEFFF9F2
              EDFFF9F2EDFFF9F2EDFFF9F2EEFFF9F3EDFFF9F2EDFFB07663FFB37A68FFFAF3
              EFFF77665EFF432F25FF796860FFA0938CFFF5EEEAFFF9F3EFFF9F928DFF5D4C
              45FFC5BCB6FF433129FF433129FFD3CAC4FFF9F2EEFFB17865FFB47B69FFFAF5
              F0FF74635BFF74625BFFEDE6E1FF4F3B32FF817068FFFAF3EFFFF9F3F0FFFAF3
              EFFF6B5B54FF37241CFFDFD8D2FFF9F3EFFFF9F3EFFFB27966FFB57D6BFFFAF5
              F1FFFAF5F1FFFAF4F1FFFAF5F0FF82716AFF463127FFCBC2BCFFFAF4F0FFFAF4
              F0FF877871FF46342BFFFAF4F0FFFAF4EFFFFAF4EFFFB37A68FFB7806DFFFAF6
              F2FFFAF6F2FFFAF6F1FFFAF5F1FFAC9F98FF483229FF92837BFFFAF5F0FFFAF5
              F0FF54413BFF53423BFFE1DAD4FFFAF5F1FFFAF4F0FFB57C69FFB8826FFFFBF6
              F3FFFBF7F3FFFBF6F2FFFBF6F2FFD4CBC7FF4A352AFF67544BFFEEE8E3FF6253
              4AFF3C2920FFAFA49EFF897A73FF62504AFFFAF5F1FFB67E6CFFB98471FFFBF7
              F3FFFCF7F3FFFBF7F4FFFBF7F3FFF5F0ECFF523D33FF4C352CFFE6DFDCFFFBF6
              F2FFFBF6F2FFFBF6F2FFFBF6F2FFFBF6F2FFFAF5F2FFB7806DFFBB8673FFFCF8
              F5FFFCF8F5FFFCF8F4FFFBF7F4FF4F392FFF50382FFF4E382FFF4E382EFF4E36
              2DFFFBF7F4FFFBF7F3FFFBF6F3FFFBF6F3FFFBF7F3FFB8826FFFBC8975FFFCF8
              F6FFFCF9F5FFFBF8F5FFFCF8F5FFFCF8F5FFD6CEC9FF503A30FF78665DFFFBF8
              F5FFFCF7F4FFFBF7F5FFFBF8F4FFFBF7F4FFFBF7F4FFBA8472FFBE8B77FFFCF9
              F7FFFCF9F6FFFCF9F6FFFCF8F6FFFCF9F6FFFCF8F6FF918279FF543E34FFEAE4
              E0FF827067FF827068FFFCF8F5FFFCF8F5FFFCF8F4FFBB8773FFBF8C79FFFDFA
              F8FFFCFAF7FFFCFAF7FFFDFAF7FFFCF9F7FFFDFAF6FFFBF7F4FFAA9E97FF8270
              68FF533E33FF7E6D65FFFCF9F6FFFCF9F6FFFCF8F6FFBD8976FFC08F7CFFFDFA
              F8FFFDFAF8FFFCFBF8FFFCFAF7FFFDFAF7FFFCFAF8FFFCFAF8FFFDF9F7FFFCFA
              F8FFFDF9F7FFFCF9F7FFFCF9F6FFFCF9F6FFFCF9F7FFBE8B77FFCD9F8EFFCD9F
              8EFFCC9F8EFFCC9F8EFFCC9F8DFFCC9E8DFFCB9E8DFFCB9D8CFFCB9D8CFFCA9C
              8BFFCA9C8BFFCA9B8AFFC99A89FFC89A88FFC89988FFCD9F8EFF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = aShowTestSetsClick
            ExplicitLeft = 496
            ExplicitHeight = 22
          end
        end
        object Expression: TRichEdit
          Left = 0
          Top = 30
          Width = 865
          Height = 34
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HideSelection = False
          ParentColor = True
          ParentFont = False
          PlainText = True
          ScrollBars = ssBoth
          TabOrder = 1
          Zoom = 100
          OnChange = ExpressionChange
          OnSelectionChange = ExpressionSelectionChange
          ExplicitWidth = 745
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 3
        Height = 64
        Align = alLeft
        BevelOuter = bvNone
        Caption = ' '
        Color = clMedGray
        ParentBackground = False
        TabOrder = 1
      end
      object Panel18: TPanel
        Left = 868
        Top = 0
        Width = 1
        Height = 64
        Align = alRight
        BevelOuter = bvNone
        Caption = ' '
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 2
        ExplicitLeft = 748
      end
      object Panel21: TPanel
        Left = 0
        Top = 64
        Width = 869
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Caption = ' '
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 3
        ExplicitWidth = 749
      end
    end
    object Panel25: TPanel
      Left = 0
      Top = 73
      Width = 869
      Height = 312
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      ParentColor = True
      TabOrder = 2
      ExplicitWidth = 749
      object Splitter_ExpressionTree: TSplitter
        Left = 586
        Top = 0
        Width = 8
        Height = 312
        AutoSnap = False
        MinSize = 65
        ResizeStyle = rsUpdate
        ExplicitLeft = 328
        ExplicitTop = 2
      end
      object Splitter_OptimizedTree: TSplitter
        Left = 289
        Top = 0
        Width = 8
        Height = 312
        AutoSnap = False
        MinSize = 65
        ResizeStyle = rsUpdate
        ExplicitLeft = 262
        ExplicitTop = -3
      end
      object Place_ExpressionTree: TPanel
        Left = 0
        Top = 0
        Width = 289
        Height = 312
        Margins.Left = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Place_ExpressionTree'
        ParentColor = True
        TabOrder = 0
        object Panel11: TPanel
          Left = 3
          Top = 0
          Width = 285
          Height = 311
          Align = alClient
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          ExplicitWidth = 365
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 285
            Height = 30
            Align = alTop
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'Expression tree'
            Color = clMenu
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 365
            object aShowHiddenOperations: TSpeedButton
              AlignWithMargins = True
              Left = 259
              Top = 3
              Width = 24
              Height = 24
              Hint = 'Show hidden operations'
              Margins.Left = 1
              Margins.Right = 2
              Margins.Bottom = 1
              Align = alRight
              AllowAllUp = True
              GroupIndex = 2
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000002204040470060606B0050606D4050505EB020304EB0102
                02D4010101B00101017000000022000000000000000000000000000000000000
                000A09090980141418EB272626FF3F3D3CFF525151FF5D5B5BFF5C5A59FF4D4B
                4BFF353331FF171616FF060606EB020202800000000A00000000000000141616
                16B2494747FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
                ABFFE8DCD3FFC7BCB4FF867D78FF32302EFF080808B2000000141313138D8C89
                86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A557FFDB9E4EFFD99B4BFFD89A
                4AFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF76716DFF0808088D1C1B1B75FFFF
                FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95DFFE2A960FFDEA558FFDA9D
                4CFFE1B175FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF161515751E1E1E75FFFF
                FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB63FFDEA1
                52FFE4B67CFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF191818751D1D1D8DA3A2
                A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC61FFE5AA
                5DFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF1212128D000000143232
                32B27B7B7BFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
                CAFFF5F4F4FFDBDADAFFA8A7A6FF646464FF232324B200000014000000000000
                000A1B1B1B80585858EB6F6F6FFF828283FF919296FF999C9FFF989A9DFF8C8E
                91FF787979FF626262FF484949EB161616800000000A00000000000000000000
                0000000000000101012216161670343434B0474747D4575757EB555555EB4343
                43D4303030B01313137001010122000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = aShowHiddenOperationsClick
              ExplicitLeft = 496
              ExplicitHeight = 22
            end
          end
          object ExpressionTree: TTreeView
            Left = 0
            Top = 30
            Width = 285
            Height = 281
            Align = alClient
            BorderStyle = bsNone
            HideSelection = False
            Images = ImageList
            Indent = 19
            MultiSelect = True
            ParentColor = True
            ReadOnly = True
            RowSelect = True
            StateImages = ImageList
            TabOrder = 1
            OnChange = ExpressionTreeChange
            ExplicitWidth = 365
          end
        end
        object Panel22: TPanel
          Left = 0
          Top = 0
          Width = 3
          Height = 311
          Align = alLeft
          BevelOuter = bvNone
          Caption = ' '
          Color = clMedGray
          ParentBackground = False
          TabOrder = 1
        end
        object Panel23: TPanel
          Left = 288
          Top = 0
          Width = 1
          Height = 311
          Align = alRight
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 2
          ExplicitLeft = 368
        end
        object Panel24: TPanel
          Left = 0
          Top = 311
          Width = 289
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 3
          ExplicitWidth = 369
        end
      end
      object Panel26: TPanel
        Left = 594
        Top = 0
        Width = 275
        Height = 312
        Margins.Left = 0
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel2'
        ParentColor = True
        TabOrder = 1
        ExplicitLeft = 377
        ExplicitWidth = 372
        object Panel27: TPanel
          Left = 3
          Top = 0
          Width = 271
          Height = 311
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel9'
          ParentColor = True
          TabOrder = 0
          ExplicitWidth = 368
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 271
            Height = 30
            Align = alTop
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'Results'
            Color = clMenu
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 368
            object aMultithreaded: TSpeedButton
              AlignWithMargins = True
              Left = 245
              Top = 3
              Width = 24
              Height = 24
              Hint = 'Multithreaded test'
              Margins.Left = 1
              Margins.Right = 2
              Margins.Bottom = 1
              Align = alRight
              AllowAllUp = True
              GroupIndex = 2
              Down = True
              Flat = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                191919FF00FF191919FF00FF191919FF00FF191919FF00FF191919FF00FF1919
                19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF191919FF00FF191919FF00FF19
                1919FF00FF191919FF00FF191919FF00FF191919FF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF191919FF00FF191919FF00FF191919FF
                00FF191919FF00FF191919FF00FF191919FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF191919FF00FF191919FF00FF191919FF00FF191919FF00FF191919FF00
                FF191919FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                191919FF00FF191919FF00FF191919FF00FF191919FF00FF191919FF00FF1919
                19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF191919FF00FF191919FF00FF19
                1919FF00FF191919FF00FF191919FF00FF191919FF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = aMultithreadedClick
              ExplicitLeft = 496
              ExplicitHeight = 22
            end
          end
          object Results: TTreeView
            Left = 0
            Top = 30
            Width = 271
            Height = 281
            Align = alClient
            BorderStyle = bsNone
            HideSelection = False
            Images = ImageList
            Indent = 19
            MultiSelect = True
            ParentColor = True
            ReadOnly = True
            RowSelect = True
            StateImages = ImageList
            TabOrder = 1
            OnChange = ResultsChange
            ExplicitWidth = 368
          end
        end
        object Panel29: TPanel
          Left = 0
          Top = 0
          Width = 3
          Height = 311
          Align = alLeft
          BevelOuter = bvNone
          Caption = ' '
          Color = clMedGray
          ParentBackground = False
          TabOrder = 1
        end
        object Panel30: TPanel
          Left = 274
          Top = 0
          Width = 1
          Height = 311
          Align = alRight
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 2
          ExplicitLeft = 371
        end
        object Panel31: TPanel
          Left = 0
          Top = 311
          Width = 275
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 3
          ExplicitWidth = 372
        end
      end
      object Place_OptimizedTree: TPanel
        Left = 297
        Top = 0
        Width = 289
        Height = 312
        Margins.Left = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 2
        ExplicitLeft = 8
        object Panel5: TPanel
          Left = 3
          Top = 0
          Width = 285
          Height = 311
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel9'
          ParentColor = True
          TabOrder = 0
          ExplicitWidth = 365
          object Panel32: TPanel
            Left = 0
            Top = 0
            Width = 285
            Height = 30
            Align = alTop
            BevelEdges = [beBottom]
            BevelKind = bkFlat
            BevelOuter = bvNone
            Caption = 'Optimized tree'
            Color = clMenu
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 259
              Top = 3
              Width = 24
              Height = 24
              Hint = 'Show hidden operations'
              Margins.Left = 1
              Margins.Right = 2
              Margins.Bottom = 1
              Align = alRight
              AllowAllUp = True
              GroupIndex = 2
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000002204040470060606B0050606D4050505EB020304EB0102
                02D4010101B00101017000000022000000000000000000000000000000000000
                000A09090980141418EB272626FF3F3D3CFF525151FF5D5B5BFF5C5A59FF4D4B
                4BFF353331FF171616FF060606EB020202800000000A00000000000000141616
                16B2494747FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
                ABFFE8DCD3FFC7BCB4FF867D78FF32302EFF080808B2000000141313138D8C89
                86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A557FFDB9E4EFFD99B4BFFD89A
                4AFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF76716DFF0808088D1C1B1B75FFFF
                FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95DFFE2A960FFDEA558FFDA9D
                4CFFE1B175FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF161515751E1E1E75FFFF
                FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB63FFDEA1
                52FFE4B67CFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF191818751D1D1D8DA3A2
                A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC61FFE5AA
                5DFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF1212128D000000143232
                32B27B7B7BFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
                CAFFF5F4F4FFDBDADAFFA8A7A6FF646464FF232324B200000014000000000000
                000A1B1B1B80585858EB6F6F6FFF828283FF919296FF999C9FFF989A9DFF8C8E
                91FF787979FF626262FF484949EB161616800000000A00000000000000000000
                0000000000000101012216161670343434B0474747D4575757EB555555EB4343
                43D4303030B01313137001010122000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = aShowHiddenOperationsClick
              ExplicitLeft = 496
              ExplicitHeight = 22
            end
          end
          object OptimizedTree: TTreeView
            Left = 0
            Top = 30
            Width = 285
            Height = 281
            Align = alClient
            BorderStyle = bsNone
            HideSelection = False
            Images = ImageList
            Indent = 19
            MultiSelect = True
            ParentColor = True
            ReadOnly = True
            RowSelect = True
            StateImages = ImageList
            TabOrder = 1
            OnChange = ExpressionTreeChange
            ExplicitWidth = 365
          end
        end
        object Panel33: TPanel
          Left = 0
          Top = 0
          Width = 3
          Height = 311
          Align = alLeft
          BevelOuter = bvNone
          Caption = ' '
          Color = clMedGray
          ParentBackground = False
          TabOrder = 1
        end
        object Panel34: TPanel
          Left = 288
          Top = 0
          Width = 1
          Height = 311
          Align = alRight
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 2
        end
        object Panel35: TPanel
          Left = 0
          Top = 311
          Width = 289
          Height = 1
          Align = alBottom
          BevelOuter = bvNone
          Caption = ' '
          Color = clMenuBar
          ParentBackground = False
          TabOrder = 3
        end
      end
    end
  end
  object Place_TestSet: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 233
    Height = 662
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 0
    Margins.Bottom = 8
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel2'
    ParentColor = True
    TabOrder = 1
    object Panel9: TPanel
      Left = 3
      Top = 0
      Width = 229
      Height = 661
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel9'
      ParentColor = True
      TabOrder = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 229
        Height = 30
        Align = alTop
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        Caption = 'Test set'
        Color = clMenu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object aAddTestSet: TSpeedButton
          AlignWithMargins = True
          Left = 176
          Top = 3
          Width = 24
          Height = 24
          Hint = 'Add test'
          Margins.Left = 1
          Margins.Right = 2
          Margins.Bottom = 1
          Align = alRight
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            780F00780FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF00780F00780FFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            780F00780FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF00780F00780FFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00780F00780F00780F00780F00
            780F00780F00780F00780F00780F00780FFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00780F00780F00780F00780F00780F00780F00780F00780F00780F0078
            0FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            780F00780FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF00780F00780FFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            780F00780FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF00780F00780FFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = aAddTestSetClick
          ExplicitLeft = 496
          ExplicitHeight = 22
        end
        object aUpdateTestSet: TSpeedButton
          AlignWithMargins = True
          Left = 203
          Top = 3
          Width = 24
          Height = 24
          Hint = 'Update test'
          Margins.Left = 1
          Margins.Right = 2
          Margins.Bottom = 1
          Align = alRight
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000007E4C
            69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF7E4C69B70000000000000000AF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
            93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FFAF6A93FF00000000000000000000000000000000000000000000
            00000000000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
            93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
            0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
            93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
            0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000824F
            6DBDAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
            93FFAF6A93FF00000000AF6A93FFAF6A93FF824F6DBD00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = aUpdateTestSetClick
          ExplicitLeft = 212
          ExplicitTop = 2
        end
        object aDeleteTestSet: TSpeedButton
          AlignWithMargins = True
          Left = 149
          Top = 3
          Width = 24
          Height = 24
          Hint = 'Remove test'
          Margins.Left = 1
          Margins.Right = 2
          Margins.Bottom = 1
          Align = alRight
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF
            00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
            00FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF00
            00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FF0000FF0000FF0000FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF
            00FFFF00FFFF00FF0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF
            0000FF0000FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000
            FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = aDeleteTestSetClick
          ExplicitTop = 2
        end
      end
      object TestSet: TTreeView
        Left = 0
        Top = 30
        Width = 229
        Height = 631
        Align = alClient
        BevelEdges = [beLeft, beTop, beBottom]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        HideSelection = False
        Images = ImageList
        Indent = 19
        MultiSelect = True
        MultiSelectStyle = [msControlSelect, msShiftSelect, msSiblingOnly]
        ParentColor = True
        ReadOnly = True
        RightClickSelect = True
        RowSelect = True
        SortType = stText
        TabOrder = 1
        OnChange = TestSetChange
        OnChanging = TestSetChanging
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 3
      Height = 661
      Align = alLeft
      BevelOuter = bvNone
      Caption = ' '
      Color = clMedGray
      ParentBackground = False
      TabOrder = 1
    end
    object Panel16: TPanel
      Left = 232
      Top = 0
      Width = 1
      Height = 661
      Align = alRight
      BevelOuter = bvNone
      Caption = ' '
      Color = clMenu
      ParentBackground = False
      TabOrder = 2
    end
    object Panel19: TPanel
      Left = 0
      Top = 661
      Width = 233
      Height = 1
      Align = alBottom
      BevelOuter = bvNone
      Caption = ' '
      Color = clMenu
      ParentBackground = False
      TabOrder = 3
    end
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    Left = 80
    Top = 424
    Bitmap = {
      494C010127002900040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131354131313540000
      0019000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000A0000000F0000
      0010000000100000001000000010000000110000001100000011000000110000
      001100000011000000100000000A000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001D1313
      1354000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000964463BC1B6836DFFB782
      6CFFB5816CFFB5806BFFB5806BFFB4806BFFB47D6AFFB47D69FFB37C68FFB37C
      67FFB27C68FFB27B67FF614238C20000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000013131354131313540202
      0229000000000000000013131354131313541313135413131354131313541313
      1354131313541313135400000000000000000000000EBC8B75FFF8F2EDFFF6EF
      EBFFF6EEEAFFF6EFEAFFF6EFEAFFF6EEE9FFF6EEE9FFF5EEE9FFF6EDE8FFF5EE
      E8FFF5EDE8FFF6EFEBFFBB8773FF0000000E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A0A0A0FFA0A0A0FFA0A0A0FF00000000000000000000
      00000000000000000000000000000000000000000000000000000000001C1313
      1354000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000EBE8D78FFF8F3EFFFF5EE
      E9FFF6EEE9FFF5EEEBFFF4F0ECFFEBE8E5FFEEE9E8FFF5EFEAFFF5ECE7FFF4EC
      E6FFF4EBE6FFF6F0ECFFBD8A75FF0000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000979797FF979797FF979797FF979797FF979797FF000000000000
      0000000000000000000000000000000000000000000013131354131313540000
      0018000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000DC08F7BFFFAF3F1FFF7EF
      EAFFF6F0EBFFF2EEECFFCEBDB2FFA36341FFB08C79FFEBE8E5FFF5EEE9FFF5ED
      E7FFF5ECE7FFF7F1EDFFBD8B77FF0000000E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF0000
      0000000000000000000000000000000000000000000000000010000000140000
      000D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000CC2917DFFFAF5F3FFF8F1
      EDFFF5F1EFFFD3C2B8FFB57D58FFE2BD8BFFAB714CFFC7B5ABFFF1EDEBFFF5EE
      E9FFF5EEE9FFF8F3EDFFBF8E7AFF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000858585FF858585FF858585FFCCCCCCFF858585FF858585FF858585FF0000
      000000000000000000000000000000000000000000003A3A3AFF3A3A3AFF3A3A
      3AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000CC39581FFFBF8F4FFF6F3
      F1FFD9C8BFFFB9845DFFE4C18FFFE6C393FFDCB687FFA36C4EFFDDD6D2FFF6F0
      EDFFF6EFEAFFF9F3EFFFC0907CFF0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7BFF7B7B7BFFCCCCCCFFCCCCCCFFCCCCCCFF7B7B7BFF7B7B7BFF0000
      00000000000000000000000000000000000000000000010101493A3A3AFF0606
      067A00000000000000003A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A
      3AFF3A3A3AFF3A3A3AFF00000000000000000000000BC59785FFFAF7F5FFE1D1
      C7FFBE8D69FFEACCA5FFF1DEBFFFF5E4CAFFEBCCA1FFCEA275FFAB7E69FFE8E6
      E3FFF6F2EEFFF9F3F1FFC29380FF0000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000737373FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF737373FF0000
      00000000000000000000000000000000000000000000000000000101014E3A3A
      3AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000AC69A88FFFBF9F7FFDBC5
      B8FFC99F81FFE4CCB4FFCAA082FFB98462FFEAD5BBFFEBCEA4FFC4936AFFB897
      86FFEEEAE8FFF8F3F0FFC39683FF0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000989898FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF989898FF0000
      000000000000000000000000000000000000000000003A3A3AFF3A3A3AFF0101
      0147000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000AC89D8BFFFCFAF8FFFAF7
      F6FFD9C3B4FFC1957AFFD4BDAFFFDED3CDFFBC8E70FFEBD7BEFFEED3ADFFBB86
      60FFC4AEA2FFF0ECE9FFC49885FF0000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000989898FFCCCCCCFFCCCCCCFFCCCCCCFF989898FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000009CAA08EFFFBFAF8FFFCF9
      F6FFFAF7F6FFF8F5F3FFF9F6F4FFF8F6F4FFE8DFDAFFBC8E70FFE5CDB5FFF1DE
      BDFFBA8561FFE9E6E3FFC59A88FF0000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000989898FFCCCCCCFF989898FF00000000000000000000
      0000000000000000000000000000000000000000000013131354131313541313
      1354000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000008CCA391FFFCFBFAFFFCF8
      F5FFFCF8F5FFFBF7F4FFFBF7F4FFFAF6F5FFFAF7F6FFEBE5E1FFC0967AFFC598
      79FFD1C3BAFFF1EFECFFC99E8CFF000000090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000989898FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000017131313540000
      0017000000000000000013131354131313541313135413131354131313541313
      13541313135413131354000000000000000000000007CDA593FFFDFBFAFFFCF9
      F7FFFCF9F7FFFCF8F6FFFBF9F5FFFBF8F5FFFBF8F5FFFAF8F6FFF4F2F1FFEEEC
      EBFFF4F2F0FFFAF7F6FFCBA18FFF000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000016131313540000
      0002000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000006CEA796FFFDFBFAFFFEFB
      FAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBF9FFFCFBFBFFFAF9
      F8FFFBFAF8FFFCFAF8FFCCA391FF000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131354131313540000
      0004000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000004745E55C1CFA998FFCFA8
      98FFCFA997FFCFA997FFCFA897FFCEA796FFCFA796FFCFA896FFCFA796FFCEA6
      96FFCEA794FFCEA694FF735C53C1000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000004000000050000
      0006000000060000000600000006000000060000000600000006000000060000
      0006000000060000000600000004000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E9FF0000E9FF0000
      E9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0E45581A2199F01D22A2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A3FF1D22A3FF1D22A3FF1D22A3FF1D22
      A3FF1D22A3FF1D22A3FF1A219AEF0B0D415D0000000000000000000000000000
      000000000000656565FF00000000656565FF000000000000E9FFB1B1FFFF0000
      E9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000272CD4EB2329C4FF1D22A2FF1D22
      A2FF1D22A2FF3F43A6FF3034A4FF1D22A2FF1D22A2FF272CA4FF3E42A6FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1A2199EF0000000000000000000000000000
      000000000000000000000000000000000000000000000000E9FF0000E9FF0000
      E9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9BD59FF0000000000000000000000000000
      00000000000000000000000000000000000000000000181818FF181818FF1818
      18FF000000000000000000000000000000000000000000000000000000000000
      0000181818FF181818FF181818FF000000002A31E7FF2A31E7FF2329C4FF1D22
      A2FF1D22A2FF8687AEFF9F9FB1FF1F24A2FF1D22A2FF4C4FA8FFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      000000000000656565FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6B64AFFF6B64AFFF6B64AFF00000000000000000000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2329
      C4FF1D22A2FF3539A5FFB2B2B3FF575AA8FF1D22A2FF4C4FA8FFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      00000000000000000000000000000000000000000000FF6E3EFFFF6E3EFFFF6E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000F4AF3BFFF4AF3BFFF4AF3BFFF4AF3BFFF4AF3BFF000000000000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2329C4FF1D22A2FF7678ACFFA0A1B1FF2025A2FF4C4FA8FFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      000000000000595959FF00000000595959FF00000000FF6E3EFFFFB73EFFFF6E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000F1A72CFFF1A72CFFF1A72CFFF1A72CFFF1A72CFFF1A72CFFF1A72CFF0000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF2329C4FF2B2FA4FFACACB2FF5A5CA9FF4C4FA8FFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      00000000000000000000000000000000000000000000FF6E3EFFFF6E3EFFFF6E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000EEA01DFFEEA01DFFEEA01DFFFFCC99FFEEA01DFFEEA01DFFEEA01DFF0000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF2A31E7FF2329C4FF8183ADFFA5A6B2FF8B8CAFFFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      000000000000595959FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EB990EFFEB990EFFFFCC99FFFFCC99FFFFCC99FFEB990EFFEB990EFF0000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000181818FF181818FF00000000181818FF181818FF00000000181818FF1818
      18FF0000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF2A31E7FFAEB1F6FFCECED7FF6D6FABFF7A7CADFFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      00000000000000000000000000000000000000000000006E94FF006E94FF006E
      94FF000000000000000000000000000000000000000000000000000000000000
      0000E99200FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFE99200FF0000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000181818FF181818FF00000000181818FF181818FF00000000181818FF1818
      18FF0000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF5F64EDFFFFFFFFFF6166EDFF2329C4FF4C4FA8FFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      000000000000595959FF00000000656565FF00000000006E94FF77FFEEFF006E
      94FF000000000000000000000000000000000000000000000000000000000000
      0000FF9932FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFF9932FF0000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF969AF3FFECEDFDFF2A31E7FF2A31E7FF5C60CAFFAFAFB2FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      00000000000000000000000000000000000000000000006E94FF006E94FF006E
      94FF000000000000000000000000000000000000000000000000000000000000
      000000000000FF9932FFFFCC99FFFFCC99FFFFCC99FFFF9932FF000000000000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF9B9FF4FFE1E2FCFF2A31E7FF2A31E7FF6D71EFFFD3D3D7FF1D22
      A2FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      000000000000595959FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9932FFFFCC99FFFF9932FF00000000000000000000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF7B80F0FFF8F9FEFF3137E8FF2A31E7FF6D71EFFFF9F9FEFF2329
      C4FF1D22A2FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF9932FF0000000000000000000000000000
      00000000000000000000000000000000000000000000181818FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF383FE9FFF1F1FDFF979BF3FF2A31E7FF6D71EFFFF9F9FEFF2A31
      E7FF2329C4FF1D22A2FF1D22A2FF1D22A2FF0000000000000000000000000000
      0000009411FF009411FF009411FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818FF181818FF1818
      18FF000000000000000000000000000000000000000000000000000000000000
      0000181818FF181818FF181818FF000000002A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF2A31E7FF6166EDFFEDEDFDFFE4E5FCFFE4E5FCFFF9F9FEFF2A31
      E7FF2A31E7FF2329C4FF1D22A2FF1D22A2FF0000000000000000000000000000
      0000009411FF5BFF6FFF009411FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000272DD4EA2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF2A31E7FF2A31E7FF3037E8FF585DECFF5F64EDFF5C61EDFF2A31
      E7FF2A31E7FF2A31E7FF2329C4FF1A2199F00000000000000000000000000000
      0000009411FF009411FF009411FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E104952272DD4EA2A31E7FF2A31
      E7FF2A31E7FF2A31E7FF2A31E7FF2A31E7FF2A31E7FF2A31E7FF2A31E7FF2A31
      E7FF2A31E7FF2A31E7FF272CD4EB0C0E4558CC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF9965FFFF0000000000000000000000000000
      0000000000000000000000000000E93900FFE93900FF00000000000000000000
      000000000000000000000000000000000000CC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFAC7867FFAC7867FFAC7867FFAB78
      67FFAB7867FFAB7867FFAA7867FFAA7868FFAA7868FFA97868FFA97868FFA978
      68FFA97968FFA97969FFA87969FFAC7867FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF9965FFFF0000000000000000000000000000
      00000000000000000000E93900FFFEA206FFFEA206FFE93900FF000000000000
      000000000000000000000000000000000000CC65FFFFCC65FFFF75B2E6FF3C91
      DBFF318CD9FF318CD9FF318CD9FF318CD9FF318CD9FF318CD9FF318CD9FF318C
      D9FF318BD9FF378FDAFFCC65FFFFCC65FFFFB27866FFF9F3EFFFF9F3EEFFFAF3
      EEFFFAF3EEFFFAF3EDFFF9F3EEFFF9F3EEFFF9F2EEFFF9F2EDFFF9F2EDFFF9F2
      EDFFF9F2EEFFF9F3EDFFF9F2EDFFB07663FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF000000FF9965FFFF9965FFFF9965FFFF0000000000000000000000000000
      000000000000E93900FFFEA206FFFFBC4EFFFFBC4EFFFEA206FFE93900FF0000
      000000000000000000000000000000000000CC65FFFF4699DDFFDEF1FAFFA8DD
      F4FF9EDBF4FF96DAF3FF8ED8F3FF86D7F3FF7ED4F2FF78D3F2FF70D2F1FF6AD0
      F1FF68CFF1FFC2EAF8FF3E95DBFFCC65FFFFB37A68FFFAF3EFFF77665EFF432F
      25FF796860FFA0938CFFF5EEEAFFF9F3EFFF9F928DFF5D4C45FFC5BCB6FF4331
      29FF433129FFD3CAC4FFF9F2EEFFB17865FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF0000000000000000000000000000
      0000E93900FFFEA206FFFFBC4EFF000000FF000000FFFFBC4EFFFEA206FFE939
      00FF00000000000000000000000000000000CC65FFFF3997DBFFEFFAFEFFA1E9
      F9FF91E5F8FF81E1F7FF70DEF6FF62DAF5FF53D7F4FF46D3F3FF37D0F2FF2CCD
      F1FF24CBF0FFCAF2FBFF3997DBFFCC65FFFFB47B69FFFAF5F0FF74635BFF7462
      5BFFEDE6E1FF4F3B32FF817068FFFAF3EFFFF9F3F0FFFAF3EFFF6B5B54FF3724
      1CFFDFD8D2FFF9F3EFFFF9F3EFFFB27966FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF000000000000000000000000E939
      00FFFEA206FFFFC25CFFFFC25CFF000000FF000000FFFFC25CFFFFC25CFFFEA2
      06FFE93900FF000000000000000000000000CC65FFFF3A9DDBFFF2FAFDFFB3ED
      FAFFA4E9F9FF95E6F8FF85E2F7FF75DEF6FF63DBF5FF56D7F4FF48D4F3FF39D1
      F2FF2ECEF1FFCCF2FBFF399BDBFFCC65FFFFB57D6BFFFAF5F1FFFAF5F1FFFAF4
      F1FFFAF5F0FF82716AFF463127FFCBC2BCFFFAF4F0FFFAF4F0FF877871FF4634
      2BFFFAF4F0FFFAF4EFFFFAF4EFFFB37A68FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF0000000000000000E93900FFFEA2
      06FFFFC76BFFFFC76BFFFFC76BFF000000FF000000FFFFC76BFFFFC76BFFFFC7
      6BFFFEA206FFE93900FF0000000000000000CC65FFFF39A3DBFFF6FCFEFFC8F2
      FCFFB9EFFBFFACECFAFF9CE8F9FF8BE3F7FF7BE0F6FF6ADCF6FF5CD9F5FF4ED6
      F4FF43D3F3FFD0F3FCFF39A2DBFFCC65FFFFB7806DFFFAF6F2FFFAF6F2FFFAF6
      F1FFFAF5F1FFAC9F98FF483229FF92837BFFFAF5F0FFFAF5F0FF54413BFF5342
      3BFFE1DAD4FFFAF5F1FFFAF4F0FFB57C69FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF00000000E93900FFFEA206FFFFCD
      7AFFFFCD7AFFFFCD7AFFFFCD7AFF000000FF000000FFFFCD7AFFFFCD7AFFFFCD
      7AFFFFCD7AFFFEA206FFE93900FF00000000CC65FFFF39A8DBFFFEFFFFFFF8FD
      FFFFF6FDFFFFF5FCFFFFF3FCFEFFD8F6FCFF94E6F8FF85E3F7FF75DFF6FF67DB
      F5FF5BD8F4FFD7F4FCFF39A7DBFFCC65FFFFB8826FFFFBF6F3FFFBF7F3FFFBF6
      F2FFFBF6F2FFD4CBC7FF4A352AFF67544BFFEEE8E3FF62534AFF3C2920FFAFA4
      9EFF897A73FF62504AFFFAF5F1FFB67E6CFF9965FFFF9965FFFF9965FFFF9965
      FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF000000FF9965FFFFE93900FFFEA206FFFFD289FFFFD2
      89FFFFD289FFFFD289FFFFD289FF000000FF000000FFFFD289FFFFD289FFFFD2
      89FFFFD289FFFFD289FFFEA206FFE93900FFCC65FFFF37ADDBFFE8F6FBFF94D4
      EFFF88CEEEFF72C1E9FFC9E9F6FFF2FCFEFFF3FCFEFFF2FCFEFFF0FCFEFFEFFB
      FEFFEEFBFEFFFEFFFFFF3AAEDBFFCC65FFFFB98471FFFBF7F3FFFCF7F3FFFBF7
      F4FFFBF7F3FFF5F0ECFF523D33FF4C352CFFE6DFDCFFFBF6F2FFFBF6F2FFFBF6
      F2FFFBF6F2FFFBF6F2FFFAF5F2FFB7806DFF9965FFFF9965FFFF9965FFFF0000
      00FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF000000FFE93900FFFEA206FFFFD898FFFFD8
      98FFFFD898FFFFD898FFFFD898FF000000FF000000FFFFD898FFFFD898FFFFD8
      98FFFFD898FFFFD898FFFEA206FFE93900FFCC65FFFF3EAEDCFFF1FAFDFF94DE
      F5FF93DCF4FF81D5F2FF68CAEDFF6ACBEAFF85D3EFFF80D2EFFF79D0EFFF75CF
      EEFF70CFEEFFE9F7FBFF3CB2DCFFCC65FFFFBB8673FFFCF8F5FFFCF8F5FFFCF8
      F4FFFBF7F4FF4F392FFF50382FFF4E382FFF4E382EFF4E362DFFFBF7F4FFFBF7
      F3FFFBF6F3FFFBF6F3FFFBF7F3FFB8826FFF9965FFFF9965FFFF9965FFFF9965
      FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF000000FF9965FFFF00000000E93900FFFEA206FFFFDD
      A7FFFFDDA7FFFFDDA7FFFFDDA7FFFFDDA7FFFFDDA7FFFFDDA7FFFFDDA7FFFFDD
      A7FFFFDDA7FFFEA206FFE93900FF00000000CC65FFFF40B4DCFFF7FCFEFF8EE4
      F8FF91DEF5FF9FE0F5FFACE1F6FFEFFBFEFFF4FDFEFFF3FCFEFFF1FCFEFFEFFB
      FEFFEEFBFEFFFAFDFFFF57BCE0FFCC65FFFFBC8975FFFCF8F6FFFCF9F5FFFBF8
      F5FFFCF8F5FFFCF8F5FFD6CEC9FF503A30FF78665DFFFBF8F5FFFCF7F4FFFBF7
      F5FFFBF8F4FFFBF7F4FFFBF7F4FFBA8472FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF0000000000000000E93900FFFEA2
      06FFFFE3B5FFFFE3B5FFFFE3B5FF000000FF000000FFFFE3B5FFFFE3B5FFFFE3
      B5FFFEA206FFE93900FF0000000000000000CC65FFFF3AB5DBFFFDFEFEFFFEFF
      FFFFFEFEFFFFFDFEFFFFFEFFFFFFEAF7FBFF6DC8E5FF6DC9E4FF6DC9E4FF6DC9
      E4FF7CCFE7FF84D0E8FFCC65FFFFCC65FFFFBE8B77FFFCF9F7FFFCF9F6FFFCF9
      F6FFFCF8F6FFFCF9F6FFFCF8F6FF918279FF543E34FFEAE4E0FF827067FF8270
      68FFFCF8F5FFFCF8F5FFFCF8F4FFBB8773FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF000000000000000000000000E939
      00FFFEA206FFFFE8C4FFFFE8C4FF000000FF000000FFFFE8C4FFFFE8C4FFFEA2
      06FFE93900FF000000000000000000000000CC65FFFF58C2E0FF60C3E2FF62C4
      E3FF62C4E3FF62C4E3FF61C4E3FF55C0E0FFCC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFBF8C79FFFDFAF8FFFCFAF7FFFCFA
      F7FFFDFAF7FFFCF9F7FFFDFAF6FFFBF7F4FFAA9E97FF827068FF533E33FF7E6D
      65FFFCF9F6FFFCF9F6FFFCF8F6FFBD8976FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF0000000000000000000000000000
      0000E93900FFFEA206FFFFEED3FFFFEED3FFFFEED3FFFFEED3FFFEA206FFE939
      00FF00000000000000000000000000000000CC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFC08F7CFFFDFAF8FFFDFAF8FFFCFB
      F8FFFCFAF7FFFDFAF7FFFCFAF8FFFCFAF8FFFDF9F7FFFCFAF8FFFDF9F7FFFCF9
      F7FFFCF9F6FFFCF9F6FFFCF9F7FFBE8B77FF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF000000FF9965FFFF9965FFFF0000000000000000000000000000
      000000000000E93900FFFEA206FFFFF3E1FFFFF3E1FFFEA206FFE93900FF0000
      000000000000000000000000000000000000CC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCD9F8EFFCD9F8EFFCC9F8EFFCC9F
      8EFFCC9F8DFFCC9E8DFFCB9E8DFFCB9D8CFFCB9D8CFFCA9C8BFFCA9C8BFFCA9B
      8AFFC99A89FFC89A88FFC89988FFCD9F8EFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF000000FF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF000000FF9965FFFF9965FFFF9965FFFF0000000000000000000000000000
      00000000000000000000E93900FFFEA206FFFEA206FFE93900FF000000000000
      000000000000000000000000000000000000CC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFFCC65
      FFFFCC65FFFFCC65FFFFCC65FFFFCC65FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965FFFF9965
      FFFF9965FFFF9965FFFF9965FFFF9965FFFF0000000000000000000000000000
      0000000000000000000000000000E93900FFE93900FF00000000000000000000
      000000000000000000000000000000000000000000003B3B3BFF3B3B3BFF0505
      054E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000020000000A0000
      000F000000110000001100000012000000120000001300000013000000130000
      0014000000130000000D00000003000000000000000000000000070707583B3B
      3BFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000030000000C0000
      0013000000140000001400000015000000150000001500000016000000160000
      00150000000E0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005D4035BAB37B67FFB37A
      66FFB27A65FFB27965FFB27763FFB17864FFB17864FFB17664FFB17662FFB075
      63FFB07563FF604137C50000000C00000000000000003B3B3BFF3B3B3BFF0E0E
      0E7E00000000000000003B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B
      3BFF3B3B3BFF3B3B3BFF0000000000000000000000000000000B13335FC31F57
      ABFF1E55ABFF1E55ABFF1D54AAFF1B53ABFF1C53A9FF1B51A9FF1A51A8FF1A50
      A8FF0E2C5CC60000000D0000000000000000000000070000000B0000000C0000
      000C0000000C0000000D0000000D0000000D0000000E0000000E0000000E0000
      000E0000000F0000000E000000090000000200000000B67E6AFFFDFBFAFFFBF7
      F4FFFBF6F2FFFBF5F2FFFAF5F1FFFBF4EFFFF9F3EEFFF9F2EEFFFAF2ECFFF8F0
      EBFFF9F0EAFFB17765FF00000012000000000000000000000000060606553B3B
      3BFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000F2662B2FF73CA
      F6FF5FC0F4FF73CAF6FF7BCCF6FF76CAF6FF71C7F5FF6EC5F4FF68C3F4FF64C0
      F3FF1C52A9FF0000001200000000000000005C443DBEAC8071FFAC7E70FFAB7E
      6FFFAA7D6FFFAA7C6EFFA97B6EFFA87B6DFFA87A6CFFA8796CFFA7796BFFA778
      6AFFA67869FFA57769FF584039C10000000900000000B6816EFFFDFBFBFFC38E
      78FFC28D78FFC28D77FFC18C76FFC18B75FFC08A75FFC08A74FFBF8A73FFC088
      73FFF9F1ECFFB37967FF0000001300000000000000003B3B3BFF3B3B3BFF0505
      054B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E2966B0FB7ECB
      F2FF51A3DBFF2F6BB2FF2E6AB1FF2D69B1FF2C68B1FF2C67B0FF2B66B0FF2964
      B0FF183A66C90000000C0000000000000000B08474FFFFFFFFFFF9F2EEFFF8F2
      EEFFF9F2EEFFF8F1EEFFF9F1EDFFF8F1EEFFF8F1EDFFF8F1EDFFF8F1ECFFF8F0
      ECFFF8F0ECFFF8F0ECFFA7786BFF0000000C00000000B98471FFFEFCFBFFF1E6
      DEFFF1E5DDFFF0E4DDFFF0E4DDFFF1E4DCFFF0E4DCFFF0E2DBFFF0E2DAFFF0E2
      DAFFFAF2EEFFB57C6AFF00000012000000000000000000000010000000140000
      000D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000080D213A9A66A6
      D9FF89D6F9FF4B94CFFF071A40BA0000002A0000001400000011000000110000
      00110000000B000000030000000000000000B28778FFFFFFFFFF63433AFFF9F4
      F0FF5F4037FFF9F3F0FF593C33FFF9F2EFFF53362EFFF8F2EFFF4D322BFFF8F1
      EEFF482E28FFF9F1EDFFA97A6DFF0000000C00000000BC8774FFFEFDFCFFC594
      7EFFC5937DFFC4907CFFC38F7BFFC4907AFFC48F7AFFC38F79FFC28E77FFC28D
      77FFFAF4EFFFB7816DFF0000001100000000000000003B3B3BFF3B3B3BFF3B3B
      3BFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000010000000B1025
      409F6BACDCFF8DD8F9FF57A8E0FF0C2350C50000001800000002000000000000
      000000000000000000000000000000000000B48A7AFFFFFFFFFFFAF5F2FFFAF5
      F2FFFAF4F1FFF9F5F1FFF9F5F1FFFAF4F0FFFAF4F0FFFAF4F0FFFAF3EFFFF9F3
      F0FFF9F3EFFFF9F3EFFFAB7D6FFF0000000B00000000BE8B79FFFEFDFCFFF3E8
      E2FFF2E7E1FFF2E7E1FFF2E6DFFFF2E6DEFFF1E6DEFFF1E6DEFFF1E5DEFFF1E5
      DDFFFAF5F1FFBA8570FF000000100000000000000000040404493B3B3BFF0D0D
      0D7A00000000000000003B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B
      3BFF3B3B3BFF3B3B3BFF00000000000000000000000000000000000000020000
      000D102741A166ABDCFF77D1F8FF58A9DFFF081838A800000007000000000000
      000000000000000000000000000000000000B78D7EFFFFFFFFFFDDB281FFDCAF
      7DFFDAAC7AFFD8A976FFD7A672FFD5A36FFFD4A16CFFFAF5F2FF5E6EDDFF5D6C
      DCFF5B6BDCFFFAF4F0FFAD8171FF0000000A00000000C1907EFFFEFEFDFFC998
      84FFC89884FFC79782FFC79682FFC79681FFC69480FFC5947EFFC5917DFFC692
      7CFFFBF6F3FFBB8974FF0000000F0000000000000000000000000505054E3B3B
      3BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000B05102E9F4C8DC5FF7AD4F9FF6DB4E1FF132E4CAA00000007000000000000
      000000000000000000000000000000000000B98F82FFFFFFFFFFDFB584FFDEB1
      81FFDCAF7DFFDAAC79FFD8A976FFD7A671FFD6A36EFFFBF6F4FF6071DEFF5E6F
      DDFF5C6DDCFFFAF5F3FFAF8374FF0000000900000000C49482FFFEFEFDFFF4EB
      E5FFF4EAE5FFF4EAE4FFF4E9E4FFF3E8E3FFF3E8E3FFF2E8E1FFF2E7E1FFF2E6
      DFFFFCF7F4FFBE8B78FF0000000F00000000000000003B3B3BFF3B3B3BFF0404
      0447000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000090612
      2E9B5594CAFF84DBFAFF79BEE6FF20446AC20000001600000002000000000000
      000000000000000000000000000000000000BB9284FFFFFFFFFFE0B788FFDFB4
      84FFDDB181FFDCAE7CFFDAAB78FFD9A975FFD7A671FFFBF8F6FF6373DEFF6171
      DDFF5F6FDDFFFBF7F4FFB28778FF0000000800000000C69787FFFEFEFEFFCC9F
      8AFFCC9F8AFFCB9E89FFCB9C87FFCA9C88FFC99A85FFC99985FFC99884FFC898
      83FFFDF9F7FFC18E7CFF0000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000506132C94639B
      CBFF8FE2FCFF81C3E8FF1B3A58B30000001E0000000D0000000B0000000C0000
      000B00000007000000020000000000000000BE9487FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB4897AFF0000000600000000C99B8AFFFFFEFEFFFBF7
      F4FFFBF6F4FFFBF6F4FFFCF6F3FFF5EBE7FFF5E9E6FFF4EAE5FFF4EAE4FFF3EA
      E4FFFDFAF8FFC39382FF0000000D00000000000000003B3B3BFF3B3B3BFF3B3B
      3BFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000073F84C2FBA1E3
      F9FF66B9E4FF3676BCFF3271B7FF306DB5FF2D69B2FF2B66B0FF2962ADFF2860
      ACFF143159BF0000000700000000000000006B534BBFC09788FFBF9688FFBF95
      87FFBE9486FFBD9386FFBD9384FFBC9284FFBB9184FFBA9182FFBA8F81FFB88E
      81FFB88D80FFB88D7EFF664E45C00000000400000000CBA08DFFFFFEFEFF127B
      D4FF106ACBFF0D5EC4FFFCF7F5FFCEA18DFFCDA08CFFCDA08BFFCC9F8AFFCC9D
      88FFFDFBF9FFC69786FF0000000C0000000000000000040404473B3B3BFF0404
      044700000000000000003B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B
      3BFF3B3B3BFF3B3B3BFF00000000000000000000000000000007448FCBFFC7F4
      FEFFC4F2FEFFC3F2FEFFBFF0FEFFBCF0FEFFB9EEFDFFB5EDFDFFB2ECFCFFAEEB
      FCFF3576BBFF0000000900000000000000000000000100000002000000020000
      0002000000020000000300000003000000030000000300000003000000040000
      00040000000400000004000000030000000100000000CDA191FFFFFFFEFF158E
      E0FF127ED8FF1070D0FFFCF8F7FFF5EDE9FFF5ECE8FFF4ECE8FFF4ECE7FFF5EC
      E7FFFDFCFAFFC89B8AFF0000000B0000000000000000040404453B3B3BFF0000
      0007000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004245574C14199
      D0FF4198D0FF4298CFFF4297CFFF4296CFFF4295CEFF4194CEFF4192CDFF4090
      CCFF21496EC30000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFA493FFFFFFFFFF18A1
      EAFF1694E1FF1385DAFFFDFAF8FFD0A692FFD0A591FFD0A390FFCFA48FFFCEA3
      8FFFFEFCFCFFCB9D8DFF0000000B00000000000000003B3B3BFF3B3B3BFF0000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000030000
      0006000000060000000600000006000000070000000700000007000000080000
      0007000000050000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1A796FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFEFEFFFEFEFEFFFEFE
      FEFFFEFEFDFFCDA191FF00000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000745C53BED2A898FFD2A8
      98FFD1A897FFD1A897FFD1A797FFD0A696FFD0A696FFD0A695FFD0A595FFCFA5
      95FFCFA494FF735B53C200000006000000000000000000000000000000020000
      0007010402390A25199E154C35DD1E6948FF1D6947FF175236E30C2C1EAB0106
      0449000000090000000200000000000000000000000000000000000000000000
      000100000004000000090000000B0000000C0000000C00000009000000050000
      0001000000000000000000000000000000005E4036BCB07561FFAF7461FFB073
      60FFAF735FFFAF735FFFAF725FFFAE735EFFAE725EFFAE725EFFAE715DFFAD71
      5DFF5C3B31BD0000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000100A24
      199D1F714DFF219A6CFF21B481FF23C78FFF23C890FF22B581FF219C6EFF1F71
      4EFF0E3222B50000001900000003000000000000000000000000000000020000
      0009140D0B6355372DBD8B584AEDA46756FF8B574AED55362DBE140D0A630000
      000A00000003000000000000000000000000B57B68FFFAF5F2FFF9F5F2FFF9F4
      F1FFF9F4F1FFF9F4F1FFF9F3F0FFF8F2F0FFF8F2EFFFF8F2EEFFF8F2EEFFF7F1
      EDFFAE715EFF0000000900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000000E113A28C0208A
      60FF24C58EFF25C992FF3BD4A6FF44D7ABFF44D7ACFF3BD3A3FF26CA93FF24C1
      8BFF20885FFF144A31D500000018000000020000000000000004010100225135
      2BB8B68575FFDCC4BBFFEFE3DDFFF7EFEAFFEEE2DCFFDCC3BAFFB48372FF5033
      2AB801010023000000040000000000000000B77E6CFFFAF7F4FF65554EFFF6EE
      EBFFBAAFA9FF65564EFFBAAEA9FFF5EEEAFFB9AFA9FF65554EFFBAAFA9FFF9F2
      EFFFAF735FFF0000000800000000000000000000000000000000000000001A1A
      1AAA3B3B3BFF01010122000000000000000000000000040404443B3B3BFF1515
      1599000000000000000000000000000000000000000509221795228A62FF26C9
      93FF25CA94FF26CB95FF1C9966FF0C844FFF0C824DFF1D9867FF28CB95FF26CB
      95FF28CB95FF228F65FF0D3021AF0000000900000003040302318E6051EAD8BD
      B4FFF6EEEAFFF7F0EBFFF7EFEBFFF7F0EBFFF7EFEAFFF6EFEAFFF6EDE9FFD6BA
      B1FF8A5C4CEA020101260000000300000000B8826FFFFBF8F6FF685851FFF7EF
      ECFF695851FFF7EFEBFF695851FFF7EFEBFF685951FFF6EFEBFF695851FFF9F5
      F1FFBE9182FF0000000F0000000D0000000A0000000000000000000000000909
      09663B3B3BFF0D0D0D77000000000000000000000000111111883B3B3BFF0606
      0655000000000000000000000000000000000002012D207351FA2AC693FF28CB
      95FF2ACC97FF2ECF9BFF0B804DFFFFFFFFFFFFFFFFFF0C7D4BFF31D09CFF2CCE
      99FF29CB96FF2CC996FF237B57FF010604470000000C744D40D4E0CAC1FFFBF1
      E8FFFBF8F5FFF7F0ECFFF7F0ECFFF7F0EBFFF7F0EBFFF6F0EBFFFBF8F5FFE4E5
      F9FFDCC4BBFF52352BB80000000900000001BA8571FFFCF9F8FF6C5C54FFF7F1
      EDFF6B5B54FFF7F1ECFF6C5B54FFF7F0ECFF6C5C54FFF7F0EBFF6B5B54FFF9F6
      F4FFCFB3AAFF050A1880284389FA121D37A00000000000000000000000000000
      0011343434EE3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF343434EE0000
      0000000000000000000000000000000000000920168F2CA177FF2DCD98FF52DB
      B2FF58DEB8FF59DFB8FF0C7E4CFFF5EDE7FFF6EDE7FF0C7C4AFF5AE0B9FF59DF
      B8FF55DDB6FF2FCF9BFF2FA67CFF0E3122AF1A110F68C19587FFF9EEE5FFE2A5
      67FFEECDACFFF8F1ECFFF7F0ECFFF7F0ECFFF8F1ECFFF7F0ECFF9CA2E8FF4754
      DAFFE4E3F3FFBC8F7EFF160E0C6400000004BC8774FFFDFBFAFF6E5D56FFF8F1
      EEFFBFB3AFFF6E5D56FFBEB3AEFFF7F1EDFFBEB3AEFF6E5D56FFCAC2BEFFF2F1
      F0FF777490FF376AB2FF54AFF9FF2F4C8FF30000000000000000000000000000
      0000202020BB3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF1A1A1AAA0000
      000000000000000000000000000000000000134730CA34C193FF37D2A2FF0B72
      44FF0B7748FF0C7A49FF0B7B4AFFF7EFEAFFF8F0EBFF0C7A49FF0B7647FF0B73
      43FF0B6E42FF3AD4A4FF35C395FF195D42E55B3D35BBE2CBC5FFEDC8A4FFE1A3
      64FFE8BB90FFF8F1EDFFF7F1EDFFF8F1EDFFF7F1EDFFF8F1ECFF7D86E1FF4250
      DAFF8F97E8FFDDC4BBFF593A31BC00000007BE8A77FFFDFCFBFFF8F3F0FFF8F3
      EFFFF8F3EFFFF9F4F2FFF6F2F0FFF3F0EEFFEFECEBFFF1EDECFFEDEBE8FF8D9A
      B9FF4076BCFF63BCFFFF4079C3FF0B12217E0000000000000000000000000000
      00000D0D0D773B3B3BFF0D0D0D77000000000D0D0D773B3B3BFF090909660000
      000000000000000000000000000000000000196143E945D1A4FF3FD6A8FF1D8D
      61FF99B4A3FFFCFBFBFFFFFFFFFFF8F4F0FFF9F4F0FFFFFFFFFFFCFBFBFF9BB7
      A6FF1E8F62FF42D9AAFF48D5ABFF1F7551FA996A5AECF4ECE8FFE6B079FFE3A6
      68FFF4E5D7FFF8F2EEFF8D807BFF2B1B15FF8C807BFFF8F2EDFFD9D5EAFF4453
      DBFF5865E0FFF0E4DEFF916052EA00000008C08D7AFFFDFDFCFFF8F4F0FFF9F3
      F0FFF9F6F4FFF1EDECFFBFA8A2FF9B746AFF8A5A4CFF956F64FF867985FF4B7E
      C1FF70C5FFFF4882C7FF0A1121810000000A0000000000000000000000000000
      0000010101223B3B3BFF262626CC000000002C2C2CDD343434EE000000110000
      000000000000000000000000000000000000195E42E35BD8B3FF44D9ACFF45D5
      A9FF1C764DFFCACAC1FFF8F3EFFFF9F6F3FFFAF7F4FFF9F6F2FFCACCC3FF1F7A
      51FF46D6ABFF47DBAFFF61DFBBFF217B57FCB6806DFFFAF7F5FFE6AE72FFE5AB
      6EFFFAF3EFFFF9F3EFFF513A32FF664D46FF35231FFFF8F2EFFFF6F1F1FF4855
      DDFF4C5BDEFFF6F0ECFFA87261FA00000008C1907EFFFEFDFDFFF9F4F2FFF9F6
      F3FFF2EFEDFFAC8A7EFFB79589FFE3D4CDFFF4ECE6FFE4D4CDFFAF8E83FF8374
      76FF5088C9FF0A12217E00000009000000010000000000000000000000000000
      000000000000202020BB3B3B3BFF060606553B3B3BFF202020BB000000000000
      000000000000000000000000000000000000134733C366D0B1FF4FDEB2FF4DDE
      B3FF41C39BFF397A59FFEBE3DEFFFAF8F6FFFBF9F6FFECE7E3FF3C7D5CFF42C4
      9CFF51E0B7FF51E0B5FF6BD7B7FF1B6145DF9C6D60ECF6EEEBFFE8B782FFE6AF
      73FFF9EEE3FFF9F4F0FFA1918BFF4D332CFF47322CFFC8BDB9FFF2F1F7FF6F7A
      E1FF5F6BE1FFF2E7E3FF946657EA00000007C39281FFFEFEFEFFF9F5F3FFF8F5
      F4FFC7B1AAFFBE9D93FFF1E4DDFFCDA384FFBD875BFFCFA786FFF0E3D8FFB292
      87FF847079FF0000001100000001000000000000000000000000000000000000
      0000000000000D0D0D773B3B3BFF343434EE3B3B3BFF0D0D0D77000000000000
      000000000000000000000000000000000000081D147D5AB798FF60E3BEFF53E1
      B9FF56E3BCFF31A079FF749983FFF5F2EEFFF6F4F1FF779D86FF32A178FF59E5
      BFFF57E3BBFF62E4C0FF64C1A5FF0D30239E60433BB9E5D2CBFFF0D1AFFFE8B3
      78FFEFC9A0FFFDFCFBFFFAF6F4FFF9F4F1FFDAD3CEFF614A42FFB1A9BAFFC2C1
      E9FFADAFE9FFE2CDC5FF5C4137BA00000005C49583FFFFFEFEFFF9F6F4FFF6F4
      F3FFB28C80FFEDE2DEFFCC9B83FFD9955EFFF6B06CFFDBA268FFCDA382FFECE0
      DBFF6F4E43E30000000A00000000000000000000000000000000000000000000
      000000000000010101223B3B3BFF3B3B3BFF3B3B3BFF01010122000000000000
      0000000000000000000000000000000000000001011F2A8462F58CE8CEFF5AE3
      BDFF5CE5BFFF5DE6BFFF217A55FFB1BCB0FFB4BFB3FF207955FF5FE7C3FF5EE8
      C1FF5EE5BFFF91EBD4FF2E946EFC0105033619121061CCA597FFFBF4ECFFEBBB
      85FFEAB67EFFF0CBA3FFFAEFE2FFFFFDFCFFFCF8F3FFD8C7BAFF624943FFA69F
      B6FFF4F0F3FFC79D91FF17100E6000000003C59686FFFFFFFFFFFAF7F4FFF5F4
      F3FFB38879FFFAF6F5FFBC7D5FFFF9D8C7FFFCDFCEFFF3AF6BFFBE8960FFF9F4
      F0FF946A5BFA0000000A00000000000000000000000000000000000000000000
      000000000000000000002C2C2CDD3B3B3BFF262626CC00000000000000000000
      00000000000000000000000000000000000000000002081F177C4BAE8CFF97F0
      DAFF66E8C4FF61EAC4FF5AD7B4FF2A6C4AFF296A49FF5CD9B7FF66EAC8FF6DEC
      C9FF9EF3DCFF51B493FF0D32249A00000005000000087C5B4FCFE3CEC5FFF8EA
      DAFFEDBD88FFEBBA84FFECBC83FFECBC83FFEEC292FFF4DFCBFFD7C2B1FF664F
      46FFE1C9C1FF593F37B40000000600000000C79889FFFFFFFFFFFFFFFFFFFAFA
      FAFFBD988CFFF0E7E3FFCB9A84FFDCAC96FFFCDFD0FFD8945EFFCDA182FFEFE6
      E2FF7E5C51E20000000800000000000000000000000000000000000000000000
      000000000000000000000D0D0D773B3B3BFF0D0D0D7700000000000000000000
      0000000000000000000000000000000000000000000000000005103B2BA54FB3
      93FFA3EDDAFF95F2D9FF86EFD6FF4FB795FF50B595FF87F0D7FF96F2DDFFA0EC
      D8FF4BB592FF144D38B80000000C00000001000000010403022AA27B6AEADEC4
      BAFFFBF2ECFFF3D7B7FFEFC595FFEDBD88FFEEC595FFF4D9BCFFFAF4F1FFDCC1
      B8FF9D7165E90201011F00000001000000006E544BBEC89A8AFFC89A89FFDCC3
      BAFFC9ABA0FFCCAEA4FFF7EFEBFFCEA08AFFBC7B5BFFCEA28BFFF6EEE9FFC8AA
      A0FF291E1B820000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020820
      17782D9A72F769C9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1C9FF6CCEAFFF2EA2
      79F90C30238F00000008000000010000000000000000000000010101011B5C45
      3CB2CDA596FFEAD9D3FFF8F1EFFFFEFDFDFFF8F1EFFFEAD9D2FFCBA292FF5C43
      3AB30101011B0000000200000000000000000000000000000001000000010000
      0002000000096D554DC4CFB2A8FFF0E7E4FFFEFEFEFFEFE6E4FFCEB2A8FF6A52
      49C50000000A0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010001011B09261C7E186047C2207D5CDA218361DF19684DC80B2B20850003
      0229000000030000000100000000000000000000000000000000000000010000
      0003120D0B5045342E9B7B5D51CCB98C79F97B5B50CC45342D9B120D0B510000
      0004000000010000000000000000000000000000000000000000000000000000
      00000000000100000008281F1C787B6158CFB58E82F9785D54CD271E1B790000
      0009000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000200000008000000110000001100000008000000020000
      0000000000000000000000000000000000000000000000000000000000020000
      0007010402390A25199E154C35DD1E6948FF1D6947FF175236E30C2C1EAB0106
      0449000000090000000200000000000000000000000000000000000000020000
      0007010402390A25199E154C35DD1E6948FF1D6947FF175236E30C2C1EAB0106
      0449000000090000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000070F0B0A6073574CED6E5047ED0D090863000000080000
      0000000000000000000000000000000000000000000000000002000000100A24
      199D1F714DFF219A6CFF21B481FF23C78FFF23C890FF22B581FF219C6EFF1F71
      4EFF0E3222B50000001900000003000000000000000000000002000000100A24
      199D1F714DFF219A6CFF21B481FF2ECC97FF2ECD99FF22B581FF219C6EFF1F71
      4EFF0E3222B500000019000000030000000000000000000000040000000F0000
      000F000000070000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000F7A5F54EAD1C2BBFFB2998CFF6B4E45EB000000120000
      000100000000000000000000000000000000000000010000000E113A28C0208A
      60FF24C58EFF25C992FF43D7ABFF39D3A1FF27CB94FF25CA92FF26CA93FF24C1
      8BFF20885FFF144A31D50000001800000002000000010000000E113A28C0208A
      60FF24C58EFF25C992FF28CC97FF2DB083FF2CAF82FF29CC95FF26CA93FF24C1
      8BFF20885FFF144A31D50000001800000002000000000000000EB0673EFF743A
      1FE1140A056A0000001100000006000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020202012CA28375FFDACCC6FFB69E93FF8D6A5EFF020101300000
      0002000000000000000000000000000000000000000509221795228A62FF26C9
      93FF25CA94FF26CB95FF0C824DFF1E9062FF41D1A5FF30CE9AFF28CB95FF26CB
      95FF28CB95FF228F65FF0D3021AF000000090000000509221795228A62FF26C9
      93FF25CA94FF26CB95FF39C79AFF288057FF277C55FF3AC79AFF28CB95FF26CB
      95FF28CB95FF228F65FF0D3021AF000000090000000000000011B36F44FFDEAF
      76FFB47146FF61311AD20A0502500000000F0000000500000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000004110E0C5FB3998CFFD9CCC6FFB69E93FF99786BFF0F0B0A630000
      0006000000000000000000000000000000000002012D207351FA2AC693FF28CB
      95FF2ACC97FF2ECF9BFF0B804DFFABCBBBFF217E55FF42C098FF41D6A7FF2CCE
      99FF29CB96FF2CC996FF237B57FF010604470002012D207351FA2AC693FF28CB
      95FF2ACC97FF3DD4A6FF187E53FFC3D7CCFFC6DACFFF197C51FF40D5A6FF2CCE
      99FF29CB96FF2CC996FF237B57FF010604470000000000000010B6754AFFECC3
      8FFFE8BA7CFFD8A66EFFAD683EFF4E2814BE050301400000000D000000040000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000709243B921581DAFF1595E9FF0875DFFF1380D9FF07233B960000
      000A000000000000000000000000000000000920168F2CA177FF2DCD98FF49D8
      ACFF58DEB8FF59DFB8FF0C7E4CFFF8F4F0FFDEEAE5FF438867FF31A076FF51DC
      B2FF38D3A3FF2FCF9BFF2FA67CFF0E3122AF0920168F2CA177FF2DCD98FF31CF
      9BFF3ED5A7FF2E9E73FF80AD96FFF7F2EDFFF8F1ECFF82AE98FF2D9C72FF40D7
      A8FF34D1A0FF2FCF9BFF2FA67CFF0E3122AF000000000000000FBB7B50FFEFCD
      9CFFE9BB7EFFE8BC80FFEABE83FFD39D6BFFA6603AFD3C1F11A90201002C0000
      000B000000030000000100000000000000000000000000000000000000000000
      00010000000E18558CD51D94E5FF25A2ECFF1184E3FF1C93E4FF13518AD80000
      001300000003000000000000000000000000134730CA34C193FF37D2A2FF2291
      64FF0B7748FF0C7A49FF0B7B4AFFF7EFEAFFF9F2EDFFFAFAF8FF86B09CFF1F7A
      53FF51CFAAFF47D8ACFF35C395FF195D42E5134730CA34C193FF37D2A2FF3DD5
      A5FF45C098FF3A7D5BFFF8F6F3FFF7EFEAFFF8F0EBFFF8F6F3FF3D7E5DFF46C0
      98FF3ED8A9FF3AD4A4FF35C395FF195D42E5000000000000000EBE8256FFF1D5
      ACFFEBC087FFE9BF85FFE8BD81FFE9BF82FFE9C087FFCD9764FF9A5531F72D17
      0C94010000210000000900000002000000000000000000000000000000010000
      00070B263E912D9BE1FF2DADEEFF25A8EDFF25A8EDFF2CACEEFF2B9AE1FF0A2C
      4BA40000000D000000010000000000000000196143E945D1A4FF3FD6A8FF0C70
      42FFFFFFFFFFFFFFFFFFFFFFFFFFF8F4F0FFF9F4F0FFF8F3F0FFFBF8F6FFC3D3
      CAFF286C4BFF34AA81FF48D5ABFF1F7551FA196143E945D1A4FF3FD6A8FF52D9
      B0FF196D45FFDDE6E0FFF8F2EEFFF8F4F0FFF9F4F0FFF8F3F0FFDDE6E0FF1C6E
      47FF54D8B1FF42D9AAFF48D5ABFF1F7551FA000000000000000DC0855DFFF5DE
      BBFFEDC68FFFEDC58DFFEBC289FFEAC084FFE8BC80FFE9BD82FFE8BB87FFC78E
      5FFF8C4E2CEE2011097E00000009000000000000000000000000000000030309
      0F4A3297DDFF49C8F4FF37C0F2FF37C0F2FF37C0F2FF37C0F2FF47C7F3FF2F97
      DBFF04121E6D000000060000000000000000195E42E35BD8B3FF44D9ACFF0B6D
      41FFDFD0CAFFE0D2CDFFE1D4CEFFF9F6F3FFFAF7F4FFF9F6F2FFECE3DFFFAEB9
      ABFF286C4BFF31AA81FF61DFBBFF217B57FC195E42E35BD8B3FF44D9ACFF2686
      5EFF95AC9BFFE1D4CEFFE1D4CEFFF9F6F3FFFAF7F4FFE2D6D1FFE1D5D0FF98AD
      9DFF25835CFF47DBAFFF61DFBBFF217B57FC000000000000000CC59066FFF9E9
      CFFFF3D4A3FFF2D09FFFF0CC98FFEEC890FFEBC088FFE9BE83FFEAC38AFFECC6
      93FFE3B889FFA65A32FF0000000D000000000000000000000000000000051C52
      81C858CBF1FF4ED8F7FF5FDEF9FF4DD8F7FF4DD8F7FF5FDEF9FF4ED8F7FF55C8
      EFFF134A7DCC0000000B0000000000000000134733C366D0B1FF4FDEB2FF1B89
      5CFF0B6D40FF0B6F42FF0A7143FFFAF8F6FFF8F5F2FFE5DDD9FF73957EFF1C75
      50FF47CEA5FF51E0B5FF6BD7B7FF1B6145DF134733C366D0B1FF4FDEB2FF0B6C
      3FFF0B6F41FF0A7143FF0A7343FFFAF8F6FFFBF9F6FF0A7242FF0B6F41FF0B6C
      40FF0A6A3CFF51E0B5FF6BD7B7FF1B6145DF000000000000000BC9956DFFFAEF
      DAFFF4DAAEFFF5D8AAFFF2D5A6FFF1D1A1FFF1D0A2FFF1D2A8FFEDCDA1FFCC95
      6AFF895232E3170E086800000007000000000000000000000000000000052B7B
      C1F172E2F7FF51DDF7FF76E5FAFF8AEBFBFF89EBFBFF77E6F9FF50DCF7FF74E4
      F8FF1E78C6FA0000000C0000000000000000081D147D5AB798FF60E3BEFF53E1
      B9FF56E3BCFF59E4BFFF0B6D41FFF2EEEAFFC8CAC2FF397254FF329D76FF58E3
      BDFF57E3BBFF62E4C0FF64C1A5FF0D30239E081D147D5AB798FF60E3BEFF53E1
      B9FF56E3BCFF59E4BFFF0B6F42FFFBF9F6FFFCFBF9FF0B6F41FF5CE7BFFF59E5
      BFFF57E3BBFF62E4C0FF64C1A5FF0D30239E000000000000000ACC9B72FFFCF4
      E3FFF8E0B7FFF6DDB4FFF6DEB4FFF7E2C0FFF6E1C1FFD9B28CFFA66E49F12517
      0F7E000000160000000600000001000000000000000000000000000000042E7E
      C2F178DAF5FF50CFF4FF70D8F5FF8BDFF7FF8BDFF7FF71D9F5FF4FCEF3FF79DD
      F7FF207AC7FA0000000B00000000000000000001011F2A8462F58CE8CEFF5AE3
      BDFF5CE5BFFF5EE8C1FF0B6A3EFF95A797FF1D6847FF4FC6A4FF60E9C5FF5EE8
      C1FF5EE5BFFF91EBD4FF2E946EFC010503360001011F2A8462F58CE8CEFF5AE3
      BDFF5CE5BFFF5EE8C1FF0B6C3FFFE3D7D2FFE3D8D4FF0A6A3EFF60E9C5FF5EE8
      C1FF5EE5BFFF91EBD4FF2E946EFC010503360000000000000009CDA076FFFEF7
      E9FFFBE7C2FFFBEBCCFFFBEFD6FFE3C5A7FFBB8862F93B271A960100001E0000
      0006000000020000000000000000000000000000000000000000000000031F55
      83C66CC7F0FF7AD1F4FFBBE7F9FFBAE7F9FFBAE7F9FFBAE7F9FF79D0F4FF68C3
      EEFF164D7FCA00000008000000000000000000000002081F177C4BAE8CFF97F0
      DAFF66E8C4FF61EAC4FF0C663BFF2A8461FF64E5C3FF68EDCBFF66EAC8FF6DEC
      C9FF9EF3DCFF51B493FF0D32249A0000000500000002081F177C4BAE8CFF97F0
      DAFF66E8C4FF61EAC4FF238A60FF0B683CFF0C673CFF258D63FF66EAC8FF6DEC
      C9FF9EF3DCFF51B493FF0D32249A000000050000000000000008D0A47BFFFEFB
      EFFFFDF4E0FFEEDAC1FFD1A07CFF4E3727A70302012C00000007000000020000
      0000000000000000000000000000000000000000000000000000000000010309
      0E43479EDEFD9FD9F6FFE5F4FCFFE4F3FCFFE3F3FCFFE5F4FCFF9FD9F6FF449C
      DEFF040E175B0000000300000000000000000000000000000005103B2BA54FB3
      93FFA3EDDAFF95F2D9FF86EFD6FF77EED0FF78EFD1FF87F0D7FF96F2DDFFA0EC
      D8FF4BB592FF144D38B80000000C000000010000000000000005103B2BA54FB3
      93FFA3EDDAFF95F2D9FF86EFD6FF77EED0FF78EFD1FF87F0D7FF96F2DDFFA0EC
      D8FF4BB592FF144D38B80000000C000000010000000000000007D2A77EFFF5EA
      DBFFD8B291FF6C503BBE0806043C000000070000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010C21327B489FE2FFB0D9F5FFE9F5FDFFE9F5FCFFB0D9F4FF4199DEFF0B26
      3C8B000000050000000100000000000000000000000000000000000000020820
      17782D9A72F769C9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1C9FF6CCEAFFF2EA2
      79F90C30238F0000000800000001000000000000000000000000000000020820
      17782D9A72F769C9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1C9FF6CCEAFFF2EA2
      79F90C30238F0000000800000001000000000000000000000005D5AA83FF8C6D
      50D3100D094F0000000700000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000103090E421A456CB32A73B2E52971B0E517446BB403090E450000
      0003000000010000000000000000000000000000000000000000000000000000
      00010001011B09261C7E186047C2207D5CDA218361DF19684DC80B2B20850003
      0229000000030000000100000000000000000000000000000000000000000000
      00010001011B09261C7E186047C2207D5CDA218361DF19684DC80B2B20850003
      0229000000030000000100000000000000000000000000000001000000040000
      0005000000020000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000040000
      000B0000000E0000000B00000004000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000060502003D4624
      0BC75E3010E446230AC90603004E000000130000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000500000011000000100000
      0007000000010000000500000011000000100000000700000001000000000000
      00000000000000000000000000000000000000000004060301435D3011E0190D
      047D070301471209036D783D14FF0C0601660000001600000006000000000000
      000000000000000000000000000000000000000000100000000F000000050000
      000100000005000000100000000F000000050000000100000000000000000000
      0000000000030000000D000000130000000E0000000D000000130000000E0000
      0003000000000000000000000000000000010000000500000011000000130000
      00060000000100000005000000110000001300000011B05D31FF602F16C90904
      024F0000001100000016B3643BFF602F16C90904024F00000011000000050000
      00010000000000000000000000000000000000000008542D10D30F0803620000
      0009000000040000001B0B0502567B3F15FF0C06026600000013000000060000
      000000000000000000000000000000000000B66539FF5A3018C0060301410000
      000F00000014B86A41FF5A3018C0060301410000000F00000004000000010000
      00000000000C663E25C5B4683BFF61381FC5663E25C5B4683BFF61381FC50000
      000D00000000000000010000000400000010060301445A2E17C3AA5528FF0000
      001900000010060301445A2E17C3AC5528FF00000014B66539FFDFA971FFBB6D
      3DFF4A2612B304020144CDA690FFDCA66FFFBA6D3DFF4A2612B3030100350000
      000E0000000400000001000000000000000000000016744018F4000000140000
      00010000000300000009000000110B0602587C4117FF0C060264000000120000
      000600000000000000000000000000000000BB7044FFDEAB7AFFB96F41FD4626
      14AC0201003CD1AB95FFDCAA79FFB96F41FD462614AC0201002C0000000C0000
      000200000011BC794DFFE3B06EFFB56B3EFFBC794DFFE3B06EFFB56B3EFF0000
      0013000000020000000B0201002B482918ADB86E3EFDD99F62FFA7552BFF0302
      0140482918ADB86E3EFDDBA063FFAE582DFF00000013BB7044FFF3CE9AFFF2C6
      8BFFD89F67FFAA5F35F8AF7555FFD6B284FFE7BD85FFD69E66FFAA5F35F8371D
      0E9E010000270000000B00000002000000000000000B77421BF4000000150000
      000300000012482710C481461AFF150B04710B0602597E4318FF0C0602630000
      001200000006000000000000000000000000BF7A4CFFF6D5A7FFF2CB94FFDBA4
      70FFAB623AF6B48161FFDEC096FFEAC590FFD9A26FFFA9623AF52C180D8D0000
      001D00000019C38458FFE4B273FFB97144FFC38458FFE4B273FFB97144FF0000
      00190000001A2E1D118AB16F44F5D9A169FFE7BA7CFFDBB177FFA76137FFB071
      44F6DAA269FFEDBE80FFEFC183FFB15E32FF00000012BF7A4CFFF6D5A7FFF2C7
      8AFFF3C98DFFEEC38BFFD29760FFB4673BFFBC8755FFDCB680FFE7BD86FFD196
      60FF9A542CEF211109800000001A0000000800000004351E0CA5221308860000
      00081009036084481DFF0301003583471CFF150B04700B06025781461AFF0C06
      026200000011000000060000000000000000C48354FFF9DDB5FFF5CF95FFF5CF
      99FFF2C994FFD29563FFB56F43FFC59564FFE4C08EFFEEC793FFD29563FF8D51
      2BE5180D0676C88E60FFE6B678FFBD784BFFC88E60FFE6B678FFBD784BFF1A11
      0B719A6441E4DAA372FFF0C690FFE6BD84FFCF9E67FFC58658FFDAA372FFF2C8
      91FFF3C88BFFF0C081FFF0C68DFFB46337FF00000010C48354FFF9DDB5FFF5CF
      95FFF4CB92FFF4C98DFFF3CA8EFFEDBE87FFCA8955FFB06438FFC49160FFEAC3
      89FFEDBE87FFCA8955FF814222E013090464000000010000000A884E21FF140B
      056705030139543014CD2D190A9A0301003184491DFF150C046F0B0602568347
      1CFF0C060361000000140000000600000000C98A5BFFFBE5C1FFF7D49FFFF8D2
      9CFFF5D097FFF5D09BFFEDC693FFC9885AFFB67044FFE9C590FFF5D09BFFEDC6
      93FFBE8056FFCC9669FFE8BC7EFFC08153FFCC9669FFE8BC7EFFC08153FFCE9E
      74FFF2D1A8FFF8D5A4FFEEC993FFCD9565FFDAA87BFFF2D1A8FFF8D5A4FFF5CE
      97FFF3C990FFF2C588FFF2CD97FFB7683AFF0000000FC98A5BFFFBE5C1FFF7D4
      9FFFF8D29CFFF5CE96FFF3CA91FFF3CB94FFF4D2A2FFE9BF90FFAE582CFFE5BF
      89FFF3CB94FFF4D2A2FFE9BF90FFAE582CFF00000000000000010000000A8B51
      23FF140B05660000000D894E21FF2E1A0B990201002F874C1FFF150C056D0B06
      025384491DFF0C0703610000001000000001CD9364FFFCEBCDFFFAD9A8FFF8D6
      A5FFF8D9A6FFF8DEB6FFF0CFA9FFCA8D5FFFBB784DFFEED09FFFF8DEB6FFF0CF
      A9FFC1865AFFD09C70FFEBC186FFC6895DFFD09C70FFEBC186FFC6895DFFCFA3
      7AFFF5DDBCFFFBE3BFFFF1D09FFFD29E6CFFDCAE83FFF5DDBCFFFBE3BFFFF8D7
      A4FFF5CE96FFF4C98CFFF4D1A0FFB96D3FFF0000000ECD9364FFFCEBCDFFFAD9
      A8FFF8D6A5FFF8D7A6FFF8DEB5FFF3D7B1FFD0986CFFB66E44FFCDA175FFF0D7
      AFFFF3D7B1FFD0986CFF7D4527DA120905600000000000000000000000010000
      000A8E5426FF140B0565030200318C5124FF2E1B0B980201002D894F21FF0000
      000A0B06024F864C1FFF0B06025900000004D0996AFFFEEED6FFFDE1B6FFFCE6
      C6FFF9E5C8FFDAAA83FFC28458FFD3AD86FFEED9BBFFF6E2C7FFDAAA83FF8B56
      35DE130B0766D3A176FFEDC48DFFCB9265FFD3A176FFEDC48DFFCB9265FF150F
      0A61986D4ADCE2B890FFF6E1C0FFEDD3ACFFDBB180FFD19C6DFFE2B890FFF8E3
      C2FFF7DCB3FFF5CC96FFF6D7AAFFBB7042FF0000000CD0996AFFFEEED6FFFDE1
      B5FFFDE7C4FFFAE7CBFFDDB28CFFC28255FFCCA077FFEBD7B7FFF4E3C6FFDCB1
      8BFFA36941ED22140B7A00000011000000060000000000000000000000000000
      000100000009905728FF140C05650302012F8D5426FF2E1B0C97000000090000
      0002000000040704014171411DEA0000000AD39E6FFFFFF6E2FFFDF0DBFFE5C2
      A2FFB57F56F2C9A081FFEEE6D2FFF7EAD7FFE4C1A1FFB47D56F12719107C0000
      00130000000FD4A579FFEFCA94FFCD996DFFD4A579FFEFCA94FFCD996DFF0000
      000F0000000F281D1479B8865CF1E2BC96FFF4DDB9FFEDD3ADFFB97B4EFFB987
      5CF2E3BD97FFF8E1BCFFF8DEB7FFBD7344FF0000000BD39E6FFFFFF6E2FFFEF2
      DEFFEACDAFFFC0875EF7C79B7AFFEBDFCCFFF7EBD8FFE9CCAEFFBE875DF63422
      168D0100001D0000000700000001000000000000000000000000000000000000
      00000000000100000008935A2AFF140C06630302012B8F5728FF090502450000
      00040000000302010026814C22F500000010D5A273FFEFD8BEFFC99A6FF83D2B
      1D9201010027E3C8B1FFEED7BDFFC99A6FF83D2B1D920100001E000000060000
      000100000008D6A77BFFFFF9EFFFD19F74FFD6A77BFFFFF9EFFFD19F74FF0000
      000900000001000000060101001D3B291B93C28A5EF9E5C09BFFBA7143FF0201
      012B3B291B93C28A5EF9E6C19CFFBE7445FF0000000AD5A273FFF3DEC8FFD4A4
      7AFD533B28A803020130E3C8B1FFF1DCC6FFD4A47AFD533B28A8020101270000
      0007000000020000000000000000000000000000000000000000000000000000
      0000000000000000000100000004955B2DFF000000040302012C925A2BFF140C
      066306040139301D0E962B1A0C8F00000003D7A777FF5F4630AE0403022B0000
      000600000009D8AB7CFF5F4630AE0403022B0000000600000002000000000000
      000000000004785D45C2D6A87CFF785D45C2785D45C2D6A87CFF785D45C20000
      0005000000000000000000000002000000070402012E573823B1BE7446FF0000
      000D000000070402012E573823B1BE7446FF00000007D7A777FF73553ABF0705
      03370000000800000009D9AC7EFF73553ABF0705033700000008000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010000000200000001000000010302012B3C25
      12A5643E1DD323150A7F00000003000000010000000600000005000000020000
      0000000000020000000600000005000000020000000000000000000000000000
      0000000000010000000400000006000000040000000400000006000000040000
      0001000000000000000000000000000000000000000200000007000000090000
      0003000000000000000200000007000000090000000200000006000000060000
      0002000000000000000200000006000000060000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000020000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010000160D06024200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0002000000080000000C0000000F0000000F0000000D00000007000000040000
      0007000000070000000200000000000000000000000000000000000000000000
      0000000000002412076E773A1BC6773A1BC634190B845E2E14B05E2E14B02412
      076E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000050000
      001C091A1391133C2AD31D5B40FF1D5A3FFF133A29D20816107D0000000E0B20
      179504190F950000000900000001000000000000000000000000000000000100
      00165E2E14B034190B8401000016000000000000000000000000010000163419
      0B845E2E14B0010000160000000000000000000000020000000A000000160000
      001B000000170000000B000000020000000000000001000000060000000B0000
      000F0000000C0000000600000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002000000090000000B0000000100000008030906571E5C
      44E722966CFF22B481FF23CA92FF38CF9DFF368869FF040B085D010302392978
      5AFB136442FB0002013700000004000000000000000000000000000000005E2E
      14B00D0602420000000000000000000000000000000000000000000000000000
      00000D0602425E2E14B000000000000000000000000F100907724A2B1ED8683C
      29FF41251AD90D0705750000001200000003000000080D08066241261CCF6038
      26FF382015D00A05036300000009000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000E341D0FA0773F19DD00000006050E0B652D8866FF27B5
      86FF3ADAA8FF58E0B7FF6EE5C2FF5EC6A6FF173D2FBF00000016163D2DBF26B7
      86FF1DB07CFF082E1DBF0000000C0000000100000000000000002412076E3419
      0B84000000000000000009040238773A1BC6C9612AFF773A1BC6090402380000
      00000000000034190B842412076E00000000110B086DA3806FFFD4C5BDFFEDE5
      E1FFCFBEB7FF907062FF0E0805770000000F110A0863A18171FFD4C6BEFFEEE8
      E4FFCDC0B8FF86695CFF09050360000000050000000000000000000000000000
      0000000000000000000100000005000000080000000300000000000000000000
      00030000000E351E0FA0C79A69FF8C4A22EC000101222E7B5EF62ABA8BFF41DD
      ADFF64CEADFF52AB8EFF398B6DFF2D7A5DFA01030236050D095D2E9670FF27D5
      9EFF27D59EFF1C8059FF0109065C000000050000000000000000773A1BC60100
      00160000000006020038C9612AFFC9612AFFFF6D1FFFC9612AFFC9612AFF0602
      003800000000010000165E2E14B000000000633F2FDEE3D7D1FFCEAE9EFFAF78
      56FFD0B39EFFD7C9C3FF4A2C1FE00000001B644335D8E2D7D2FFD0AD9BFFB376
      52FFD2B29AFFD6CBC5FF3E2419D90000000A0000000000000000000000000000
      0000000000020000000911090463945931EC0000000A00000004000000090201
      002C4B2B16BAC69560FFDFC295FF61381CC80E261D903BAC88FF2CDAA5FF5DCF
      AEFF439478F90918137500010020000000150000001625654CE129CC98FF28D8
      A1FF29D7A0FF25C592FF114931E00000000F00000000000000005E2E14B00000
      000000000000773A1BC6C9612AFFFF6D1FFFFF6D1FFFFF6D1FFFC9612AFF773A
      1BC600000000000000005E2E14B00502002A8C5845FBF8F6F4FFAE715AFFE7AF
      65FFB27E5DFFF0EBE8FF734734FF000000489A6A54FFF8F6F3FFB26F55FFE8AF
      63FFB67D58FFEAE3DFFF5E3928FA0000000B0000000000000000000000010000
      000402010027462713B7B07949FFB27142FF040201360F09055B3B2313A69961
      39F9D2A66EFFEECD94FFCCA379FF22140B7B225E48D437C79BFF2FDDA9FF5BB6
      99FF0C2019810000000700000001000000060C2119845FB89CFF83ECCFFF2ADA
      A5FF33DBA8FF88EDD0FF469D7EFF05130D77000000000D06024234190B840000
      000000000000C9612AFFFF6D1FFFFF955AFFFF955AFFFF6D1FFFFF6D1FFFC961
      2AFF000000000000000034190B841208034D8C5D4AF8F1E8E4FFD2B0A5FFAA6B
      52FFD4B6A7FFCDC0BAFF70412EFF4B281FFF80503CFFF1E8E3FFD3ADA1FFAE67
      4EFFD4B2A1FFC5B6AFFF663F2FF700000009000000000000000200000007170E
      076B925D36F3D7AE76FFF3D597FFB5794BFFA66C41FFB47E50FFCEA26DFFEECC
      90FFEFCD92FFEEDEB6FF95623CE90000001A328567F24FDFB6FF60E8C2FF3E94
      74FF0001001E00000002000000000000000F338366F4368F6FFF409A7AFF2FDC
      A8FF37D7A7FF348A6AFF338869FF2D755AEF0000000001000016773A1BC60000
      000000000000581E00C6C9612AFFFF955AFFFF955AFFFF955AFFC9612AFF581E
      00C600000000000000009F4D21E40502002A37251FA2CAAFA3FFF7F2EEFFFDFC
      FBFFEAE0DAFF9E8479FF764734FF653D35FF855843FFE8D9CFFFF7F0EDFFFCFA
      F9FFDFD4CEFF8A6556FF291B149A000000050000000203020129583720BFC192
      61FFF2D49AFFF5DA9FFFF6DA9DFFF4D79DFFF4D79CFFF4D69AFFF3D59AFFF3D8
      9FFFF5ECC5FFCAA176FF140D085E00000005399677FA98EDD8FF8DF1D8FF388E
      6CFF0001012000000001000000000000000200000007000000193E9674FF42E2
      B3FF4CDAB1FF1B6145F20000000F000000070000000000000000773A1BC60100
      00160000000006020038C9612AFFC9612AFFFF6D1FFFC9612AFFC9612AFF0602
      00380000000001000016773A1BC6000000000000001D9B6E5AF8E8DBD4FFE6D7
      CEFFCDB7AAFF8B6A5DFF7C4B39FF865E55FF8B5E4AFFE9D8CEFFEADCD4FFCFB9
      ACFF997A6CFF916651F7000000160000000100000003A37B55EBEADDBCFFFBF7
      D4FFFCF3CCFFFCF3CEFFFCF2CAFFFAECC0FFF8E6B6FFF6E3B2FFF6ECC3FFF1EB
      CAFFCDA981FF271B127D00000008000000012A6E57D398E1CFFF9AF4DEFF56A9
      8BFF081C1381000000060000000100000001000000050819127658B092FF8BF1
      D7FF6DCEB2FF184F3AD4000000060000000000000000000000002412076E3419
      0B84000000000000000006020038581E00C6C9612AFF581E00C6060200380000
      00000000000034190B842412076E00000000000000073D2D25A4D0B7ADFFEEE3
      DFFFD5C1B7FF93756BFF82523EFF724534FF92644FFFECE0D9FFEBDED8FFC4B0
      A5FF9B7767FF3A2A229D0000000400000000000000010403022A72573EC4DABE
      99FFFAF7D8FFFDFAD9FFFDF7D4FFFDFDE1FFF5EFD0FFEADBBAFFD6B892FF9E76
      53E816100B5E000000070000000100000000122F268A81CFBAFFB4F9EAFF82D3
      BCFF388564FB071B1183000101230001012306160F753B8B6AF984DFC7FFAAF6
      E5FF6EB8A0FF0C241B8C00000003000000000000000000000000000000005E2E
      14B00D0602420000000000000000000000000000000000000000000000000000
      00000D0602425E2E14B000000000000000000000000208060541B89383FFF3EB
      E8FFD9C9C2FFA99389FFA67865FF00000026B48B75FFF0E7E3FFEADED9FFBDA7
      9FFFA67C6BFF0705043900000001000000000000000000000001000000051F19
      126AB79571F2ECDFBDFFFEFDDFFFB48358FF977452E1654D37BB221A12700000
      0013000000040000000100000000000000000001001851AB8FF5A5E5D5FFBCFA
      EDFF94E5D0FF55A386FF2C7A58FF2C7A58FF53A386FF85D4BDFFB5F8EAFF9ADA
      C9FF3E8E71F50000001900000001000000000000000000000000000000000100
      00165E2E14B034190B8401000016000000000000000000000000010000163419
      0B845E2E14B00100001600000000000000000000000000000007664E40C6DDCC
      C4FFE6DCD8FFC2A99EFFA27A66F90000000CAE8A75F8E0D1C9FFE9DFDAFFBCA4
      97FF644C40C20000000300000000000000000000000000000000000000000000
      000302020121604C38B3DABF9AFFBC8D63FF0000000B00000005000000030000
      0001000000000000000000000000000000000000000207130F5668C6AAFFAAE7
      D9FFCBFDF3FFC1FBEFFFBAF9ECFFB8F9EBFFBEFBEEFFC7FCF2FFA6E5D5FF5BB0
      96FF06100C570000000200000000000000000000000000000000000000000000
      0000000000002412076E773A1BC6773A1BC634190B845E2E14B0773A1BC62412
      076E000000000000000000000000000000000000000000000002020201235945
      3AB7AB8370FA584539B902020127000000040201011E5C463DB3B18C75F95A45
      3BB30201011E0000000100000000000000000000000000000000000000000000
      0000000000010000000417130E5BA07C5BE80000000E00000000000000000000
      0000000000000000000000000000000000000000000000000002040C0A444998
      80E38AD7C2FFB2EADDFFCEF9F1FFCEF9F1FFB1EADCFF87D4BFFF47957DE4030A
      0844000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010000160D06024200000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0004000000060000000500000002000000000000000000000001000000010000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000002000000030000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      000F122E26812D715CC847B694FC47B593FC2C715BC8122E2582000000100000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000200000002000000020000000200000001000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      000400000006000000090000000B0000000C0000000C0000000B000000090000
      0007000000040000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF0000000000000000000000000000
      00000000000000000000000000000000011602020D4200000000000000000000
      0000000000000000000000000000000000000000000100000008000000110000
      001B000000240000002C000000340000003B0000003A000000350000002E0000
      00250000001C0000001300000009000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A0FFFAFAFAFFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFFAFAFAFFA0A0A0FF0000000000000000000000000000
      0000000000000808246E1B1B78C61B1B78C60B0B358414145EB014145EB00808
      246E000000000000000000000000000000000000000000000000000000000000
      000100000003000000140D2E1C924EA675F4010D065500000006000000040000
      0003000000020000000000000000000000000000000000000000000000000000
      001C000000580000006C0000002A000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A0FFFAFAFAFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
      CBFFCBCBCBFFCBCBCBFFFAFAFAFFA0A0A0FF0000000000000000000000000000
      011614145EB00B0B358400000116000000000000000000000000000001160B0B
      358414145EB00000011600000000000000000000000000000000000000000000
      0000010905433D9363E47AE4A9FF7DE7ACFF40A96EF100030129000000000000
      0000000000000000000000000000000000000000000000000024000000B80000
      00FB0000008B0000001000000000000000000000000000000000000000060000
      005800000026000000000000000000000000A0A0A0FFFAFAFAFFCECECEFFC8C8
      C8FFB9B9B9FFB4B4B4FFB4B4B4FFB9B9B9FFC3C3C3FFB9B9B9FFB4B4B4FFB9B9
      B9FFC8C8C8FFCECECEFFFAFAFAFFA0A0A0FF0000000000000000000000001414
      5EB002020D420000000000000000000000000000000000000000000000000000
      000002020D4214145EB000000000000000000000000000000000000000000317
      0C6443BF7AFB54D990FF4FD78CFF4ED88BFF52D88EFF157841D70000000E0000
      00000000000000000000000000000000000000000027000000EA000000FF0000
      005F000000000000000000000000000000000000000000000000000000000000
      0025000000DD000000E20000006A00000000A0A0A0FFFAFAFAFFD1D1D1FFBBBB
      BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3FFF4F4F4FFF4F4F4FFD3D3
      D3FFBFBFBFFFD1D1D1FFFAFAFAFFA0A0A0FF00000000000000000808246E0B0B
      35840000000000000000020209381B1B78C62C2CC9FF1B1B78C6020209380000
      0000000000000B0B35840808246E000000000000000000000000010F075221B7
      63FD1DC567FF0FC15EFF0BC15BFF0BC15BFF12C260FF24C56BFF064723AC0000
      000100000000000000000000000000000000000000B4000000FF000000B70000
      0000000000000000004D000000D500000097000000700000003F000000000000
      00000000002D000000EB0000002300000000A0A0A0FFFBFBFBFFD4D4D4FFB8B8
      B8FFFFFFFFFFAEAEAEFFAEAEAEFFB5B5B5FFC6C6C6FFBCBCBCFFB8B8B8FFBCBC
      BCFFCDCDCDFFD4D4D4FFFBFBFBFFA0A0A0FF00000000000000001B1B78C60000
      011600000000000007382C2CC9FF2C2CC9FF2121FFFF2C2CC9FF2C2CC9FF0000
      0738000000000000011614145EB000000000000000000000000F099346ED0AAA
      52FB045227B40227138003351993088E44E80AB756FF0AB857FF0BB355FF011C
      0D6D00000000000000000000000000000000000000F1000000FF000000600000
      000000000009000000F2000000AC000000000000000000000038000000060000
      0000000000000000008C000000CF00000007A0A0A0FFFBFBFBFFD8D8D8FFBABA
      BAFFFFFFFFFFAFAFAFFFAFAFAFFFB7B7B7FFC9C9C9FFBFBFBFFFBABABAFFBABA
      BAFFBFBFBFFFD1D1D1FFFBFBFBFFA0A0A0FF000000000000000014145EB00000
      0000000000001B1B78C62C2CC9FF2121FFFF2121FFFF2121FFFF2C2CC9FF1B1B
      78C6000000000000000014145EB00101052A000000000114095A077A3AD90004
      022C0000000000000000000000000000000A032E168809AA51FD09AF53FF09A0
      4DF800060331000000000000000000000000000000DC000000FF0000003C0000
      00000000001D000000FF000000C3000000470000001700000000000000000000
      00000000000000000047000000FF0000007BA0A0A0FFFBFBFBFFDBDBDBFFBBBB
      BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFC6C6C6FFFBFBFBFFA0A0A0FF0000000002020D420B0B35840000
      0000000000002C2CC9FF2121FFFF5A5AFFFF5A5AFFFF2121FFFF2121FFFF2C2C
      C9FF00000000000000000B0B35840303124D00000000000B05420002001C0000
      00000000000000000000000000000000000000000000000E064A089546EF09A6
      4FFF067236D20000000700000000000000000000007D000000FF000000480000
      000000000004000000E9000000D00000000E000000A2000000970000000A0000
      0000000000000000003C000000FF000000D6A0A0A0FFFCFCFCFFDEDEDEFFBDBD
      BDFFFFFFFFFFB4B4B4FFBABABAFFC2C2C2FFCFCFCFFFC2C2C2FFBDBDBDFFBDBD
      BDFFC2C2C2FFD6D6D6FFFCFCFCFFA0A0A0FF00000000000001161B1B78C60000
      000000000000000058C62C2CC9FF5A5AFFFF5A5AFFFF5A5AFFFF2C2CC9FF0000
      58C600000000000000002222A0E40101052A0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000005022E088D
      43E8089F4BFF032D158200000000000000000000000A000000CF0000008E0000
      00000000000000000053000000FA000000330000000A000000F1000000850000
      00000000000000000061000000FF000000ECA0A0A0FFFCFCFCFFF3F3F3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFC4C4C4FFBEBEBEFFBEBEBEFFBEBE
      BEFFC4C4C4FFD9D9D9FFFCFCFCFFA0A0A0FF00000000000000001B1B78C60000
      011600000000000007382C2CC9FF2C2CC9FF2121FFFF2C2CC9FF2C2CC9FF0000
      073800000000000001161B1B78C6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000004
      0227088C43E8099849F700030122000000000000000000000025000000EF0000
      002C00000000000000000000004C000000A600000055000000EF000000620000
      000000000000000000BE000000FF000000B1A0A0A0FFFCFCFCFFFFFFFFFFE9AF
      00FFE9AF00FFE9AF00FFE9AF00FFFFFFFFFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFCCCCCCFFFCFCFCFFA0A0A0FF00000000000000000808246E0B0B
      3584000000000000000000000738000058C62C2CC9FF000058C6000007380000
      0000000000000B0B35840808246E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000006032F089045EF044C24A600000000000000000000006C000000E00000
      00D90000001D0000000000000000000000000000001C00000013000000000000
      000000000077000000FF000000E500000025A0A0A0FFFDFDFDFFFFFFFFFFE9AF
      00FFE9AF00FFE9AF00FFE9AF00FFFFFFFFFFC8C8C8FFC2C2C2FFC2C2C2FFC2C2
      C2FFC8C8C8FFDFDFDFFFFDFDFDFFA0A0A0FF0000000000000000000000001414
      5EB002020D420000000000000000000000000000000000000000000000000000
      000002020D4214145EB000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010E07450AA951F80002011C0000000000000000000000000000
      00220000004A00000003000000000000000000000000000000000000001A0000
      009D000000FD000000A80000001C00000000A0A0A0FFFDFDFDFFFFFFFFFFE9AF
      00FFF1CD5FFFFFFFFFFFFFFFFFFFF7F7F7FFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFFDFDFDFFA0A0A0FF0000000000000000000000000000
      011614145EB00B0B358400000116000000000000000000000000000001160B0B
      358414145EB00000011600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000022B1474022411680000000000000000000000000000
      0000000000000000000000000000000000000000000600000057000000780000
      005200000015000000000000000000000000A0A0A0FFFDFDFDFFF8F8F8FFFFFF
      FFFFF9F9F9FFF2F2F2FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFFDFDFDFFA0A0A0FF0000000000000000000000000000
      0000000000000808246E1B1B78C61B1B78C60B0B358414145EB01B1B78C60808
      246E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000002000904360000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A0FFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFA0A0A0FF0000000000000000000000000000
      00000000000000000000000000000000011602020D4200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000080A380090C5FF0090C5FF0090
      C5FF0090C5FF0090C5FF0090C5FF0090C5FF0090C5FF0090C5FF0090C5FF0090
      C5FF0090C5FF0090C5FF0090C5FF00080A380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000290000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000001130D0D26682D3183C04146BEE7383CA3D62F3386C30D0E276A0000
      0007000000000000000000000000000000000092C7FF0CB8E9FF0DCAFAFF0DCA
      FAFF0ECAFAFF0DCAFAFF0DCAFAFF0DCAFAFF0DCAFAFF0DCAFAFF0DCAFAFF0DCA
      FAFF0DC9FAFF0DCAF9FF08B4E6FF0092C7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A10000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0C3B4448C4EB5055E8FF5055E8FF5055E8FF5055E8FF5055E8FF5055E8FF4144
      BAE50708154F0000000000000000000000000195CAFF10B9E9FF15CDFAFF16CD
      FAFF15CDFAFF16CDFBFF15CDFAFF000000FF000000FF16CDFBFF15CDFBFF16CD
      FAFF15CDFAFF15CDFAFF0DB6E7FF0196CAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000100000009B00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000607154F4449
      D9F83A3EDFFF3A3DDAFF4C51E6FF4F54E7FF5055E8FF4F54E7FF3D3FDBFF3F43
      DFFF4C51DAF804040C3B000000000000000000080A38039ACEFF21D1FAFF22D1
      FAFF21D1FBFF21D2FBFF22D1FBFF000000FF000000FF21D1FBFF21D1FBFF21D2
      FBFF21D2FBFF21D1FBFF039ACDFF00080A380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000650000004600000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000073337BAE53337
      DEFF9E9FE9FFD7D7F6FF3538D7FF474CE6FF494EE6FF383AD7FFD7D8F6FFA0A1
      E9FF3F43DFFF4448C4EB000001130000000000000000059ED1FF1BBEEAFF2FD6
      FBFF2FD6FBFF2FD6FBFF30D6FBFF30D7FBFF2FD6FBFF2FD6FBFF2FD6FBFF2FD6
      FBFF30D6FBFF1DBBE7FF059ED2FF000000000000000000000000000000000000
      0000000000000000000009040238773A1BC6C9612AFF773A1BC6090402380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000AB0000000300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000090A276A383EE6FF3033
      D9FFD4D5F6FFFFFFFFFFD7D7F6FF3336D6FF3436D7FFD7D7F6FFFFFFFFFFD7D7
      F6FF393DDAFF4C51E7FF0D0D2568000000000000000000080A3807A3D6FF3FDB
      FBFF3FDBFCFF3FDCFCFF40DCFCFF000000FF000000FF3FDBFCFF3FDBFCFF3FDB
      FCFF40DCFCFF07A3D6FF00080A38000000000000000000000000000000000000
      00000000000006020038C9612AFFC9612AFFFF6D1FFFC9612AFFC9612AFF0602
      0038000000000000000000000000000000000000000000000000000000000000
      0038000000F80000007000000004000000000000000000000000000000000000
      000A00000000000000000000000000000000000000001B1F86C33137E5FF3239
      E5FF2A2DD6FFCECFF5FFFFFFFFFFD6D7F6FFD7D7F6FFFFFFFFFFD7D7F6FF3336
      D6FF4248E6FF454BE7FF282B83C000000000000000000000000009A7DBFF37D1
      F4FF50E2FCFF4FE1FCFF50E1FCFF000000FF000000FF50E1FDFF50E2FCFF50E2
      FCFF3ED0F1FF09A7DAFF00000000000000000000000000000000000000000000
      000000000000773A1BC6C9612AFFFF6D1FFFFF6D1FFFFF6D1FFFC9612AFF773A
      1BC6000000000000000000000000000000000000000000000000000000000000
      00C1000000FF000000F6000000CC000000900000008B000000C0000000D90000
      00A1000000B3000000CC0000006000000000000000001D21A1D62A30E5FF2C32
      E5FF2E35E5FF272AD6FFCACBF4FFFFFFFFFFFFFFFFFFD6D7F6FF3032D6FF3C40
      E5FF3C42E6FF3E44E6FF3539BCE700000000000000000000000000080A380CAD
      DFFF61E7FDFF61E7FDFF61E8FDFF000000FF000000FF61E7FDFF61E8FDFF61E8
      FDFF0CADDFFF00080A3800000000000000000000000000000000000000000000
      000000000000C9612AFFFF6D1FFFFF955AFFFF955AFFFF6D1FFFFF6D1FFFC961
      2AFF000000000000000000000000000000000000000000000000000000000000
      00EF000000FF000000FF0000008A0000001800000023000000F4000000E20000
      000000000060000000FF000000C700000000000000001B20BBE7282EE5FF373D
      E6FF3D44E6FF3437D7FFDADBF8FFFFFFFFFFFFFFFFFFD7D8F7FF3739D7FF4A4F
      E7FF464CE8FF3C42E7FF292DA2D6000000000000000000000000000000000EB2
      E4FF5DE1F8FF72EDFDFF72EDFEFF000000FF000000FF72EDFEFF72EEFDFF5CE1
      F9FF0EB3E4FF0000000000000000000000000000000000000000000000000000
      000000000000581E00C6C9612AFFFF955AFFFF955AFFFF955AFFC9612AFF581E
      00C6000000000000000000000000000000000000000000000000000000560000
      00BB00000077000000F80000002B000000000000003E000000FF000000A90000
      000200000074000000FF000000C70000000000000000121683C14A4FEAFF4B50
      E9FF3A3CD9FFDADAF7FFFFFFFFFFDBDCF8FFCBCBF3FFFFFFFFFFD8D9F7FF3D40
      D8FF585EE9FF5A5FEAFF202387C4000000000000000000000000000000000008
      0A3811B8E8FF83F3FEFF84F3FEFF000000FF000000FF84F3FEFF83F3FEFF10B8
      E8FF00080A380000000000000000000000000000000000000000000000000000
      00000000000006020038C9612AFFC9612AFFFF6D1FFFC9612AFFC9612AFF0602
      0038000000000000000000000000000000000000000000000000000000CA0000
      003A00000000000000460000007B000000570000005B00000058000000920000
      00FE0000007D00000070000000BB000000000000000003042568444AE9FF4346
      DCFFD9D9F7FFFFFFFFFFDBDBF7FF4345D9FF4346DBFFCBCCF3FFFFFFFFFFD9D9
      F7FF4A4DDEFF545AEAFF0708276A000000000000000000000000000000000000
      000012BCECFF74EAF9FF92F8FEFF000000FF000000FF91F8FEFF73EAF9FF13BC
      ECFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006020038581E00C6C9612AFF581E00C6060200380000
      0000000000000000000000000000000000000000000000000004000000E40000
      00000000000000000098000000FF000000FF0000003800000000000000CB0000
      00FF0000006400000000000000A00000000000000000000001131C22C4EC5155
      E3FFA3A3E9FFDADAF7FF4A4CDBFF7074EDFF7277EFFF4D4FDCFFCCCDF4FFA2A3
      EAFF595DE4FF2A30BCE700000007000000000000000000000000000000000000
      000000080A3814C0F0FF9EFCFFFF000000FF000000FF9EFCFEFF14C1F1FF0008
      0A38000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000078000000F60000
      009A00000019000000F1000000FF000000EF00000003000000140000009D0000
      00730000005800000003000000A000000000000000000000000000000B3B2830
      DAF96165E5FF595BE0FF8387F0FF8589F1FF868AF1FF878BF1FF5E61E1FF6669
      E4FF373DDCF90203154F00000000000000000000000000000000000000000000
      00000000000016C4F4FF86EFFAFFA6FFFFFFA6FFFFFF85EFFAFF16C4F4FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000E1000000FF0000
      00FF0000009B000000500000007B00000089000000BB000000B9000000000000
      0000000000C4000000DA000000B3000000000000000000000000000000000000
      154F1219BAE76469EDFF9296F2FF999CF3FF999CF3FF9598F3FF6A6FEEFF1E23
      C4EC01010C3B0000000000000000000000000000000000000000000000000000
      00000000000000080A3818C8F7FFA6FFFFFFA6FFFFFF18C7F7FF00080A380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000009000000E7000000FA0000
      00FF0000003A000000000000000000000096000000FF00000081000000160000
      002A000000D9000000FF000000C7000000000000000000000000000000000000
      0000000000070000266A020683C3161BA6DA191EBFE9040980C0010225680000
      0113000000000000000000000000000000000000000000000000000000000000
      0000000000000000000019CAF9FF86EFFAFF85EFFAFF19CAF9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000009000000260000008F0000
      00D50000004D0000002200000005000000E1000000E8000000B8000000950000
      0081000000C9000000F1000000CA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000080A3819CAF9FF19CAF9FF00080A38000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000D0000005C00000085000000A2000000840000002F00000001000000000000
      000000000000000000320000007000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF00FFFF8FFF00000000FFFFCFFF00000000
      FEFF8C0300000000FC7FCFFF00000000F83F8FFF00000000F01F8FFF00000000
      F01F000000000000F01F000000000000F01F000000000000F01F000000000000
      F83F000000000000FC7F8FFF00000000FEFF8C0300000000FFFF8FFF00000000
      FFFF8FFF00000000FFFFFFFF00000000FF8FFFFF00000000FA8FFFFF00000000
      FF8FC00700000000FBFFC00700000000FF8FC00700000000FA8FC00700000000
      FF8FC00700000000FBFFC00700000000FF8FC00700000000FA8FC00700000000
      FF8FC00700000000FBFFC00700000000FFFFC00700000000F1FFC00700000000
      F1FFFFFF00000000F1FFFFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object Timer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerTimer
    Left = 75
    Top = 512
  end
end
