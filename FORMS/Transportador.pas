unit Transportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, JvExControls, JvSpeedButton, DBCtrls,
  JvExStdCtrls, JvDBCombobox, Mask, Buttons, gbFiltro, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SuperGrid, ComCtrls, FMTBcd, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, Lock, DB, DBClient,
  Provider, SqlExpr;

type
  TFrmTransportador = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    lbTitulo: TLabel;
    pgcCliente: TPageControl;
    Consulta: TTabSheet;
    SgConsulta: TSuperGrid;
    gbFiltro1: TgbFiltro;
    Cadastro: TTabSheet;
    Panel1: TPanel;
    btInserir: TBitBtn;
    DBNavigator1: TDBNavigator;
    btAlterar: TBitBtn;
    btSalvar: TBitBtn;
    btExcluir: TBitBtn;
    btCancelar: TBitBtn;
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
    Panel3: TPanel;
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
    Panel4: TPanel;
    sqlConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    dtsConsulta: TDataSource;
    Lock: TLock;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage: TJvAppIniFileStorage;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaID_TIPO: TIntegerField;
    cdsConsultaFANTASIA: TStringField;
    cdsConsultaRAZAOSOCIAL: TStringField;
    cdsConsultaCNPJ: TStringField;
    cdsConsultaIE: TStringField;
    cdsConsultaDDD: TStringField;
    cdsConsultaDDD2: TStringField;
    cdsConsultaTELEFONE: TStringField;
    cdsConsultaTELEFONE2: TStringField;
    cdsConsultaDDDFAX: TStringField;
    cdsConsultaFAX: TStringField;
    cdsConsultaSITE: TStringField;
    cdsConsultaDATACAD: TDateField;
    cdsConsultaDATAFUND: TDateField;
    cdsConsultaBLOQUEIO: TDateField;
    cdsConsultaINATIVO: TDateField;
    cdsConsultaUSUARIO: TIntegerField;
    cdsConsultaPESSOAFISICA: TStringField;
    cdsConsultaOBS: TStringField;
    cdsConsultaCONDPAGTO: TStringField;
    cdsConsultaID_TRANSPORTADORA: TIntegerField;
    cdsConsultaMODFRETE: TStringField;
    cdsConsultaSUFRAMA: TStringField;
    cdsConsultaTRANSPORTADORA_FANTASIA: TStringField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaESTADO: TStringField;
    cdsConsultaTIPO: TStringField;
    cdsConsultaCONTATO: TStringField;
    cdsConsultaEMAIL: TStringField;
    cdsConsultaID_EMP: TIntegerField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaIM: TStringField;
    cdsConsultaTRANSPORTADORA: TStringField;
    procedure cdsConsultaAfterScroll(DataSet: TDataSet);
    procedure SgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTransportador: TFrmTransportador;

implementation

{$R *.dfm}

procedure TFrmTransportador.cdsConsultaAfterScroll(DataSet: TDataSet);
begin
  if Cadastro.Visible then
  begin
   { cdsCadCliente.Close;
    cdsCadCliente.Params.ParamByName('ID').Value := cdsConsultaID.Value;
    cdsCadCliente.Open; }
  end;
end;

procedure TFrmTransportador.FormCreate(Sender: TObject);
begin
  cdsConsulta.Open;
end;

procedure TFrmTransportador.SgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
  begin
    ModalResult := mrOk;
    closeModal;
  end;
end;

end.
