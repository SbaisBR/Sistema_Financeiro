unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, JvExControls, JvSpeedButton, Buttons, jpeg,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, ActnList, XPStyleActnCtrls, ComCtrls;

type
  TFrmMenu = class(TForm)
    pn1: TPanel;
    Panel1: TPanel;
    ImageList1: TImageList;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    ActionManager1: TActionManager;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Cliente: TAction;
    Fornecedor: TAction;
    Prestador: TAction;
    Transportador: TAction;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    pnlSair: TPanel;
    pnlShapeShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    sbCL: TJvSpeedButton;
    sbPR: TJvSpeedButton;
    sbFR: TJvSpeedButton;
    sbTR: TJvSpeedButton;
    btnSair: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sbCLClick(Sender: TObject);
    procedure sbPRClick(Sender: TObject);
    procedure sbFRClick(Sender: TObject);
    procedure sbTRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses Cliente, dm, Fornecedor, Prestador, Transportador, U_login;

{$R *.dfm}

procedure TFrmMenu.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin
  frmLogin.Visible := False;
end;

procedure TFrmMenu.sbCLClick(Sender: TObject);
begin
  frmCliente := TFrmCliente.Create(nil);
  frmCliente.ShowModal;
end;

procedure TFrmMenu.sbFRClick(Sender: TObject);
begin
  FrmFornecedor := TFrmFornecedor.Create(nil);
  FrmFornecedor.ShowModal;
end;

procedure TFrmMenu.sbPRClick(Sender: TObject);
begin
  FrmPrestador := TfrmPrestador.Create(nil);
  FrmPrestador.ShowModal;
end;

procedure TFrmMenu.sbTRClick(Sender: TObject);
begin
  FrmTransportador := TfrmTransportador.Create(nil);
  FrmTransportador.ShowModal;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'DATA'+datetostr(Now);
  StatusBar1.Panels[1].Text := 'Horas'+TimeToStr(Now);
  StatusBar1.Panels[2].Text := 'Seja Bem Vindo'+Conexao.usuario;
  StatusBar1.Panels[3].Text := 'Seja Bem Vindo'+Conexao.Tipo;
end;

end.
