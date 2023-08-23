unit View.FormaPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_baselLista, Buttons, ExtCtrls, StdCtrls;

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

end.
