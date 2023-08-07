unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, gbFiltro, jpeg, ComCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SuperGrid, FMTBcd, DB, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, JvAppStorage, JvAppIniStorage, JvExStdCtrls,
  JvDBCombobox, DBCtrls, Buttons, Lock, Mask;

type
  TFrmCliente = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    pgcCliente: TPageControl;
    Consulta: TTabSheet;
    Cadastro: TTabSheet;
    SgConsulta: TSuperGrid;
    sqlConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    gbFiltro1: TgbFiltro;
    cdsConsultaID: TIntegerField;
    cdsConsultaRAZAOSOCIAL: TStringField;
    cdsConsultaCNPJ: TStringField;
    cdsConsultaFANTASIA: TStringField;
    cdsConsultaTELEFONE_COMP: TStringField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaESTADO: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaCEP: TStringField;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage: TJvAppIniFileStorage;
    lbTitulo: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    btInserir: TBitBtn;
    DBNavigator1: TDBNavigator;
    btAlterar: TBitBtn;
    btSalvar: TBitBtn;
    btExcluir: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    rgSexo: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Lock: TLock;
    btCancelar: TBitBtn;
    sqlCadCliente: TSQLDataSet;
    dspCadCliente: TDataSetProvider;
    cdsCadCliente: TClientDataSet;
    dtsCadCliente: TDataSource;
    sqlCadEndCliente: TSQLDataSet;
    dspCadEndCliente: TDataSetProvider;
    cdsCadEndCliente: TClientDataSet;
    sqlCadClienteID: TIntegerField;
    sqlCadClienteCIDADE: TStringField;
    sqlCadClienteESTADO: TStringField;
    sqlCadClienteENDERECO: TStringField;
    sqlCadClienteNUMERO: TStringField;
    sqlCadClienteBAIRRO: TStringField;
    sqlCadClienteCEP: TStringField;
    sqlCadClienteTIPO: TStringField;
    sqlCadClienteFANTASIA: TStringField;
    sqlCadClienteRAZAOSOCIAL: TStringField;
    sqlCadClienteIE: TStringField;
    sqlCadClienteDDD: TStringField;
    sqlCadClienteTELEFONE: TStringField;
    sqlCadClienteDDD2: TStringField;
    sqlCadClienteTELEFONE2: TStringField;
    sqlCadClienteID_TIPO: TIntegerField;
    sqlCadClienteCNPJ: TStringField;
    sqlCadClienteSEXO: TStringField;
    cdsCadClienteID: TIntegerField;
    cdsCadClienteCIDADE: TStringField;
    cdsCadClienteESTADO: TStringField;
    cdsCadClienteENDERECO: TStringField;
    cdsCadClienteNUMERO: TStringField;
    cdsCadClienteBAIRRO: TStringField;
    cdsCadClienteCEP: TStringField;
    cdsCadClienteTIPO: TStringField;
    cdsCadClienteFANTASIA: TStringField;
    cdsCadClienteRAZAOSOCIAL: TStringField;
    cdsCadClienteIE: TStringField;
    cdsCadClienteDDD: TStringField;
    cdsCadClienteTELEFONE: TStringField;
    cdsCadClienteDDD2: TStringField;
    cdsCadClienteTELEFONE2: TStringField;
    cdsCadClienteID_TIPO: TIntegerField;
    cdsCadClienteCNPJ: TStringField;
    cdsCadClienteSEXO: TStringField;
    sqlCadClienteDATACAD: TDateField;
    sqlCadClienteDATAFUND: TDateField;
    cdsCadClienteDATACAD: TDateField;
    cdsCadClienteDATAFUND: TDateField;
    dbCBInativo: TDBCheckBox;
    sqlCadCliente_INATIVO: TStringField;
    cdsCadCliente_INATIVO: TStringField;
    sqlCadClientePESSOAFISICA: TStringField;
    cdsCadClientePESSOAFISICA: TStringField;
    sqlCadClienteTIPOPESSOA: TStringField;
    cdsCadClienteTIPOPESSOA: TStringField;
    edTELEFONE: TDBEdit;
    edTelefone2: TDBEdit;
    edNome: TDBEdit;
    edCodigo: TDBEdit;
    edRazaosocial: TDBEdit;
    edCnpj: TDBEdit;
    edIe: TDBEdit;
    edDDD: TDBEdit;
    edDDD2: TDBEdit;
    dtsCadEnd: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    sqlCadEndClienteID: TIntegerField;
    sqlCadEndClienteENDERECO: TStringField;
    sqlCadEndClienteBAIRRO: TStringField;
    sqlCadEndClienteCIDADE: TStringField;
    sqlCadEndClienteESTADO: TStringField;
    sqlCadEndClienteCEP: TStringField;
    sqlCadEndClienteNUMERO: TStringField;
    sqlCadEndClienteCOMPLEMENTO: TStringField;
    sqlCadEndClienteCODIGOPAIS: TIntegerField;
    sqlCadEndClienteTIPO_END: TStringField;
    cdsCadEndClienteID: TIntegerField;
    cdsCadEndClienteENDERECO: TStringField;
    cdsCadEndClienteBAIRRO: TStringField;
    cdsCadEndClienteCIDADE: TStringField;
    cdsCadEndClienteESTADO: TStringField;
    cdsCadEndClienteCEP: TStringField;
    cdsCadEndClienteNUMERO: TStringField;
    cdsCadEndClienteCODIGOPAIS: TIntegerField;
    cdsCadEndClienteTIPO_END: TStringField;
    cdsCadEndClienteCOMPLEMENTO: TStringField;
    pnCodPais: TPanel;
    edCodPais: TDBEdit;
    Label23: TLabel;
    Panel4: TPanel;
    dbTipoPessoa: TDBComboBox;
    procedure cdsCadEndClienteNewRecord(DataSet: TDataSet);
    procedure cdsCadEndClienteAfterScroll(DataSet: TDataSet);
    procedure cdsConsultaAfterScroll(DataSet: TDataSet);
    procedure cdsCadClienteBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsCadClienteAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure SgConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarClick(Sender: TObject);
    procedure dbTipoPessoaClick(Sender: TObject);
    procedure cdsCadClienteAfterScroll(DataSet: TDataSet);
    procedure btInserirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure tratabotao();


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

uses dm;

{$R *.dfm}

{ TFrmCliente }

procedure TFrmCliente.btAlterarClick(Sender: TObject);
begin
  tratabotao();
  Lock.Enabled      := True;
  if edNome.CanFocus then
    edNome.SetFocus;
  if MessageDlg('Deseja alterar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
   begin
     cdsCadCliente.Edit;
   end
   else
    Tratabotao();
   // abort;
end;

procedure TFrmCliente.btCancelarClick(Sender: TObject);
begin
  Tratabotao();
  cdsCadCliente.Cancel;
  cdsCadCliente.CancelUpdates;
  MessageDlg('Ação cancelada com sucesso', MTINFORMATION, [MBOK], 0);
end;

procedure TFrmCliente.btExcluirClick(Sender: TObject);
begin
  tratabotao();
  if MessageDlg('Deseja deletar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
  begin
    tratabotao();
    cdsCadCliente.delete;
  end
  else
  tratabotao();
  abort;
end;

procedure TFrmCliente.btInserirClick(Sender: TObject);
var proximo : Integer;
begin
  tratabotao();
  cdsCadCliente.Append;
  if cdsCadClientePESSOAFISICA.IsNull then
    cdsCadClientePESSOAFISICA.Value := 'F'; //valor lógico
  cdsCadClienteDATACAD.Value := Date;
  cdsCadCliente.IndexFieldNames := 'ID';
  btAlterar.Click;
  cdsCadClienteAfterScroll(Nil);

  {tratabotao();
  cdsCadCliente.Open;
  cdsCadCliente.Last;
  proximo := cdsCadClienteID.AsInteger +1;
  cdsCadCliente.Append;
  cdsCadClienteID.AsInteger := proximo;
  edNome.SetFocus;
  cdsCadClienteDATACAD.Value := Date;}

end;

procedure TFrmCliente.btSalvarClick(Sender: TObject);
begin

    if (Trim(cdsCadClienteTELEFONE.Text) <> '') and (Length(cdsCadClienteTELEFONE.Text) < 8)  then
    begin
     MessageBox(Handle, PChar('Telefone inválido, realize a correção'
      + #13 + 'Campo Telefone precisa de 8 caracteres ou mais.'),
      'Atenção', MB_YESNO + MB_ICONINFORMATION +
      MB_DEFBUTTON2);
      edTelefone.SetFocus;
      exit;
    end;

    if (Trim(cdsCadClienteTELEFONE2.Text) <> '') and (Length(cdsCadClienteTELEFONE2.Text) < 8)  then
    begin
       MessageBox(Handle, PChar('Telefone2 inválido, realize a correção'
      + #13 + 'Campo Telefone2 precisa de 8 caracteres ou mais.'),
      'Atenção', MB_YESNO + MB_ICONINFORMATION +
      MB_DEFBUTTON2);

      edTelefone2.SetFocus;
      exit;
    end;

    btInserir.Enabled  := true;
    Lock.Enabled     := False;
    try
      //cdsCadCliente.ApplyUpdates(0);
      //cdsCadCliente.Refresh;

//      MessageDlg('Registro salvo com sucesso!', MtInformation, [mbOk], 0);
      cdsCadCliente.Post;
      cdsCadCliente.ApplyUpdates(0);
      cdsConsulta.Refresh;

     finally

     end;
  cdsCadCliente.AfterScroll(cdsCadCliente);
end;

procedure TFrmCliente.cdsCadClienteAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  try
    cdsConsulta.AfterScroll := nil;

    if cdsConsulta.Active then
    begin
      if not cdsConsulta.Locate('ID',cdsCadClienteID.Value,[]) then
      begin
        gbFiltro1.LimparFiltro(nil);
        cdsConsulta.Refresh;
        cdsConsulta.Locate('ID',cdsCadClienteID.Value,[])
      end;
    end;
  finally
    cdsConsulta.AfterScroll := cdsConsultaAfterScroll;
  end;
end;

procedure TFrmCliente.cdsCadClienteAfterScroll(DataSet: TDataSet);
var post : Integer;
begin
  cdsCadEndCliente.Close;
  cdsCadEndCliente.Params[0].Value := cdsCadClienteID.Value;
  cdsCadEndCliente.Open;

  if cdsCadEndCliente.Active then
      cdsCadEndCliente.Locate('TIPO_END','(Padrão)',[]);


  try
    cdsCadCliente.AfterScroll := nil;
    if Cadastro.Visible then
    begin
      if cdsCadClientePESSOAFISICA.AsBoolean = True then
        rgSexo.Visible := True
      else
        rgSexo.Visible := False;
    end;
  finally
    cdsCadCliente.AfterScroll := cdsCadClienteAfterScroll;
  end;
end;

procedure TFrmCliente.cdsCadClienteBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  cdsCadCliente.Params[0].Value := cdsCadClienteID.Value;
end;

procedure TFrmCliente.cdsCadEndClienteAfterScroll(DataSet: TDataSet);
begin
  pnCodPais.Visible := cdsCadEndClienteESTADO.Value = 'EX';
end;

procedure TFrmCliente.cdsCadEndClienteNewRecord(DataSet: TDataSet);
begin
  if cdsCadEndCliente.RecordCount = 0 then
    cdsCadEndClienteTIPO_END.Value := '(Padrão)';
end;

procedure TFrmCliente.cdsConsultaAfterScroll(DataSet: TDataSet);
begin
  if Cadastro.Visible then
  begin
    cdsCadCliente.Close;
    cdsCadCliente.Params.ParamByName('ID').Value := cdsConsultaID.Value;
    cdsCadCliente.Open;
  end;
end;

procedure TFrmCliente.dbTipoPessoaClick(Sender: TObject);
begin
  if ((dbtipoPessoa.Text = 'Pessoa Fisica') or (dbTipoPessoa.Text = 'Produtor Rural')) then
  rgSexo.Visible := True
  else
  rgSexo.Visible := False;
end;

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
  cdsCadCliente.Open;
  cdsConsulta.Open;
end;

procedure TFrmCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;
end;


procedure TFrmCliente.SgConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
  begin
    ModalResult := mrOk;
    closeModal;
  end;
end;

procedure TFrmCliente.tratabotao;
begin
  btInserir.Enabled := Not btInserir.Enabled;
  btSalvar.Enabled  := Not btSalvar.Enabled;
  btExcluir.Enabled := Not btExcluir.Enabled;
  btAlterar.Enabled := Not btAlterar.Enabled;
  btCancelar.Enabled:= Not btCancelar.Enabled;
end;

end.
