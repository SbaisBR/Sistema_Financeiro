unit U_viewAbrirCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_baseview, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SuperGrid, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TviewAbrirCaixa = class(Tviewbaselista1)
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

procedure TviewAbrirCaixa.FormShow(Sender: TObject);
begin
  inherited;
  cdsAbreCaixa.Open;
end;

end.
