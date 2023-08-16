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
  U_User in '..\FORMS\U_User.pas' {FrmUser},
  U_baselLista in '..\FORMS\U_baselLista.pas' {viewbaselista},
  U_viewPrinc in '..\FORMS\U_viewPrinc.pas' {viewPrincipal},
  U_baseview in '..\FORMS\U_baseview.pas' {viewbaselista1},
  U_viewAbrirCaixa in '..\FORMS\U_viewAbrirCaixa.pas' {viewAbrirCaixa},
  service.cadastro in '..\FORMS\services\service.cadastro.pas',
  providers.conversao in '..\FORMS\providers\providers.conversao.pas',
  providers.functions in '..\FORMS\providers\providers.functions.pas',
  providers.variaveis in '..\FORMS\providers\providers.variaveis.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TechRacionais';
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TFrmlogin, Frmlogin);
  Application.CreateForm(TviewPrincipal, viewPrincipal);
  Application.Run;
end.
