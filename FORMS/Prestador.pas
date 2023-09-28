unit Prestador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, ComCtrls, ImgList,
  JvExControls, JvSpeedButton, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, SuperGrid, JvExStdCtrls, JvDBCombobox, Lock;

type
  TFrmPrestador = class(TForm)
    ImageList1: TImageList;
    pgcCliente: TPageControl;
    Consulta: TTabSheet;
    Cadastro: TTabSheet;
    Panel1: TPanel;
    lb_pesquisa: TLabel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    lb_descricao: TLabel;
    mkdIncio: TMaskEdit;
    mkdFim: TMaskEdit;
    Panel2: TPanel;
    Image1: TImage;
    dbn1: TDBNavigator;
    sbPesquisar: TJvSpeedButton;
    GridPesquisa: TSuperGrid;
    sqlConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaID: TIntegerField;
    cdsConsultaRAZAOSOCIAL: TStringField;
    cdsConsultaFANTASIA: TStringField;
    cdsConsultaCNPJ: TStringField;
    dtsConsulta: TDataSource;
    lbTitulo: TLabel;
    cb_Chave: TComboBox;
    edDescricao: TEdit;
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
    Lock: TLock;
    dtsCadastro: TDataSource;
    sqlCadastro: TSQLDataSet;
    sqlCadastroID: TIntegerField;
    sqlCadastroID_TIPO: TIntegerField;
    sqlCadastroFANTASIA: TStringField;
    sqlCadastroRAZAOSOCIAL: TStringField;
    sqlCadastroCNPJ: TStringField;
    sqlCadastroIE: TStringField;
    sqlCadastroDDD: TStringField;
    sqlCadastroTELEFONE: TStringField;
    sqlCadastroDDD2: TStringField;
    sqlCadastroTELEFONE2: TStringField;
    sqlCadastroDDDFAX: TStringField;
    sqlCadastroFAX: TStringField;
    sqlCadastroSITE: TStringField;
    sqlCadastroDATACAD: TDateField;
    sqlCadastroDATAFUND: TDateField;
    sqlCadastroBLOQUEIO: TDateField;
    sqlCadastroINATIVO: TDateField;
    sqlCadastroPESSOAFISICA: TStringField;
    sqlCadastroTIPOPESSOA: TStringField;
    sqlCadastroOBS: TStringField;
    sqlCadastroUSUARIO: TIntegerField;
    sqlCadastroCONDPAGTO: TStringField;
    sqlCadastroID_TRANSPORTADORA: TIntegerField;
    sqlCadastroMODFRETE: TStringField;
    sqlCadastroSUFRAMA: TStringField;
    sqlCadastroTRANSPORTADORA_FANTASIA: TStringField;
    sqlCadastroCIDADE: TStringField;
    sqlCadastroESTADO: TStringField;
    sqlCadastroTIPO: TStringField;
    sqlCadastroCONTATO: TStringField;
    sqlCadastroEMAIL: TStringField;
    sqlCadastroID_EMP: TIntegerField;
    sqlCadastroENDERECO: TStringField;
    sqlCadastroNUMERO: TStringField;
    sqlCadastroBAIRRO: TStringField;
    sqlCadastroCEP: TStringField;
    sqlCadastroIM: TStringField;
    sqlCadastroTELEFONE_ZAP: TStringField;
    sqlCadastroTELEFONE2_ZAP: TStringField;
    sqlCadastroTELEFONE3_ZAP: TStringField;
    sqlCadastroSEXO: TStringField;
    sqlCadastroTRANSPORTADORA: TStringField;
    sqlCadastroCHAVEPIX: TStringField;
    dspCadastro: TDataSetProvider;
    cdsCadastro: TClientDataSet;
    cdsCadastroID: TIntegerField;
    cdsCadastroID_TIPO: TIntegerField;
    cdsCadastroFANTASIA: TStringField;
    cdsCadastroRAZAOSOCIAL: TStringField;
    cdsCadastroCNPJ: TStringField;
    cdsCadastroIE: TStringField;
    cdsCadastroDDD: TStringField;
    cdsCadastroTELEFONE: TStringField;
    cdsCadastroDDD2: TStringField;
    cdsCadastroTELEFONE2: TStringField;
    cdsCadastroDDDFAX: TStringField;
    cdsCadastroFAX: TStringField;
    cdsCadastroSITE: TStringField;
    cdsCadastroDATACAD: TDateField;
    cdsCadastroDATAFUND: TDateField;
    cdsCadastroBLOQUEIO: TDateField;
    cdsCadastroINATIVO: TDateField;
    cdsCadastroUSUARIO: TIntegerField;
    cdsCadastroPESSOAFISICA: TStringField;
    cdsCadastroTIPOPESSOA: TStringField;
    cdsCadastroOBS: TStringField;
    cdsCadastroCONDPAGTO: TStringField;
    cdsCadastroID_TRANSPORTADORA: TIntegerField;
    cdsCadastroMODFRETE: TStringField;
    cdsCadastroSUFRAMA: TStringField;
    cdsCadastroTRANSPORTADORA_FANTASIA: TStringField;
    cdsCadastroCIDADE: TStringField;
    cdsCadastroESTADO: TStringField;
    cdsCadastroTIPO: TStringField;
    cdsCadastroCONTATO: TStringField;
    cdsCadastroEMAIL: TStringField;
    cdsCadastroID_EMP: TIntegerField;
    cdsCadastroENDERECO: TStringField;
    cdsCadastroNUMERO: TStringField;
    cdsCadastroCEP: TStringField;
    cdsCadastroBAIRRO: TStringField;
    cdsCadastroIM: TStringField;
    cdsCadastroTELEFONE_ZAP: TStringField;
    cdsCadastroTELEFONE2_ZAP: TStringField;
    cdsCadastroTELEFONE3_ZAP: TStringField;
    cdsCadastroSEXO: TStringField;
    cdsCadastroTRANSPORTADORA: TStringField;
    cdsCadastroCHAVEPIX: TStringField;
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure cdsConsultaAfterScroll(DataSet: TDataSet);
    procedure btAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbPesquisarClick(Sender: TObject);
    procedure cb_ChaveChange(Sender: TObject);
    procedure tratabotao();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrestador: TFrmPrestador;

implementation

uses dm, View_Mensagens;

{$R *.dfm}

procedure TFrmPrestador.btAlterarClick(Sender: TObject);
begin
  tratabotao();
  Lock.Enabled      := True;
  if edNome.CanFocus then
    edNome.SetFocus;
  if TViewMensagens.Mensagem('Deseja alterar esse registro?','Aten��o!','A', [mbSim,MbNao]) then
   begin
     cdsCadastro.Edit;
   end
   else
    Tratabotao();
   // abort;
end;

procedure TFrmPrestador.btCancelarClick(Sender: TObject);
begin
  Tratabotao();
  cdsCadastro.Cancel;
  cdsCadastro.CancelUpdates;
  TViewMensagens.Mensagem('A��o cancelada com sucesso','Aten��o','I', [mbOk]);
end;

procedure TFrmPrestador.btExcluirClick(Sender: TObject);
begin
  tratabotao();
  if TViewMensagens.Mensagem('Deseja deletar esse registro?','Aten��o!','A', [mbSim,MbNao]) then
  begin
    tratabotao();
    cdsCadastro.delete;
  end
  else
  tratabotao();
  abort;
end;

procedure TFrmPrestador.btInserirClick(Sender: TObject);
begin
  tratabotao();
  cdsCadastro.Append;
  if cdsCadastroPESSOAFISICA.IsNull then
    cdsCadastroPESSOAFISICA.Value := 'F'; //valor l�gico
  cdsCadastroDATACAD.Value := Date;
  cdsCadastro.IndexFieldNames := 'ID';
  btAlterar.Click;
end;

procedure TFrmPrestador.btSalvarClick(Sender: TObject);
begin
  if (Trim(cdsCadastroTELEFONE.Text) <> '') and (Length(cdsCadastroTELEFONE.Text) < 8)  then
    begin
     TViewMensagens.Mensagem('Telefone inv�lido, realize a corre��o'+ #13 + 'Campo Telefone precisa de 8 caracteres ou mais.','Aten��o!','E',[mbOk]);
      edTelefone.SetFocus;
      exit;
    end;

    if (Trim(cdsCadastroTELEFONE2.Text) <> '') and (Length(cdsCadastroTELEFONE2.Text) < 8)  then
    begin
      TViewMensagens.Mensagem('Telefone2 inv�lido, realize a corre��o'+ #13 + 'Campo Telefone precisa de 8 caracteres ou mais.','Aten��o!','E',[mbOk]);

      edTelefone2.SetFocus;
      exit;
    end;

    btInserir.Enabled  := true;
    Lock.Enabled     := False;
    try
      cdsCadastro.Post;
      cdsCadastro.ApplyUpdates(0);
      cdsConsulta.Refresh;

     finally

     end;
  cdsCadastro.AfterScroll(cdsCadastro);
end;

procedure TFrmPrestador.cb_ChaveChange(Sender: TObject);
begin
  case cb_chave.ItemIndex of
  0:Begin
      edDescricao.Visible  := True;
      lb_descricao.Visible := True;
      lb_descricao.Caption := 'Digite o C�digo';
      lb_inicio.Visible    := False;
      mkdIncio.Visible     := False;
      lb_fim.Visible       := False;
      mkdFim.Visible       := False;
      edDescricao.SetFocus;
      edDescricao.Clear;
    end;
    1:Begin
        edDescricao.Visible  := True;
        lb_descricao.Visible := True;
        lb_descricao.Caption := 'Digite o Nome';
        lb_inicio.Visible    := False;
        mkdIncio.Visible     := False;
        lb_fim.Visible       := False;
        mkdFim.Visible       := False;
        edDescricao.SetFocus;
      end;
      2:Begin
          edDescricao.Visible:= true;
          lb_descricao.Caption := 'Digite o CNPJ:';
          lb_descricao.Visible:= true;
          lb_inicio.Visible := false;
          mkdIncio.Visible := false;
          lb_fim.Visible := false;
          mkdFim.Visible := false;
          edDescricao.SetFocus;
          edDescricao.Clear;
        end;
       3:Begin
           edDescricao.Visible  := False;
           lb_descricao.Visible := True;
           lb_descricao.Caption := 'Digite o Periodo';
           lb_inicio.Visible    := True;
           lb_inicio.Caption    := 'Inicio';
           mkdIncio.Visible     := True;
           lb_fim.Visible       := True;
           mkdFim.Visible       := True;
           mkdIncio.SetFocus;
        end;
       4:Begin
          edDescricao.Visible  := False;
          lb_descricao.Visible := True;
          lb_descricao.Caption := 'MOSTRANDO TODOS OS REGISTROS';
          lb_inicio.Visible    := False;
          mkdIncio.Visible     := False;
          lb_fim.Visible       := False;
          mkdFim.Visible       := False;
          //mkdIncio.SetFocus;
        end;
  end;
end;

procedure TFrmPrestador.cdsConsultaAfterScroll(DataSet: TDataSet);
begin
  if Cadastro.Visible then
  begin
    cdsCadastro.Close;
    cdsCadastro.Params.ParamByName('ID').Value := cdsConsultaID.Value;
    cdsCadastro.Open;
  end;
end;

procedure TFrmPrestador.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
   Close;
end;

procedure TFrmPrestador.sbPesquisarClick(Sender: TObject);
begin
  if edDescricao.Visible and (edDescricao.Text = '') then
  begin
    TViewMensagens.Mensagem('Preenchimento do campo obrigat�rio!','Aten��o!','A',[mbOk]);
    Exit;
  end;

  cdsConsulta.Close;
  sqlConsulta.CommandText := 'SELECT C.*,E.CIDADE,  E.ESTADO, E.ENDERECO, E.NUMERO, E.BAIRRO, E.CEP FROM CADPRESTADOR C LEFT JOIN CADPRESTADOR_ENDERECO E ON (E.ID_PRESTADOR = C.ID AND E.TIPO_END = ''(Padr�o)'')';
  cdsConsulta.Open;
  //Pesquisa por Codigo
  case cb_chave.ItemIndex of
  0: begin
       cdsConsulta.Close;
       sqlConsulta.commandText := 'SELECT * FROM CADPRESTADOR WHERE ID = '''+edDescricao.Text+'''';
       cdsConsulta.Open;
     end;

  1 :begin
      cdsConsulta.Close;
      sqlConsulta.CommandText := 'SELECT * FROM CADPRESTADOR WHERE FANTASIA LIKE  ''%'+edDescricao.Text+'%''';
      cdsConsulta.Open;
    end;

  2 :begin
      cdsConsulta.Close;
      sqlConsulta.CommandText := 'SELECT * FROM CADPRESTADOR WHERE CNPJ LIKE ''%'+edDescricao.Text+'%''';
      cdsConsulta.Open;
     end;
  end;
  end;


  {With cdsConsulta(dspConsulta.DataSet) do
  begin

    Open;
    if IsEmpty then
      ShowMessage('Nenhum registro encontrado !!!');
      GridPesquisa.SetFocus;
  end;}
  procedure TFrmPrestador.tratabotao;
  begin
    btInserir.Enabled := Not btInserir.Enabled;
    btSalvar.Enabled  := Not btSalvar.Enabled;
    btExcluir.Enabled := Not btExcluir.Enabled;
    btAlterar.Enabled := Not btAlterar.Enabled;
    btCancelar.Enabled:= Not btCancelar.Enabled;
  end;
end.
