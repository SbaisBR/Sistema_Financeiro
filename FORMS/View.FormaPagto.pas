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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cdsFormaPGTO: TClientDataSet;
    dspFormaPGTO: TDataSetProvider;
    sqlFormaPGTO: TSQLDataSet;
    dtsFormaPGTO: TDataSource;
    cdsFormaPGTOFOR_CODIGO: TIntegerField;
    cdsFormaPGTOFOR_DESCRICAO: TStringField;
    cdsFormaPGTOFOR_GERARECEBER: TStringField;
    procedure DBG_FormaPAGTODrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewFormaPagto: TviewFormaPagto;

implementation

{$R *.dfm}

procedure TviewFormaPagto.btnFecharClick(Sender: TObject);
begin
  inherited;
  Self.Close;
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

procedure TviewFormaPagto.FormShow(Sender: TObject);
begin
  inherited;
  cdsFormaPGTO.Open;
  DBG_formaPAGTO.SetFocus;
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
