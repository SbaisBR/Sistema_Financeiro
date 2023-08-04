
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
    GridPesquisa: TSuperGrid;
    Cadastro: TTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbTipoPessoa: TJvDBComboBox;
    edNome: TDBEdit;
    edCodigo: TDBEdit;
    edRazaosocial: TDBEdit;
    edCnpj: TDBEdit;
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

uses dm;

{$R *.dfm}

procedure TFrmUser.sbAtualizarClick(Sender: TObject);
begin
  Tratabotao();
  Conexao.cdsUsuario.Refresh;
  MessageDlg('Atualizado com sucesso!', MTINFORMATION, [MBOK],0);
end;

procedure TFrmUser.sbCancelarClick(Sender: TObject);
begin
  Tratabotao();
  Conexao.cdsUsuario.Cancel;
  Conexao.cdsUsuario.CancelUpdates;
  MessageDlg('A��o cancelada com sucesso', MTINFORMATION, [MBOK], 0);
end;

procedure TFrmUser.sbDeletarClick(Sender: TObject);
begin
  Tratabotao();
  if MessageDlg('Deseja deletar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
    begin
      Conexao.cdsUsuario.delete;
      Tratabotao();
    end
    else
     Tratabotao();
     abort;
end;

procedure TFrmUser.sbEditarClick(Sender: TObject);
begin
  Tratabotao();
  if MessageDlg('Deseja alterar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
   begin
     Conexao.cdsUsuario.Edit;
   end
   else
    Tratabotao();
    abort;
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
  edNome.SetFocus;   //Leva o foco para o DBEdit2
  Conexao.cdsUsuarioCADASTRO.AsDateTime:=Date;  //O campo CADASTRO recebe a data atualizada
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
  Tratabotao();
  Conexao.cdsUsuario.Post;
  MessageDlg('Registro salvo com sucesso!', MtInformation, [mbOk], 0);
  Conexao.cdsUsuario.ApplyUpdates(0);
end;

procedure TFrmUser.tratabotao;
begin
  sbNovo.Enabled:= Not sbNovo.Enabled;
  sbEditar.Enabled := Not sbEditar.Enabled;
  sbDeletar.Enabled:= Not sbDeletar.Enabled;
  sbSalvar.Enabled := Not sbSalvar.Enabled;
  sbAtualizar.Enabled := Not sbAtualizar.Enabled;
end;

end.
