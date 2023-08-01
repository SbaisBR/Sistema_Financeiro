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
    Active = True
    CommandText = 'SELECT * FROM LOGIN ORDER BY IDUSUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 192
    Top = 16
    object sqlLoginIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object sqlLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object sqlLoginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object sqlLoginTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object sqlLoginCADASTRO: TDateField
      FieldName = 'CADASTRO'
    end
    object sqlLoginNIVEL: TStringField
      FieldName = 'NIVEL'
      Size = 30
    end
  end
  object dspLogin: TDataSetProvider
    DataSet = sqlLogin
    Left = 224
    Top = 16
  end
  object cdsLogin: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogin'
    Left = 257
    Top = 16
    object cdsLoginIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object cdsLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
    object cdsLoginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 50
    end
    object cdsLoginTIPO: TStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object cdsLoginCADASTRO: TDateField
      FieldName = 'CADASTRO'
    end
    object cdsLoginNIVEL: TStringField
      FieldName = 'NIVEL'
      Size = 30
    end
  end
end
