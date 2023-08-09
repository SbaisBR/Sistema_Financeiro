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
  btnNovo: TSpeedButton;
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
  procedure btnNovoClick(Sender: TObject);
  procedure btnVoltarClick(Sender: TObject);
  procedure FormShow(Sender: TObject);
  procedure btnFecharClick(Sender: TObject);
  procedure imgLogoCinzaMouseLeave(Sender: TObject);
  procedure imgLogoAzulMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewbaselista1: Tviewbaselista1;

implementation

{$R *.dfm}

end.
