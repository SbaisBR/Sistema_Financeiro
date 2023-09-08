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
    Lock: TLock;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sbPesquisarClick(Sender: TObject);
    procedure cb_ChaveChange(Sender: TObject);
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
end.
