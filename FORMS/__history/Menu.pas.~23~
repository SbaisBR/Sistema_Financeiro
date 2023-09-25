unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, JvExControls, JvSpeedButton, Buttons, jpeg,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, ActnList, XPStyleActnCtrls, ComCtrls,
  StdCtrls, Menus;

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
    AcCli: TAction;
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
    sbCaixa: TJvSpeedButton;
    procedure sbCaixaClick(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure AcCliExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

uses Cliente, dm, Fornecedor, Prestador, Transportador, U_login, U_User,
  U_viewPrinc;

{$R *.dfm}

procedure TFrmMenu.AcCliExecute(Sender: TObject);
begin
  try
    if TAction(Sender).Enabled then TAction(Sender).Enabled := False;

    frmCliente := TFrmCliente.Create(nil);
    frmCliente.Show;
  finally
    if not TAction(Sender).Enabled then TAction(Sender).Enabled := True;
  end;
end;

procedure TFrmMenu.Action2Execute(Sender: TObject);
begin
  try
    if TAction(Sender).Enabled then TAction(Sender).Enabled := False;

    FrmFornecedor := TFrmFornecedor.Create(nil);
    frmFornecedor.Show;
  finally
    if not TAction(Sender).Enabled then TAction(Sender).Enabled := True;
  end;
end;

procedure TFrmMenu.Action3Execute(Sender: TObject);
begin
  try
    if TAction(Sender).Enabled then TAction(Sender).Enabled := False;

    FrmPrestador := TFrmPrestador.Create(nil);
    frmPrestador.Show;
  finally
    if not TAction(Sender).Enabled then TAction(Sender).Enabled := True;
  end;
end;

procedure TFrmMenu.Action4Execute(Sender: TObject);
begin
  try
    if TAction(Sender).Enabled then TAction(Sender).Enabled := False;

    FrmTransportador := TFrmTransportador.Create(nil);
    frmTransportador.Show;
  finally
    if not TAction(Sender).Enabled then TAction(Sender).Enabled := True;
  end;
end;

procedure TFrmMenu.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = vk_escape then
  begin
    Close
  end;
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

procedure TFrmMenu.sbCaixaClick(Sender: TObject);
begin
  GET_LineMENU(Sender);
  ViewPrincipal := TviewPrincipal.Create(nil);
  ViewPrincipal.ShowModal;
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
