program Project1;

uses
  Forms,
  Menu in 'Menu.pas' {FrmMenu},
  dm in 'dm.pas' {Conexao: TService},
  Cliente in 'Cliente.pas' {FrmCliente},
  Fornecedor in 'Fornecedor.pas' {FrmFornecedor},
  Prestador in 'Prestador.pas' {FrmPrestador},
  Transportador in 'Transportador.pas' {FrmTransportador},
  U_login in 'U_login.pas' {Frmlogin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmlogin, Frmlogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TConexao, Conexao);
  Application.Run;
end.
