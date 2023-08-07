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
    sqlUsuario: TSQLDataSet;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuarioIDUSUARIO: TIntegerField;
    cdsUsuarioNOME: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioTIPO: TStringField;
    cdsUsuarioCADASTRO: TDateField;
    dtsUsuario: TDataSource;
    sqlUsuarioIDUSUARIO: TIntegerField;
    sqlUsuarioNOME: TStringField;
    sqlUsuarioSENHA: TStringField;
    sqlUsuarioTIPO: TStringField;
    sqlUsuarioCADASTRO: TDateField;
    procedure cdsUsuarioBeforeApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cdsUsuarioAfterScroll(DataSet: TDataSet);



  private
    { Private declarations }
    FFSelecionar : Boolean;
    FIDUsuario: integer;
    //procedure SetFSelecionar(const Value: Boolean);
  public
    Usuario, Tipo : String;
   // function GetServiceController: TServiceController; override;
    { Public declarations }

    //property FSelecionar : Boolean read FFSelecionar write SetFSelecionar;
    //property IDUsuario          : integer read FIDUsuario write FIDUsuario;

  end;

var
  Conexao: TConexao;

implementation

{$R *.DFM}

{procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Conexao.Controller(CtrlCode);
end;}

{function TConexao.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;}

{procedure TConexao.SetFSelecionar(const Value: Boolean);
begin
  FFSelecionar := Value;
end;}

procedure TConexao.cdsUsuarioAfterScroll(DataSet: TDataSet);
begin
//  try
//    cdsUsuario.AfterScroll := nil;
//  finally
//    cdsUsuario.AfterScroll := cdsUsuarioAfterScroll;
//  end;

end;

procedure TConexao.cdsUsuarioBeforeApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  cdsUsuario.Params[0].Value := cdsUsuarioIDUSUARIO.Value;
end;

end.
