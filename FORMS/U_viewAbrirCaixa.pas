unit U_viewAbrirCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_baseview, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SuperGrid, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls;

type
  TviewAbrirCaixa = class(Tviewbaselista1)
    edVlrIncial: TDBEdit;
    lblVlrInicial: TLabel;
    lblOBS: TLabel;
    edOBS: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewAbrirCaixa: TviewAbrirCaixa;

implementation

{$R *.dfm}

procedure TviewAbrirCaixa.btnNovoClick(Sender: TObject);
begin
  inherited;
  cdsAbreCaixaABR_DATAABERTURA.AsDateTime := Date;
  cdsAbreCaixaABR_HRAABERTURA.AsDateTime :=Time;
  cdsAbreCaixaABR_CODIGOUSUARIO.AsInteger :=1;
  cdsAbreCaixaABR_STATUS.AsString := 'ABERTO';
  edVlrIncial.SetFocus;
end;

procedure TviewAbrirCaixa.FormShow(Sender: TObject);
begin
  inherited;
  cdsAbreCaixa.Open;
end;

end.
