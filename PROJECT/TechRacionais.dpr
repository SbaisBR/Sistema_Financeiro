program TechRacionais;

uses
  Forms,
  Cliente in '..\FORMS\Cliente.pas' {FrmCliente},
  dm in '..\FORMS\dm.pas' {Conexao: TService},
  Fornecedor in '..\FORMS\Fornecedor.pas' {FrmFornecedor},
  Menu in '..\FORMS\Menu.pas' {FrmMenu},
  Prestador in '..\FORMS\Prestador.pas' {FrmPrestador},
  Transportador in '..\FORMS\Transportador.pas' {FrmTransportador},
  U_login in '..\FORMS\U_login.pas' {Frmlogin},
  U_User in '..\FORMS\U_User.pas' {FrmUser};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TechRacionais';
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TFrmlogin, Frmlogin);
  Application.CreateForm(TFrmUser, FrmUser);
  Application.Run;
end.
