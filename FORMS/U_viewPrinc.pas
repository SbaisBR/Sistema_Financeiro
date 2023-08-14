unit U_viewPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  SuperGrid;

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

uses U_viewAbrirCaixa;

{$R *.dfm}

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
