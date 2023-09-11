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
    sqlAbrCaixa: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    dspAbrCaixa: TDataSetProvider;
    dsAbrCaixa: TDataSource;
    cdsAbrCaixa: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateField2: TDateField;
    sqlEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaMUNICIPIO: TStringField;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaFANTASIA: TStringField;
    cdsEmpresaRAZAOSOCIAL: TStringField;
    cdsEmpresaCNPJ: TStringField;
    cdsEmpresaIE: TStringField;
    cdsEmpresaIM: TStringField;
    cdsEmpresaCNAE: TStringField;
    cdsEmpresaCRT: TStringField;
    cdsEmpresaDDD: TStringField;
    cdsEmpresaTELEFONE: TStringField;
    cdsEmpresaDDD2: TStringField;
    cdsEmpresaTELEFONE2: TStringField;
    cdsEmpresaDDDFAX: TStringField;
    cdsEmpresaFAX: TStringField;
    cdsEmpresaSITE: TStringField;
    cdsEmpresaEMAIL: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaNUMERO: TStringField;
    cdsEmpresaCOMPLEMENTO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaESTADO: TStringField;
    cdsEmpresaCODIGOUF: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaLOGOTIPO: TStringField;



  private
    FFSelecionar : Boolean;
    FIDUsuario: integer;
  public
    Usuario, Tipo : String;
  end;

var
  Conexao: TConexao;

implementation

{$R *.DFM}



end.
