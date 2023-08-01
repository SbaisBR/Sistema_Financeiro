unit dm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TConexao = class(TService)
    Conexao: TSQLConnection;
    qryBusca: TSQLQuery;
    sqlLogin: TSQLDataSet;
    dspLogin: TDataSetProvider;
    cdsLogin: TClientDataSet;
    sqlLoginIDUSUARIO: TIntegerField;
    sqlLoginNOME: TStringField;
    sqlLoginSENHA: TStringField;
    sqlLoginTIPO: TStringField;
    sqlLoginCADASTRO: TDateField;
    sqlLoginNIVEL: TStringField;
    cdsLoginIDUSUARIO: TIntegerField;
    cdsLoginNOME: TStringField;
    cdsLoginSENHA: TStringField;
    cdsLoginTIPO: TStringField;
    cdsLoginCADASTRO: TDateField;
    cdsLoginNIVEL: TStringField;



  private
    { Private declarations }
    FFSelecionar : Boolean;
    FIDUsuario: integer;
    procedure SetFSelecionar(const Value: Boolean);
  public
    Usuario, Tipo : String;
    function GetServiceController: TServiceController; override;
    { Public declarations }

    //property FSelecionar : Boolean read FFSelecionar write SetFSelecionar;
    //property IDUsuario          : integer read FIDUsuario write FIDUsuario;

  end;

var
  Conexao: TConexao;

implementation

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Conexao.Controller(CtrlCode);
end;

function TConexao.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TConexao.SetFSelecionar(const Value: Boolean);
begin
  FFSelecionar := Value;
end;

end.
