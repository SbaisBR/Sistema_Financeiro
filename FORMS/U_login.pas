unit U_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, ImgList, ExtCtrls, Buttons, frxpngimage;

type
  TFrmlogin = class(TForm)
    Label2: TLabel;
    edNome: TEdit;
    Label1: TLabel;
    edSenha: TEdit;
    BitBtn1: TBitBtn;
    Image1: TImage;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmlogin: TFrmlogin;

implementation

uses dm, Menu;

{$R *.dfm}

procedure TFrmlogin.BitBtn1Click(Sender: TObject);
begin
  //Valida��o de login, pesquisa de login no banco de  dados.
  Conexao.cdsLogin.close;
  Conexao.cdsLogin.Open;
  //Se localizar o NOME e SENHA na tabela sendo igual nos Edt, passe
  if Conexao.cdsLogin.Locate('NOME',edNome.Text,[]) and dm.Conexao.cdsLogin.Locate ('SENHA', edSenha.Text,[]) then
  begin
    //Trazendo variaveis USUARIO E TIPO
    Conexao.Usuario := edNome.Text;
    Conexao.TIPO := Conexao.cdsUsuarioTIPO.AsString;
    FrmMenu := TFrmMenu.Create(nil);
    FrmMenu.Show;
  end
  //Se n�o pare
  else
  begin
    //msg('Usuario incorreto','Porfavor verifique as informa��es');
    MessageDlg('Usuario incorreto, porfavor verifique as informa��es', MTINFORMATION, [MBOK], 0);
    edNome.Clear;
    edSenha.Clear;
    edNome.SetFocus;
    Abort;
  end;
end;

procedure TFrmlogin.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmlogin.FormCreate(Sender: TObject);
begin
Image1.Transparent := True;
end;

procedure TFrmlogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    Close
  end;
end;

procedure TFrmlogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key:=#0;
    Perform(wm_NextDlgCtl,0,0);
  end;
end;
end.
