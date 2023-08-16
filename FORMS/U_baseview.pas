unit U_baseview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, Buttons, ComCtrls, ImgList,
  U_baselLista, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SuperGrid;


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
    SuperGrid1: TSuperGrid;
    sqlAbreCaixa: TSQLDataSet;
    dspAbreCaixa: TDataSetProvider;
    cdsAbreCaixa: TClientDataSet;
    dtsAbreCaixa: TDataSource;
    sqlAbreCaixaABR_CODIGO: TIntegerField;
    sqlAbreCaixaABR_DATAABERTURA: TDateField;
    sqlAbreCaixaABR_HRAABERTURA: TTimeField;
    sqlAbreCaixaABR_DTAFECHAMENTO: TDateField;
    sqlAbreCaixaABR_HRAFECHAMENTO: TTimeField;
    sqlAbreCaixaABR_VLRINICIAL: TFMTBCDField;
    sqlAbreCaixaABR_VLRFINAL: TFMTBCDField;
    sqlAbreCaixaABR_CODIGOUSUARIO: TIntegerField;
    sqlAbreCaixaABR_STATUS: TStringField;
    sqlAbreCaixaABR_OBSERVACAO: TStringField;
    cdsAbreCaixaABR_CODIGO: TIntegerField;
    cdsAbreCaixaABR_DATAABERTURA: TDateField;
    cdsAbreCaixaABR_HRAABERTURA: TTimeField;
    cdsAbreCaixaABR_DTAFECHAMENTO: TDateField;
    cdsAbreCaixaABR_HRAFECHAMENTO: TTimeField;
    cdsAbreCaixaABR_VLRINICIAL: TFMTBCDField;
    cdsAbreCaixaABR_VLRFINAL: TFMTBCDField;
    cdsAbreCaixaABR_CODIGOUSUARIO: TIntegerField;
    cdsAbreCaixaABR_STATUS: TStringField;
    cdsAbreCaixaABR_OBSERVACAO: TStringField;
    lblTituloCadastro: TLabel;
    DataSource1: TDataSource;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
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




procedure Tviewbaselista1.btnCancelarClick(Sender: TObject);
begin //Cancelar
  inherited;
  cdsAbreCaixa.Cancel;
  cdsAbreCaixa.CancelUpdates;
  MessageDlg('A��o cancelada com sucesso', MTINFORMATION, [MBOK], 0);
  Page_panelconteudo.ActivePage := Card_pesquisar;
end;

procedure Tviewbaselista1.btnEditarClick(Sender: TObject);
begin //Editar
  inherited;
  page_panelconteudo.ActivePage := Card_cadastro;
  if MessageDlg('Deseja alterar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
   begin
      cdsAbreCaixa.edit;
   end
   else
     Exit;
end;

procedure Tviewbaselista1.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure Tviewbaselista1.btnNovoClick(Sender: TObject);
var proximo : integer;
begin //Novo
  inherited;
  page_panelconteudo.ActivePage := Card_cadastro;
  cdsAbreCaixa.Open;   //Abre a tabela
  cdsAbreCaixa.Last;   // Vai para o ultimo registro da tabela
  proximo:= cdsAbreCaixaABR_CODIGO.Asinteger + 1;   //Recebe o valor do ultimo registro e vai para o proximo '+1'
  cdsAbreCaixa.Append;  //Adiciona mais uma coluna em branco para adionar um novo registro
  cdsAbreCaixaABR_CODIGO.Asinteger := proximo;   //O campo ID recebe o valor da variavel proximo
  //cdsAbreCaixaABR_DATAABERTURA.AsDateTime:=Date;  //O campo CADASTRO recebe a data atualizada
  //Lock.Enabled      := True;}
end;

procedure Tviewbaselista1.btnSalvarClick(Sender: TObject);
begin  //Salvar
  inherited;
  MessageDlg('Registro salvo com sucesso!', MtInformation, [mbOk], 0);
  cdsAbreCaixa.Post;
  cdsAbreCaixa.Applyupdates(0);
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
