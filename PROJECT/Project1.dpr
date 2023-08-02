program Project1;

uses
  Forms,
  Cliente in '..\FORMS\Cliente.pas' {FrmCliente},
  dm in '..\FORMS\dm.pas' {Conexao: TService},
  Fornecedor in '..\FORMS\Fornecedor.pas' {FrmFornecedor},
  Menu in '..\FORMS\Menu.pas' {FrmMenu},
  Prestador in '..\FORMS\Prestador.pas' {FrmPrestador},
  Transportador in '..\FORMS\Transportador.pas' {FrmTransportador},
  U_login in '..\FORMS\U_login.pas' {Frmlogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TFrmlogin, Frmlogin);
  Application.Run;
end.
