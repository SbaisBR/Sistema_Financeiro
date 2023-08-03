unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, JvExControls, JvSpeedButton, Buttons, jpeg,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, ActnList, XPStyleActnCtrls, ComCtrls,
  StdCtrls;

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
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    sbCL: TJvSpeedButton;
    sbPR: TJvSpeedButton;
    sbFR: TJvSpeedButton;
    sbTR: TJvSpeedButton;
    btnSair: TSpeedButton;
    Panel4: TPanel;
    lblTituloEmpresa: TLabel;
    pnlUser: TPanel;
    imgUser: TImage;
    procedure imgUserClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sbCLClick(Sender: TObject);
    procedure sbPRClick(Sender: TObject);
    procedure sbFRClick(Sender: TObject);
    procedure sbTRClick(Sender: TObject);
  private
    { Private declarations }
    procedure GET_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses Cliente, dm, Fornecedor, Prestador, Transportador, U_login, U_User;

{$R *.dfm}

procedure TFrmMenu.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmMenu.FormShow(Sender: TObject);
begin
  GET_LineMENU(sbCL);
end;

procedure TFrmMenu.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left    := 0;
  ShapeMenu.Top     := 0;
  ShapeMenu.Height  := TJvSpeedButton(Sender).Height;
  ShapeMenu.Top  := TJvSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TFrmMenu.imgUserClick(Sender: TObject);
begin
  frmUser := TFrmUser.Create(nil);
  frmUser.ShowModal;
end;

procedure TFrmMenu.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TFrmMenu.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

procedure TFrmMenu.sbCLClick(Sender: TObject);
begin //Clientes
  GET_LineMENU(Sender);
  frmCliente := TFrmCliente.Create(nil);
  frmCliente.ShowModal;
end;

procedure TFrmMenu.sbFRClick(Sender: TObject);
begin //Fornecedor
  GET_LineMENU(Sender);
  FrmFornecedor := TFrmFornecedor.Create(nil);
  FrmFornecedor.ShowModal;
end;

procedure TFrmMenu.sbPRClick(Sender: TObject);
begin //Prestador
  GET_LineMENU(Sender);
  FrmPrestador := TfrmPrestador.Create(nil);
  FrmPrestador.ShowModal;
end;

procedure TFrmMenu.sbTRClick(Sender: TObject);
begin //Transportador
  GET_LineMENU(Sender);
  FrmTransportador := TfrmTransportador.Create(nil);
  FrmTransportador.ShowModal;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'DATA'+datetostr(Now);
  StatusBar1.Panels[1].Text := 'Horas'+TimeToStr(Now);
  StatusBar1.Panels[2].Text := 'Seja Bem Vindo '+Conexao.usuario;
  StatusBar1.Panels[3].Text := 'Seja Bem Vindo'+Conexao.Tipo;
end;

end.
