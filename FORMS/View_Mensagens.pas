unit View_Mensagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_baselLista, ExtCtrls, StdCtrls, Buttons;

type
  TViewMensagens = class(Tviewbaselista)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

end.
