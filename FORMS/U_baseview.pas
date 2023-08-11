unit U_baseview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, Buttons, ComCtrls, ImgList,
  U_baselLista;


type
  Tviewbaselista1 = class(Tviewbaselista)
  pnlTopo: TPanel;
  pnlRodape: TPanel;
  pnlLinhaFundo: TPanel;
  pnlImgLogo: TPanel;
  imgLogoAzul: TImage;
  imgLogoCinza: TImage;
  lblTitulo: TLabel;
  pnlFechar: TPanel;
  btnFechar: TSpeedButton;
  btnEditar: TSpeedButton;
  btnCancelar: TSpeedButton;
  btnSalvar: TSpeedButton;
  Page_panelconteudo: TPageControl;
  Card_cadastro: TTabSheet;
  Card_pesquisar: TTabSheet;
  pnlFiltroPesquisa: TPanel;
  pnlPesquisar: TPanel;
  edtPesquisar: TEdit;
  pnlFiltro: TPanel;
  lblPesquisa: TLabel;
  pnlFiltroCadastro: TPanel;
  btnVoltar: TSpeedButton;
  btnNovo: TSpeedButton;
  procedure imgLogoCinzaMouseLeave(Sender: TObject);
  procedure imgLogoAzulMouseEnter(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure btnVoltarClick(Sender: TObject);
  procedure btnFecharClick(Sender: TObject);
  procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewbaselista1: Tviewbaselista1;

implementation

{$R *.dfm}




procedure Tviewbaselista1.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure Tviewbaselista1.btnNovoClick(Sender: TObject);
begin //Novo
  inherited;
  page_panelconteudo.ActivePage := Card_cadastro;
end;

procedure Tviewbaselista1.btnVoltarClick(Sender: TObject);
begin //Volta Pesquisa
  inherited;
  Page_panelconteudo.ActivePage := Card_pesquisar;
end;

procedure Tviewbaselista1.FormShow(Sender: TObject);
begin
  inherited;
  Page_panelconteudo.ActivePage := Card_pesquisar;
end;

procedure Tviewbaselista1.imgLogoAzulMouseEnter(Sender: TObject);
begin
  inherited;
  imgLogoAzul.Visible := False;
  imgLogoCinza.Visible := True;
end;

procedure Tviewbaselista1.imgLogoCinzaMouseLeave(Sender: TObject);
begin
  inherited;
  imgLogoAzul.Visible := True;
  imgLogoCinza.Visible := False;
end;

end.
