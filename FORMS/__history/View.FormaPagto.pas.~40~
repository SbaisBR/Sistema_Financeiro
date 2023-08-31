unit View.FormaPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_baselLista, Buttons, ExtCtrls, StdCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SuperGrid, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TviewFormaPagto = class(Tviewbaselista)
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlImgLogo: TPanel;
    imgLogoCinza: TImage;
    imgLogoAzul: TImage;
    pnlFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlRodape: TPanel;
    pnlTotais: TPanel;
    pnlFormasPGTO: TPanel;
    pnlFormasEscolhidas: TPanel;
    DBG_FormaPAGTO: TSuperGrid;
    DBG_FormaPAGTOEscolhidas: TSuperGrid;
    pblBtnSalvar: TPanel;
    btnSalvar: TSpeedButton;
    edtVlrRestante: TEdit;
    edtVenda: TEdit;
    edtFaturado: TEdit;
    lblVenda: TLabel;
    lblFaturado: TLabel;
    lblRestante: TLabel;
    cdsFormaPGTO: TClientDataSet;
    dspFormaPGTO: TDataSetProvider;
    sqlFormaPGTO: TSQLDataSet;
    dtsFormaPGTO: TDataSource;
    cdsFormaPGTOFOR_CODIGO: TIntegerField;
    cdsFormaPGTOFOR_DESCRICAO: TStringField;
    cdsFormaPGTOFOR_GERARECEBER: TStringField;
    pnlValor: TPanel;
    pnlTitValor: TPanel;
    lblTitValor: TLabel;
    edtVlrFaturar: TEdit;
    pnlBtnOk: TPanel;
    btnOk: TSpeedButton;
    _cdsFormaPGTO: TClientDataSet;
    _dtsFormaPGTO: TDataSource;
    sql_FormaPGTO: TSQLDataSet;
    dsp_FormaPGTO: TDataSetProvider;
    _cdsFormaPGTOID_FORMAPGTO: TIntegerField;
    _cdsFormaPGTOVALOR_PAGTO: TFMTBCDField;
    _cdsFormaPGTONOME_FORMAPAGTO: TStringField;
    _cdsFormaPGTOGERAR_RECEBER: TStringField;
    _cdsFormaPGTOID_CLIENTE: TIntegerField;
    sqlCaixa: TSQLDataSet;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    cdsCaixaCAI_ID: TIntegerField;
    cdsCaixaCAI_DATAHORA: TDateField;
    cdsCaixaCAI_TIPO: TStringField;
    cdsCaixaCAI_VALOR: TFMTBCDField;
    cdsCaixaCAI_DESCRICAO: TStringField;
    cdsCaixaCAI_IDFORMAPGTO: TIntegerField;
    sqlCaixaCAI_ID: TIntegerField;
    sqlCaixaCAI_DATAHORA: TDateField;
    sqlCaixaCAI_TIPO: TStringField;
    sqlCaixaCAI_VALOR: TFMTBCDField;
    sqlCaixaCAI_DESCRICAO: TStringField;
    sqlCaixaCAI_IDFORMAPGTO: TIntegerField;
    procedure btnSalvarClick(Sender: TObject);
    procedure DBG_FormaPAGTOEscolhidasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnOkClick(Sender: TObject);
    procedure DBG_FormaPAGTODblClick(Sender: TObject);
    procedure DBG_FormaPAGTODrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    FValorVenda : Double;
  public
    property ValorVenda: Double read FValorVenda write FValorVenda;
   // property ValorVenda: Double read FValorVenda write FValorVenda;


  end;

var
  viewFormaPagto: TviewFormaPagto;

implementation

uses U_viewPrinc;

{$R *.dfm}

procedure TviewFormaPagto.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TviewFormaPagto.btnOkClick(Sender: TObject);
var
  valor_faturado, valor_restante: double;
begin
  inherited;
  _cdsFormaPGTO.Open;
  _cdsFormaPGTO.Insert;
  _cdsFormaPGTOID_FORMAPGTO.AsInteger   := cdsFormaPGTOFOR_CODIGO.AsInteger;
  _cdsFormaPGTOVALOR_PAGTO.AsFloat      := StrToFloatDef(edtVlrFaturar.Text, 0);
  _cdsFormaPGTONOME_FORMAPAGTO.AsString := cdsFormaPGTOFOR_DESCRICAO.AsString;
  _cdsFormaPGTOGERAR_RECEBER.AsString   := cdsFormaPGTOFOR_GERARECEBER.AsString;
  _cdsFormaPGTOID_CLIENTE.AsInteger     := + 1;
  //_cdsFormaPGTO

  _cdsFormaPGTO.Post;
 
  // Atualizar o valor total do caixa
  FValorVenda := FValorVenda - _cdsFormaPGTOVALOR_PAGTO.AsFloat;

  // Atualizar o valor faturado
  valor_faturado := StrToFloatDef(edtFaturado.Text, 0) + _cdsFormaPGTOVALOR_PAGTO.AsFloat;
  edtFaturado.Text := FloatToStr(valor_faturado);

  // Calculando o valor restante
  valor_restante := FValorVenda;
  edtVlrRestante.Text := FloatToStr(valor_restante);

  edtVlrFaturar.Clear;
  pnlValor.Visible := False;
  DBG_FormaPAGTO.SetFocus;

end;

procedure TviewFormaPagto.btnSalvarClick(Sender: TObject);
var
  proximo : integer;
begin //SAlvar
 // inherited;
  _cdsFormaPGTO.First;
  while not  _cdsFormaPGTO.Eof do
  begin
    cdsCaixa.Open;
    cdsCAixa.Edit;
    if cdsCaixaCAI_ID.IsNull then
    begin
      cdsCaixa.insert;
      proximo := cdsCaixaCAI_ID.AsInteger + 1;
      cdsCaixaCAI_ID.AsInteger := proximo;
    end;
    cdsCaixaCAI_DATAHORA.ASDateTime   := Date;
   // cdsCaixaCAI_TIPO.AsString		      := viewPrincipal.cdsTBL_Iten;
    cdsCaixaCAI_VALOR.AsFloat		      := _cdsFormaPGTOVALOR_PAGTO.AsInteger;
    cdsCaixaCAI_DESCRICAO.AsString	  := viewPrincipal.cdsTBL_Itensnome_produto.AsString;
    cdsCaixaCAI_IDFORMAPGTO.AsInteger := _cdsFormaPGTOID_FORMAPGTO.AsInteger;
//    cdsCaixaCAI_IDVENDA.AsInteger     := viewPrincipal.cdsTBL_ItensCod_Item.AsInteger;
    cdsCaixa.Post;
      //GravandoCaixa


    cdsCaixa.ApplyUpdates(0);
    _cdsFormaPGTO.Next;


    ShowMessage('Salvo com sucesso!');
  end;
end;

procedure TviewFormaPagto.DBG_FormaPAGTODblClick(Sender: TObject);
begin
  if StrToFloatDef(edtVlrRestante.Text, 0) > 0 then
  begin
     pnlValor.Visible := True;
     edtVlrFaturar.Text := edtVlrRestante.Text;
     edtVlrFaturar.SetFocus;
  end
  else begin
    ShowMessage('Não há mais valor para faturar.');
  end;
end;

procedure TviewFormaPagto.DBG_FormaPAGTODrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  //Deixando a cor branca
  if Column.Field <> nil then
  begin
    if gdSelected in State then
    begin
      DBG_formaPAGTO.Canvas.Brush.Color := clHighlight;
      DBG_formaPAGTO.Canvas.Font.Color := clHighlightText;
    end
    else
    begin
      DBG_formaPAGTO.Canvas.Brush.Color := clWhite;
      DBG_formaPAGTO.Canvas.Font.Color := clBlack;
    end;
    DBG_formaPAGTO.Canvas.FillRect(Rect);
    DBG_formaPAGTO.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Column.Field.DisplayText);
  end;
end;

procedure TviewFormaPagto.DBG_FormaPAGTOEscolhidasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if Column.Field <> nil then
  begin
    if gdSelected in State then
    begin
      DBG_FormaPAGTOEscolhidas.Canvas.Brush.Color := clHighlight;
      DBG_FormaPAGTOEscolhidas.Canvas.Font.Color := clHighlightText;
    end
    else
    begin
      DBG_FormaPAGTOEscolhidas.Canvas.Brush.Color := clWhite;
      DBG_FormaPAGTOEscolhidas.Canvas.Font.Color := clBlack;
    end;
    DBG_FormaPAGTOEscolhidas.Canvas.FillRect(Rect);
    DBG_FormaPAGTOEscolhidas.Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Column.Field.DisplayText);
  end;
end;

procedure TviewFormaPagto.FormShow(Sender: TObject);
begin
  inherited;
  cdsFormaPGTO.Open;
  DBG_formaPAGTO.SetFocus;

  edtVenda.Text    := FloatToStr(FValorVenda);
  edtVlrRestante.Text := FloatToStr(FValorVenda);



end;

procedure TviewFormaPagto.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_dragmove = $f012;
begin // Mover o form sem bordas
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
inherited;
end;

end.
