object FormTarget: TFormTarget
  Left = 441
  Top = 226
  Caption = 'Drop Target analyzer'
  ClientHeight = 322
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 464
    Top = 45
    Height = 277
    Align = alRight
    AutoSnap = False
    ResizeStyle = rsUpdate
  end
  object ListViewTrace: TListView
    Left = 0
    Top = 45
    Width = 464
    Height = 277
    Align = alClient
    Columns = <
      item
        Caption = 'Timestamp'
        Width = 75
      end
      item
        Caption = 'Action'
        Width = 150
      end
      item
        AutoSize = True
        Caption = 'Details'
      end>
    ColumnClick = False
    GridLines = True
    ReadOnly = True
    RowSelect = True
    SmallImages = ImageList1
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Panel2: TPanel
    Left = 467
    Top = 45
    Width = 215
    Height = 277
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object ListViewFormats: TListView
      Left = 0
      Top = 0
      Width = 215
      Height = 277
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = 'ClipboardFormat'
        end
        item
          Caption = 'Medium'
          Width = 80
        end>
      ColumnClick = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 45
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 2
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 547
      Height = 41
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Drag from here and onto the target application'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      OnMouseDown = Panel1MouseDown
      object SpeedButton1: TSpeedButton
        Left = 4
        Top = 9
        Width = 23
        Height = 22
        Hint = 'About this demo'
        Glyph.Data = {
          5A030000424D5A030000000000005A0200002800000010000000100000000100
          08000000000000010000120B0000120B0000890000008900000000000000FFFF
          FF009F9EA1009E9CA000A19EA300FF00FF00A39FA300A39EA100A0989C00A09A
          9D009E8A87009E8B8700E1D1CE0099888400AA260300A7250300A72A0600AD2C
          0700AD2D0800AC2D0800AA2D0900AC310D00CEBFBB00AB2E0900AC320D00AD33
          0E00B0350F00B0370F00AF360F00AD340F00AD350F00AF371000AD3610009F8C
          8600CFBCB600F2E2DD00B43B1000B6411700B8421A00B5411A00B05E4000C297
          8700C99E8E00B4968B00C1A39800B1958B00A08E8800E0CFC900BB471800B845
          1900BB4A1C00B1624300B1654800CE876A00D58F7200CA886D00B47F6A00B483
          7000C2917E00D7A79300D8AA9700D5AA9800E0BAAA00F2E1DA00E9DCD700EADE
          D900C0542200C67D5D00DD9E8100DD9F8200D79A7F00D7A69100D5A79300D8AA
          9600C79E8B00D7AA9700C69D8B00C79E8C00D8AD9900BDA39800F0D4C700F0D5
          C900F2D8CC00EED9D000EFDDD500F2E1D900F4E5DE00F3E6E000C0542100C65D
          2700C65D2800E1A68800D8AF9A00F2DACE00EED9CF00EEDAD000D0794800E1A4
          8200F3DCCF00F6E3D800F4E1D700F6E5DC00EEDDD400F0E2DA00EFE1D900C964
          2800CC692F00D37B4600E7BA9F00CE6F3100D3763600D8895500F2D4BF00F7E0
          D000D57D3B00D57E3E00F3D9C500DC8A4500F6DECB00E0924A00EBBC9300EAB0
          7900EFCBA700FAEADA00F3D4B200F6D7B600F6E0C600F0C58F00F6DCBB00FAEA
          D300FEFFFF00F0FEFF00F2FEFF00DAE1E500B7BBC000DADDE100B8BBC0000505
          050505053D4F2B2A05050505050505050505053C168603213C05050505050505
          05055C0C873A39092E4D050505050505053C4184430F0E34060A3C0505050505
          3C6882352745442628040B4C0505053C23013610206564201333070A3C05493F
          015B241A1C525019151228080D4A3E01745942322562511D181E1138022D3E01
          766E6A5A42635D1F18181729882C4955017A726D6B706C311B1437852248053C
          54017C75736F60583046832F3C0505053B66017D777B71696182404B05050505
          053C5F01807F797801673C05050505050505475301817E01564E050505050505
          0505053C5E0101573C0505050505050505050505493E3E49050505050505}
        OnClick = SpeedButton1Click
      end
    end
    object Panel4: TPanel
      Left = 549
      Top = 2
      Width = 131
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object CheckBoxDropFile: TCheckBox
        Left = 14
        Top = 9
        Width = 97
        Height = 17
        Caption = 'Drop CF_HDROP'
        TabOrder = 0
      end
    end
  end
  object DataFormatAdapter1: TDataFormatAdapter
    DragDropComponent = DropEmptySource1
    DataFormatName = 'TFileDataFormat'
    Left = 188
    Top = 112
  end
  object DropEmptySource1: TDropEmptySource
    DragTypes = [dtCopy, dtMove, dtLink]
    OnFeedback = DropEmptySource1Feedback
    OnDrop = DropEmptySource1Drop
    OnAfterDrop = DropEmptySource1AfterDrop
    OnGetData = DropEmptySource1GetData
    OnSetData = DropEmptySource1SetData
    OnPaste = DropEmptySource1Paste
    Images = ImageList1
    ShowImage = True
    Left = 136
    Top = 112
  end
  object ImageList1: TImageList
    Left = 136
    Top = 152
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C260000602F0000723800007238000062300000502800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C260000602F0000723800007238000062300000502800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000003260000043400000443000004430000043600000428000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000427000003320000023F0000023F0000033300000429000000
      0000000000000000000000000000000000000000000000000000000000006431
      000064310000984B0000B85B0000BC5D0000BC5D0000BA5C00009C4D00006C35
      00006C3500000000000000000000000000000000000000000000000000006431
      000064310000984B0000B85B0000BC5D0000BC5D0000BA5C00009C4D00006C35
      00006C3500000000000000000000000000000000000000000000000000000004
      380000043800000164000000870000008C0000008C0000008900000167000004
      3E0000043E000000000000000000000000000000000000000000000000000004
      390000043900000164000000870000008C0000008C0000008900000066000003
      3B0000033B000000000000000000000000000000000000000000743900008843
      0000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D0000C05F0000C260
      00008A4400005028000000000000000000000000000000000000743900008843
      0000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D0000C05F0000C260
      00008A4400005028000000000000000000000000000000000000000344000002
      5400000091000000930000008C000000870000008C0000008C00000091000000
      9300000257000004280000000000000000000000000000000000000344000002
      5400000091000000930000008C000000870000008C0000008C00000091000000
      930000015400000326000000000000000000000000007439000094490000D268
      0000C8630000BC5D0000B85B0000B85B0000BA5C0000BA5C0000BA5C0000BC5D
      0000C26000008A4400006C35000000000000000000007439000094490000D268
      0000C8630000BC5D0000B85B0000B85B0000BA5C0000BA5C0000BA5C0000BC5D
      0000C26000008A4400006C3500000000000000000000000A570000015F000000
      A70000009A0000008C0000008700000087000000890000008900000089000000
      8C00000093000002570000043E000000000000000000000A560000015F000000
      A70000009A0000008C0000008700000087000000890000008900000089000000
      8C00000093000001540000033B00000000000000000074390000DE6E0000D86B
      0000CA640000BC5D0000C3702000F6EADE00FAF3ED00D3975D00BA5C0000BA5C
      0000BC5D0000C26000006C350000000000000000000074390000DE6E0000D86B
      0000CA640000BC5D0000D3975D00FAF3ED00F6EADE00C3702000BA5C0000BA5C
      0000BC5D0000C26000006C3500000000000000000000000A57000000B6000000
      AE0000009D0000008C00000C9400D4DAF300E7EBF8002B44AF00000089000000
      890000008C000000930000043E000000000000000000000A56000000B6000000
      AE0000009D0000008C002C45B000E7EBF800D4DAF300000C9400000089000000
      890000008C000000930000033B00000000007A3C0000B4590000F0770000D86B
      0000C2600000BE5E0000BC610800E3BC9600FFFFFF00FDFAF700D1925400BA5C
      0000BA5C0000C05F00009C4D0000602F00007A3C0000B4590000F0770000D86B
      0000C2600000D3935400FDFAF700FFFFFF00E3BC9600BC610800BA5C0000BA5C
      0000BA5C0000C05F00009C4D0000602F0000000A5B00000489000000CD000000
      AE000000930000008E0000008C007284CE00FFFFFF00F4F6FC00223BAC000000
      890000008900000091000001670000043400000A5A00000489000000CD000000
      AE00000093001F38AB00F4F6FC00FFFFFF007385CF0000008C00000089000000
      8900000089000000910000006600000435007A3C0000E06F0000F0770000DE6E
      0000C2600000BC5D0000BE5E0000BC5D0000DFB48900FEFEFD00FDF9F600D090
      5200BA5C0000BE5E0000B2580000602F00007A3C0000E06F0000F0770000DE6E
      0000D6935200FDF9F600FEFEFD00E0B48900BA5C0000BA5C0000BA5C0000BA5C
      0000BA5C0000BE5E0000B2580000602F0000000142000000B9000000CD000000
      B6000000930000008C0000008E0000008C006074C600FCFCFE00F3F4FC001F38
      A9000000890000008E000000800000043400000142000000B9000000CD000000
      B6001C36AE00F3F4FC00FCFCFE006175C9000000890000008900000089000000
      89000000890000008E00000080000003320090470000F87B0000FA7C0000FEDF
      C000FADCBE00F7DABD00FADBBD00F9D9B900F8DABC00FDFAF800FFFFFF00FBF7
      F200D7A06A00BC5D0000BC5D00006A34000090470000F87B0000FA7C0000FCB2
      6A00FEF8F200FFFFFF00FEFBF800F9DABC00F8D8B900EDD5BD00EDD5BD00EDD5
      BE00EED7C000BC5D0000BC5D00006A340000000059000001D8000002DB00ACBC
      FB00A9B8F500A7B6F000A7B7F400A1B1F200A6B4F200F6F7FC00FFFFFF00EEF0
      FA003B53B70000008C0000008C0000043C00000059000001D8000002DB00405F
      EC00EEF0FE00FFFFFF00F6F7FE00A8B8F500A4B4F400A9B5E500A9B5E500ABB7
      E600AEBAE80000008C0000008C0000033900A04F0000FF912500FF840B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FFFFFF00FFFF
      FF00ECD3BA00BE5E0000BC5D000072380000A04F0000FF912500FF840B00FEDC
      BA00FFFFFF00FFFFFF00FFFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BE5E0000BC5D00007238000000006B00011BE200000BE300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFE00FFFFFF00FFFF
      FF00A2B0E10000008E0000008C000004430000006B00011BE2000009E1009CAD
      F300FFFFFF00FFFFFF00FCFCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000008E0000008C0000023F00A04F0000FF9F4100FF983300F7A0
      4A00FDA34B00FDA34A00FDA34A00FA9A3C00F1B88000FEFCFA00FFFFFF00EEC8
      A300D4751800C8630000B85B000066320000A04F0000FF9F4100FF983300F586
      1800FED0A300FFFFFF00FFFCFA00FCBD8000E9923C00E0954A00DF944A00DE94
      4B00DE934A00C8630000B85B00006632000000006B00193DEF000125E200193B
      DC00193CE300183BE300183BE3000A2EDD00667FED00F8FAFE00FFFFFF008295
      DF00000AA90000009A00000087000004390000006B00193DEF000125E200000F
      D4007D94EF00FFFFFF00F8FAFF006682FB000A2AC7001835BE001835BC001531
      B7001431B70000009A000000870000033600A04F0000FF983300FFBF8100FF7E
      0000F2780000FC7D0000FC7D0000FDA24900FDF0E300FFFFFF00EFC09200DA6D
      0200D2680000CA640000AA54000066320000A04F0000FF983300FFBF8100FF7E
      0000F2790200FEC79200FFFFFF00FFF1E300F39D4900DE6E0000DA6C0000DA6C
      0000D2680000CA640000AA5400006632000000006B000E32EF005A76F2000001
      E1000000D0000001DD000001DD00173AE300DAE1FC00FFFFFF006C82DD000001
      B2000000A70000009D00000077000004390000006B001539F6006581FD000007
      E7000001D0006881ED00FFFFFF00DAE2FF001839D7000000B6000000B1000000
      B1000000A70000009D000000770000043A0000000000EC750000FFD3A900FFAD
      5D00E8730000F0770000FC8E2200FFFAF500FFFFFF00F4BE8A00DA6D0200D66A
      0000CE660000D46900008E4600000000000000000000EC750000FFD3A900FFAD
      5D00E8730000F0780200FEC38A00FFFFFF00FFFAF500E9852200DA6C0000D66A
      0000CE660000D46900008E4600000000000000000000000AD20090A6FC002D50
      EA000000C3000000CD000017DD00F2F4FF00FFFFFF006B84EB000000B1000000
      AC000000A2000000A90000025B0000000000000000000007CF0093A9FF00385B
      F5000000C3000001CD005D78EB00FFFFFF00F2F4FF000015C4000000B1000000
      AC000000A2000000A900000159000000000000000000EC750000FFA04300FFE3
      C700FFAC5B00FA7C0000EF7E0E00FDD3AA00FEC89300EA770500E2700000DE6E
      0000E06F0000C46100008E4600000000000000000000EC750000FFA04300FFE3
      C700FFAC5B00FA7C0000EE790500FDC89300FED4AA00EB7C0E00E2700000DE6E
      0000E06F0000C46100008E46000000000000000000000000C8001034E400ABBA
      F3003C5EFA00000EE7000215DA0092A6F900748DF8000001C5000000BB000000
      B6000000B9000000960000025B0000000000000000000009D2001C40F000B7C6
      FF003355F1000004DD000001CB006982EB0091A5FA000007C7000000BB000000
      B6000000B9000000960000015900000000000000000000000000D2680000FFAD
      5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF881300FF881300FF81
      0500D66A00008A44000000000000000000000000000000000000D2680000FFAD
      5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF881300FF881300FF81
      0500D66A00008A440000000000000000000000000000000000000000A700294C
      E600C6D1FF007F98FF001D41F4000826F0000218EF00041CEF00000EE1000005
      E1000000AC0000025700000000000000000000000000000000000000A8003255
      EF00C6D1FF007992F9000C30E3000017E100010FE6000113E6000113E600000A
      E6000000AC00000154000000000000000000000000000000000000000000FF98
      3300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB87300FF9B3900E06F
      0000E06F0000000000000000000000000000000000000000000000000000FF98
      3300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB87300FF9B3900E06F
      0000E06F00000000000000000000000000000000000000000000000000000327
      E4001135F2007D96FF00ADBDFF0091A6FF00748FFF005574FC000529E1000002
      BB000002BB00000000000000000000000000000000000000000000000000082C
      E900082CE9007790F900ADBDFF008CA1FA006782F2004362EA000529E1000000
      B9000000B9000000000000000000000000000000000000000000000000000000
      000000000000E8730000FF8A1700FF952D00FF912500FC7D0000C66200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8730000FF8A1700FF952D00FF912500FC7D0000C66200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000CD000051EEF000E32F2000A2AF100000EEA000006A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000C3000010E1000021E100001AE1000001DD00000098000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E007E007E007E007F81FF81FF81FF81F00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 332
    Top = 28
    object Copytoclipboard1: TMenuItem
      Caption = 'Copy to clipboard'
      OnClick = Copytoclipboard1Click
    end
  end
end
