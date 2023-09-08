
unit U_User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, JvExControls, JvSpeedButton, DBCtrls,
  JvExStdCtrls, JvDBCombobox, Mask, Buttons, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, SuperGrid, ComCtrls, ActnList, ImgList, Lock, FMTBcd, DB, SqlExpr,
  Provider, DBClient;

type
  TFrmUser = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lbTitulo: TLabel;
    pgcCliente: TPageControl;
    Consulta: TTabSheet;
    GridPesquisa: TSuperGrid;
    Cadastro: TTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edNome: TDBEdit;
    edCodigo: TDBEdit;
    edCadastro: TDBEdit;
    edSenha: TDBEdit;
    Panel4: TPanel;
    sbNovo: TSpeedButton;
    sbEditar: TSpeedButton;
    sbDeletar: TSpeedButton;
    sbSair: TSpeedButton;
    sbPesquisar: TSpeedButton;
    sbAtualizar: TSpeedButton;
    sbCancelar: TSpeedButton;
    sbSalvar: TSpeedButton;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Lock: TLock;
    cbTipo: TDBComboBox;
    dtsConsulta: TDataSource;
    cdsConsulta: TClientDataSet;
    dspConsulta: TDataSetProvider;
    sqlConsulta: TSQLDataSet;
    cdsConsultaIDUSUARIO: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaSENHA: TStringField;
    cdsConsultaTIPO: TStringField;
    cdsConsultaCADASTRO: TDateField;
    procedure FormShow(Sender: TObject);
    procedure sbPesquisarClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbDeletarClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbAtualizarClick(Sender: TObject);
    procedure sbSairClick(Sender: TObject);
    procedure tratabotao();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUser: TFrmUser;

implementation

uses dm, View_Mensagens;

{$R *.dfm}



procedure TFrmUser.FormShow(Sender: TObject);
begin
  cdsConsulta.Open;
end;

procedure TFrmUser.sbAtualizarClick(Sender: TObject);
begin
  Tratabotao();
  //Conexao.cdsUsuario.ApplyUpdates(0);
  Conexao.cdsUsuario.Refresh;
 TViewMensagens.Mensagem('Atualizado com sucesso!','Aten��o!','i',[MBOK]);
end;

procedure TFrmUser.sbCancelarClick(Sender: TObject);
begin
  Tratabotao();
  Conexao.cdsUsuario.Cancel;
  Conexao.cdsUsuario.CancelUpdates;
  TViewMensagens.Mensagem('A��o cancelada com sucesso','Aten��o!', 'i',[MBOK]);
end;

procedure TFrmUser.sbDeletarClick(Sender: TObject);
begin
  Tratabotao();
  if TViewMensagens.Mensagem('Deseja deletar esse registro?','Aten��o!', 'A', [mbSim,MbNao]) then
    begin
      Conexao.cdsUsuario.delete;
      Tratabotao();
    end
    else
     Tratabotao();
     Exit;
end;

procedure TFrmUser.sbEditarClick(Sender: TObject);
begin
  Tratabotao();
  Lock.Enabled      := True;
  if TViewMensagens.Mensagem('Deseja alterar esse registro?','Aten��o!','A',[mbSim,MbNao])then
   begin
     Conexao.cdsUsuario.Edit;
   end
   else
    Tratabotao();
    Exit;
end;

procedure TFrmUser.sbNovoClick(Sender: TObject);
var proximo : integer;
begin
  Tratabotao();
  Conexao.cdsUsuario.Open;   //Abre a tabela
  Conexao.cdsUsuario.Last;   // Vai para o ultimo registro da tabela
  proximo:= Conexao.cdsUsuarioIDUSUARIO.AsInteger + 1;   //Recebe o valor do ultimo registro e vai para o proximo '+1'
  Conexao.cdsUsuario.Append;  //Adiciona mais uma coluna em branco para adionar um novo registro
  Conexao.cdsUsuarioIDUSUARIO.AsInteger := proximo;   //O campo ID recebe o valor da variavel proximo
  Conexao.cdsUsuarioCADASTRO.AsDateTime:=Date;  //O campo CADASTRO recebe a data atualizada
  Lock.Enabled      := True;
end;

procedure TFrmUser.sbPesquisarClick(Sender: TObject);
begin
 { FrmPesquisaUsuario:=TFrmPesquisaUsuario.Create(self);
  FrmPesquisaUsuario.ShowModal;
  try

  finally
    FrmPesquisaUsuario.Free;
    FrmPesquisaUsuario:= nil;
  end;}
end;

procedure TFrmUser.sbSairClick(Sender: TObject);
begin
  FrmUser.Close;
end;

procedure TFrmUser.sbSalvarClick(Sender: TObject);
begin
  try
    if Trim(edNome.Text) = '' then
    begin
      TViewMensagens.Mensagem('O campo "Nome" � obrigat�rio.','Erro','E',[mbOK]);
      edNome.SetFocus;
      Exit;
    end;

    Tratabotao();
    Lock.Enabled := False;

    TViewMensagens.Mensagem('Registro salvo com sucesso!','Aten��o!','i',[mbOk]);
    Conexao.cdsUsuario.Post;
    Conexao.cdsUsuario.ApplyUpdates(0);
    cdsConsulta.Refresh;
  finally

  end;
  Conexao.cdsUsuario.AfterScroll(Conexao.cdsUsuario);
end;

procedure TFrmUser.tratabotao;
begin
  sbNovo.Enabled:=  sbNovo.Enabled;
  sbEditar.Enabled :=  sbEditar.Enabled;
  sbDeletar.Enabled:=  sbDeletar.Enabled;
  sbSalvar.Enabled := Not sbSalvar.Enabled;
  sbAtualizar.Enabled :=  sbAtualizar.Enabled;
end;

end.
