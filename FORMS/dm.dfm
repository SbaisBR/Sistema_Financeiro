object Conexao: TConexao
  OldCreateOrder = False
  DisplayName = 'Service1'
  Height = 615
  Width = 876
  object Conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=localhost:\GestaoPRO\Dados\NOVAFILMS.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 40
    Top = 16
  end
  object qryBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 96
    Top = 19
  end
  object sqlLogin: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select'#13#10'      C.*,E.cidade,E.estado, E.endereco, E.numero,E.bair' +
      'ro,E.CEP,'#39'('#39' || C.DDD || '#39')'#39' || C.telefone AS TELEFONE_COMP'#13#10' Fr' +
      'om CADCLIENTE C'#13#10'Left Join cadcliente_endereco E on (E.id_client' +
      'e = C.id and e.tipo_end = '#39'(Padr'#227'o)'#39')'#13#10'where C.id is not null'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 192
    Top = 16
  end
  object dspLogin: TDataSetProvider
    DataSet = sqlLogin
    Left = 224
    Top = 16
  end
  object cdsLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 257
    Top = 16
    object cdsLoginID: TIntegerField
      FieldName = 'ID'
    end
    object cdsLoginRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object cdsLoginFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object cdsLoginTELEFONE_COMP: TStringField
      FieldName = 'TELEFONE_COMP'
      Size = 24
    end
    object cdsLoginCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsLoginCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '00.000.000/0000-00;0;'
      FixedChar = True
      Size = 14
    end
    object cdsLoginESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsLoginENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsLoginNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsLoginBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsLoginCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
  end
end
