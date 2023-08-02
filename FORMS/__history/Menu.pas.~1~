unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, JvExControls, JvSpeedButton, Buttons, jpeg,
  ToolWin, ActnMan, ActnCtrls, ActnMenus, ActnList, XPStyleActnCtrls;

type
  TFrmMenu = class(TForm)
    pn1: TPanel;
    Panel1: TPanel;
    sbTR: TJvSpeedButton;
    sbCL: TJvSpeedButton;
    sbFR: TJvSpeedButton;
    sbPR: TJvSpeedButton;
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

uses Cliente, dm, Fornecedor, Prestador, Transportador;

{$R *.dfm}

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

end.
