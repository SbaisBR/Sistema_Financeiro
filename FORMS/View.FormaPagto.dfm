inherited viewFormaPagto: TviewFormaPagto
  BorderStyle = bsNone
  Caption = 'viewFormaPagto'
  ClientHeight = 550
  ClientWidth = 900
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 900
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 36
    Cursor = crHandPoint
    Align = alTop
    BevelOuter = bvNone
    Color = 4079682
    TabOrder = 0
    OnMouseDown = pnlTopoMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 45
      Top = 1
      Width = 114
      Height = 34
      Cursor = crHandPoint
      Margins.Left = 5
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Faturamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnMouseDown = pnlTopoMouseDown
      ExplicitHeight = 24
    end
    object pnlImgLogo: TPanel
      Left = 0
      Top = 0
      Width = 40
      Height = 36
      Align = alLeft
      BevelOuter = bvNone
      Color = 4079682
      TabOrder = 0
      object imgLogoCinza: TImage
        Left = 0
        Top = 0
        Width = 40
        Height = 36
        Align = alClient
        Center = True
        Picture.Data = {
          07544269746D6170360C0000424D360C00000000000036000000280000002000
          0000200000000100180000000000000C0000C40E0000C40E0000000000000000
          0000111111000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000010
          10100101018383838989898989898989898989898989893A3A3A525252A9A9A9
          A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9
          A9A9A9A9A9A9A9A9A9A9606060000000414141AFAFAFAFAFAF9B9B9B02020201
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B16969692A2A2A090909737373ADADAD0B0B0B56565601
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B16969694040409696960404040E0E0E434343A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B1696969404040A9A9A97777770C0C0CAFAFAFA8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A7A7A7B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1A3A3A32C2C2C0000000000000000002424249F9F9FB1B1
          B1B1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B19F9F9F040404171717909090AEAEAE9393932020200202029999
          99B1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1161616242424B1B1B1B1B1B1B1B1B1B1B1B1B1B1B13636360D0D
          0DB1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1A1A1A1000000A4A4A4B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1A9A9A90000
          00969696B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1848484060606B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B10C0C
          0C777777B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1808080090909B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B10E0E
          0E6F6F6FB1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B18A8A8A171717B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B12424
          24808080B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F414141595959B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B1696969404040A9A9A9868686161616B1B1B1A8A8A801
          01010101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F4A4A4A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E8E8E898989898989
          8989898989898989898989898989898989898989898989898989898989898989
          892020204A4A4A8080803D3D3D2C2C2C8989896969693E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F5E5E5E6B6B6B8F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8C8C8C3232328F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101018888888F8F8F8F8F8F8F8F8F8F8F8F1F1F1F3939398F8F8F8F8F8F
          8F8F8F8F8F8F8F8F8F8F8F8F8787870000008F8F8F8F8F8F8F8F8F8F8F8F8F8F
          8F2525255050508686864444443333338F8F8F7070703E40423E40423E40423E
          40420101015252525959595959595959595959590B0B0B141414595959595959
          5959595959595959595959594F4F4F0000005959595959595959595959595959
          591111112222225050501919191313135959593A3A3A3E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40420E0E0E1818184B4B4B4B4B4B
          4B4B4B4B4B4B3333330202024242420000004B4B4B4B4B4B4B4B4B4B4B4B4B4B
          4B0A0A0A1F1F1F3E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40424B4B4B3E40423E4042
          3E40423E40422727270202023E40420000003E40423E40423E40423E40423E40
          421B1B1B3E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40421919193E40423E4042
          3E40423E40423E40420000004F4F4F1212123E40423E40423E40423E40423E40
          420202023E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40423E40427878783E4042
          3E40423E40423E40423737370000007676763E40423E40423E40423E40422727
          273E40423E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40423E40420101013D3D3D
          2727272727277070700505050101011313138D8D8D3E40429999992727273E40
          423E40423E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40423E40423E4042282828
          0303030000001010107171713E40424E4E4E0808080000000505053E40423E40
          423E40423E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          4042}
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 152
        ExplicitHeight = 47
      end
      object imgLogoAzul: TImage
        Left = 0
        Top = 0
        Width = 40
        Height = 36
        Align = alClient
        Center = True
        Picture.Data = {
          07544269746D6170360C0000424D360C00000000000036000000280000002000
          0000200000000100180000000000000C0000C40E0000C40E0000000000000000
          0000151412000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000015
          1316010101B5843AC38E3FC38E3FC38E3FC38E3FC38E3F5C431D47305F9767CC
          9767CC9767CC9767CC9767CC9767CC9767CC9767CC9767CC9767CC9767CC9767
          CC9767CC9767CC9767CC50366C0000003C2A509F71D19F71D1865FB109060C01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A74312041150E1D5D427B9D70CF1811204A326301
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A743F28538052B30C08101C14243E2A549766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A743F28539861D4613E8818121D9F6CD79766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDB9366C9A26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDB8E63C2272240030408000000030406211F398660BCA26E
          DBA26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDB885FBD08091019192E7154A29E6BD67856A91F1D3605070C7F5B
          B2A26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDB1A192D201F38A16EDAA26EDBA26EDBA26EDBA26EDB2A26461213
          22A26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDB8A60BF0202048E64C4A26EDBA26EDBA26EDBA26EDBA26EDB9668CD0304
          077D58AEA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDB664B920A0C15A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDB1112
          20584381A26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDB5F488B0D0F1AA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDB1414
          24513F79A26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDB6E4E9A1C192EA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDB231F
          3A62488CA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436248204C3366A26EDB
          A26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26EDBA26E
          DBA26EDBA26EDBA26EDB563A743F28539861D46F479B241B2CA26EDB9766CC01
          0101010101C28D3ED19843D19843D19843D19843D198436D4F23000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000003E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843D19843D09743C38E3FC38E3F
          C38E3FC38E3FC38E3FC38E3FC38E3FC38E3FC38E3FC38E3FC38E3FC38E3FC38E
          3F42321B704F23BA833A62451F513B1DC38E3F8F682E3E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843D19843D19843D19843D19843
          D19843D19843D19843D19843D19843D19843D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843D19843D19843D19843D19843
          D19843D19843D19843D19843D19843D19843D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843D19843D19843D19843D19843
          D19843D19843D19843D19843D19843D19843D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843D19843D19843D19843D19843
          D19843D19843D19843D19843D19843D19843D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843D19843D19843D19843D19843
          D19843D19843D19843D19843D19843D19843D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D19843735935886737D19843D19843
          D19843D19843D19843D19843C99241423727D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          4042010101C28D3ED19843D19843D19843D198432C2825453A2DD19843D19843
          D19843D19843D19843D19843B98841000000D19843D19843D19843D19843D198
          4347361E775425C78C3E694A2156401FD19843986F313E40423E40423E40423E
          40420101017455257D5B287D5B287D5B287D5B281A18162A231B7D5B287D5B28
          7D5B287D5B287D5B287D5B286F52270000007D5B287D5B287D5B287D5B287D5B
          282B21124833167754253F2C143326127D5B285C431D3E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40421112151B1C1F53504D53504D
          53504D53504D38383703040548474400000053504D53504D53504D53504D5350
          4D0E0E102424243E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40424B505B3E40423E4042
          3E40423E40423E40420506093E40420203053E40423E40423E40423E40423E40
          421C20273E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40421A1F273E40423E4042
          3E40423E40423E40420102044F545E14181F3E40423E40423E40423E40423E40
          420406083E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40423E4042757A843E4042
          3E40423E40423E4042373C470000007177823E40423E40423E40423E40421A1F
          273E40423E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40423E40420304063D424D
          B7B9BF3E40426C727C070A0F04050814181F8C90973E4042999CA2282C363E40
          423E40423E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          40423E40423E40423E40423E40423E40423E40423E40423E40423E40422A2E38
          05070B02030512161E6E747E3E40424E535C0B0D13020204080A0E3E40423E40
          423E40423E40423E40423E40423E40423E40423E40423E40423E40423E40423E
          4042}
        OnMouseDown = pnlTopoMouseDown
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 152
        ExplicitHeight = 47
      end
    end
    object pnlFechar: TPanel
      Left = 834
      Top = 0
      Width = 66
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Color = 46079
      TabOrder = 1
      object btnFechar: TSpeedButton
        Left = 0
        Top = 0
        Width = 66
        Height = 36
        Cursor = crHandPoint
        Align = alClient
        Caption = '[SAIR]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnFecharClick
        ExplicitTop = -3
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 509
    Width = 900
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 4079682
    TabOrder = 1
    object pblBtnSalvar: TPanel
      Left = 760
      Top = 0
      Width = 140
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      Color = 45056
      TabOrder = 0
      object btnSalvar: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 134
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = '[SALVAR]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 80
        ExplicitTop = 8
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object pnlTotais: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 389
    Width = 860
    Height = 100
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    BevelOuter = bvNone
    Color = 4079682
    TabOrder = 2
    object lblVenda: TLabel
      Left = 60
      Top = 24
      Width = 136
      Height = 24
      Caption = 'Valor da Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblFaturado: TLabel
      Left = 335
      Top = 24
      Width = 131
      Height = 24
      Caption = 'Valor Faturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblRestante: TLabel
      Left = 610
      Top = 24
      Width = 131
      Height = 24
      Caption = 'Valor Restante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtRestante: TEdit
      AlignWithMargins = True
      Left = 610
      Top = 50
      Width = 185
      Height = 30
      Margins.Left = 60
      Margins.Top = 50
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 4079682
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object edtVenda: TEdit
      AlignWithMargins = True
      Left = 60
      Top = 50
      Width = 185
      Height = 30
      Margins.Left = 60
      Margins.Top = 50
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 4079682
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object edtFaturado: TEdit
      AlignWithMargins = True
      Left = 335
      Top = 50
      Width = 185
      Height = 30
      Margins.Left = 60
      Margins.Top = 50
      Margins.Right = 30
      Margins.Bottom = 20
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 4079682
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
  end
  object pnlFormasPGTO: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 56
    Width = 245
    Height = 313
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    object DBG_FormaPAGTO: TSuperGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 235
      Height = 303
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      DataSource = dtsFormaPGTO
      FixedColor = 4079682
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBG_FormaPAGTODrawColumnCell
      TitleButtons = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 24
      TitleRowHeight = 25
      CorColOrdenado = clWhite
      Columns = <
        item
          Expanded = False
          FieldName = 'FOR_DESCRICAO'
          Title.Caption = '[FORMAS DE PGTO]'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -17
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 227
          Visible = True
        end>
    end
  end
  object pnlFormasEscolhidas: TPanel
    AlignWithMargins = True
    Left = 285
    Top = 56
    Width = 595
    Height = 313
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
    object DBG_FormaPAGTOEscolhidas: TSuperGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 585
      Height = 303
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      FixedColor = 4079682
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleButtons = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 24
      TitleRowHeight = 17
      CorColOrdenado = clWhite
    end
  end
  object cdsFormaPGTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFormaPGTO'
    Left = 137
    Top = 272
    object cdsFormaPGTOFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
      Required = True
    end
    object cdsFormaPGTOFOR_DESCRICAO: TStringField
      FieldName = 'FOR_DESCRICAO'
      Size = 150
    end
    object cdsFormaPGTOFOR_GERARECEBER: TStringField
      FieldName = 'FOR_GERARECEBER'
      FixedChar = True
      Size = 2
    end
  end
  object dspFormaPGTO: TDataSetProvider
    DataSet = sqlFormaPGTO
    Left = 104
    Top = 272
  end
  object sqlFormaPGTO: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM FORMASPAGAMENTOS ORDER BY FOR_CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao.Conexao
    Left = 72
    Top = 272
  end
  object dtsFormaPGTO: TDataSource
    DataSet = cdsFormaPGTO
    Left = 184
    Top = 272
  end
end
