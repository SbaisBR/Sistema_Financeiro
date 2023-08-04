
unit U_User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, JvExControls, JvSpeedButton, DBCtrls,
  JvExStdCtrls, JvDBCombobox, Mask, Buttons, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, SuperGrid, ComCtrls, ActnList, ImgList;

type
  TFrmUser = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lbTitulo: TLabel;
    pgcCliente: TPageControl;
    Consulta: TTabSheet;
    Panel2: TPanel;
    GridPesquisa: TSuperGrid;
    Cadastro: TTabSheet;
    Panel3: TPanel;
    btInserir: TBitBtn;
    DBNavigator1: TDBNavigator;
    btAlterar: TBitBtn;
    btSalvar: TBitBtn;
    btExcluir: TBitBtn;
    btCancelar: TBitBtn;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    pnCodPais: TPanel;
    Label23: TLabel;
    edCodPais: TDBEdit;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbTipoPessoa: TJvDBComboBox;
    rgSexo: TDBRadioGroup;
    dbCBInativo: TDBCheckBox;
    edTELEFONE: TDBEdit;
    edTelefone2: TDBEdit;
    edNome: TDBEdit;
    edCodigo: TDBEdit;
    edRazaosocial: TDBEdit;
    edCnpj: TDBEdit;
    edIe: TDBEdit;
    edDDD: TDBEdit;
    edDDD2: TDBEdit;
    sbNovo: TSpeedButton;
    sbEditar: TSpeedButton;
    sbDeletar: TSpeedButton;
    sbSair: TSpeedButton;
    sbPesquisar: TSpeedButton;
    sbRefresh: TSpeedButton;
    sbCancelar: TSpeedButton;
    sbSalvar: TSpeedButton;
    ImageList1: TImageList;
    procedure sbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUser: TFrmUser;

implementation

{$R *.dfm}

procedure TFrmUser.sbSairClick(Sender: TObject);
begin
  FrmUser.Close;
end;

end.
