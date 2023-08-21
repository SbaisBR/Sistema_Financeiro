unit U_viewPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  SuperGrid, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TviewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlLinhaRodape: TPanel;
    pnlRodape: TPanel;
    pnlConsultaProduto: TPanel;
    pnlListaProdutos: TPanel;
    pnlBackground: TPanel;
    pnlTopConsultaProduto: TPanel;
    pnlTituloConsultaProdutos: TPanel;
    edtCodBarras: TEdit;
    lblCodigodeBarras: TLabel;
    pnlRodapeConsultaProduto: TPanel;
    pnlNomeProduto: TPanel;
    imgLogoProduto: TImage;
    pnlLogoEmpresa: TPanel;
    pnlLogo: TPanel;
    pnlTextoEmpresa: TPanel;
    lblNomeEmpresa: TLabel;
    pnllineLogoEmpresa: TPanel;
    pnlHora: TPanel;
    imgLogoEmpresaAmarelo: TImage;
    imgLogoEmpresa: TImage;
    lblHora: TLabel;
    pnlCidade: TPanel;
    lblVersao: TLabel;
    lblCidade: TLabel;
    pnlCaixaLivre: TPanel;
    lblCaixaLivre: TLabel;
    lblSubTotal: TLabel;
    pnlQtditem: TPanel;
    lblNomeProduto: TLabel;
    lblQTD: TLabel;
    edtQTD: TEdit;
    lblValorUnitario: TLabel;
    edtValorUnitario: TEdit;
    pnlTotalPagar: TPanel;
    lblTotalAPagar: TLabel;
    edtTotalApagar: TEdit;
    DBG_produtos: TSuperGrid;
    lblAbreCaixa: TLabel;
    sqlCodBar: TSQLDataSet;
    dspCodBar: TDataSetProvider;
    cdsCodBar: TClientDataSet;
    dtsCodBar: TDataSource;
    cdsCodBarID: TIntegerField;
    cdsCodBarDESCRICAO: TStringField;
    cdsCodBarEAN: TStringField;
    edtSubTotal: TEdit;
    sqlTBl_Itens: TSQLDataSet;
    dspTBL_Itens: TDataSetProvider;
    cdsTBL_Itens: TClientDataSet;
    dtsTBL_Itens: TDataSource;
    cdsCodBarVALORUNIT: TFMTBCDField;
    cdsTBL_ItensCod_Item: TIntegerField;
    cdsTBL_Itensnome_produto: TStringField;
    cdsTBL_ItensCod_PRODUTO: TIntegerField;
    cdsTBL_ItensQTDE: TFMTBCDField;
    cdsTBL_ItensVALORUNIT: TFMTBCDField;
    cdsTBL_ItensDESCONTO: TFMTBCDField;
    cdsTBL_ItensVALORTOTAL: TFMTBCDField;
    procedure FormResize(Sender: TObject);
    procedure edtCodBarrasExit(Sender: TObject);
    procedure lblAbreCaixaClick(Sender: TObject);
    procedure imgLogoEmpresaAmareloClick(Sender: TObject);
    procedure imgLogoEmpresaAmareloMouseLeave(Sender: TObject);
    procedure imgLogoEmpresaMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewPrincipal: TviewPrincipal;

implementation

uses U_viewAbrirCaixa, service.cadastro;

{$R *.dfm}

procedure TviewPrincipal.edtCodBarrasExit(Sender: TObject);
Var QTD, VLR_UNIT,VLR_SUBTOTAL : Double;
begin
  if Length(edtCodBarras.Text) > 0 then
  begin
    cdsCodBar.Close; //Filtra pelo c�digo de barras
    sqlCodBar.commandText := 'SELECT * FROM CADPRODUTO WHERE EAN LIKE  ''%'+edtCodBarras.Text+'%''';
    cdsCodBar.Open;

    if not cdsCodBar.IsEmpty then //N�o insere nada caso n�o encontre c�digo de barras
    begin
      VLR_UNIT := (cdsCodBarVALORUNIT.AsCurrency);
      QTD := StrToFloatDef(edtQTD.Text,1);
      VLR_SUBTOTAL := VLR_UNIT * QTD; //Multiplica a unidade pela quantidade
      edtSubTOTAL.Text := FloatToStr(VLR_SUBTOTAL);
      edtVAlorUnitario.Text := FloatToStr(VLR_UNIT);

      cdsTBL_Itens.Open;
      cdsTBL_Itens.Insert;
      cdsTBL_ItensCod_Produto.AsInteger := cdsCodBarID.AsInteger;
      cdsTBL_ItensQTDE.AsFloat          := QTD;
      cdsTBL_ItensVALORUNIT.AsFloat     := VLR_UNIT;
      cdsTBL_ItensDESCONTO.AsFloat      := 0;
      cdsTBL_ItensVALORTOTAL.AsFloat    := VLR_SUBTOTAL;
      cdsTBL_Itensnome_produto.AsString := cdsCodBarDESCRICAO.AsString;
      cdsTBL_Itens.Post;

      edtCodBarras.Clear;
      edtCodBarras.SetFocus;
    end
    else
    ShowMessage('Nenhum produto encontrado com o c�digo de barras especificado.');
  end;
end;

procedure TviewPrincipal.FormResize(Sender: TObject);
begin
  ServiceCadastro.DimensionarGrid(DBG_produtos);
end;

procedure TviewPrincipal.imgLogoEmpresaAmareloClick(Sender: TObject);
begin
  ShowMessage('Empresa');
end;

procedure TviewPrincipal.imgLogoEmpresaAmareloMouseLeave(Sender: TObject);
begin //Mouse Leave
  imgLogoEmpresa.Visible        := True;
  imgLogoEmpresaAmarelo.Visible := False;
end;

procedure TviewPrincipal.imgLogoEmpresaMouseEnter(Sender: TObject);
begin //Mouse enter
  imgLogoEmpresa.Visible        := False;
  imgLogoEmpresaAmarelo.Visible := True;
end;

procedure TviewPrincipal.lblAbreCaixaClick(Sender: TObject);
begin //Abrir Caixa
  viewAbrirCaixa := TviewAbrirCaixa.Create(Self);
  try
    viewAbrirCaixa.Showmodal;
  finally
    FreeAndNil(viewAbrirCaixa);
  end;
end;

end.
