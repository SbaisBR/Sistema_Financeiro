unit View_Mensagens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_baselLista, ExtCtrls, StdCtrls, Buttons;

type
  TmyButtons = (mbSim, mbNao, mbOk);

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
    Class Function Mensagem(Texto :String; Titulo :String; Tipo: Char; Botoes: array of TmyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

uses View.TelaFundo;

{$R *.dfm}

{ TViewMensagens }

class function TViewMensagens.Mensagem(Texto, Titulo: String; Tipo: Char;
  Botoes: array of TmyButtons): Boolean;
Var
  I : Integer;
  view: TViewMensagens;
begin

  View := TViewMensagens.create(nil);
  try
    View.lblTitulo.Caption := Titulo;
    View.mmoTexto.Text     := Texto;
//    View.Caption           := TITULO;

    ViewTelaFundo.Show;

    for I := 0 to Length(Botoes) - 1 do
    begin
      case (Botoes[i]) of
        mbOk: begin
                View.btnOk.Visible := True;
                View.btnOk.Align   := AlRight;
              end;

        mbSim: begin
                 View.btnSim.Visible := True;
                 View.btnSim.Align   := AlRight;
               end;

        mbNao: begin
                  View.btnNao.Visible := True;
                  View.btnNao.Align   := AlRight;
               end;

        else begin
           View.btnOk.Visible := True;
           View.btnOk.Align   := AlRight;
        end;
      end;


    end;

  finally
    if (view <> nil) then
      FreeAndNil(View);
  end;
end;

end.
