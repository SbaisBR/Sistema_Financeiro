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
      'Database=localhost:\GestaoPRO\Dados\novafilms.FDB'
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
    Left = 88
    Top = 15
  end
  object sqlLogin: TSQLDataSet
    SchemaName = 'sysdba'
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
  object sqlUsuario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM USUARIO'#13#10'ORDER BY IDUSUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 186
    Top = 65
    object sqlUsuarioIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object sqlUsuarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object sqlUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 30
    end
    object sqlUsuarioTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object sqlUsuarioCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Required = True
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = sqlUsuario
    Left = 218
    Top = 65
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 250
    Top = 64
    object cdsUsuarioIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object cdsUsuarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 30
    end
    object cdsUsuarioTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object cdsUsuarioCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Required = True
    end
  end
  object dtsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 281
    Top = 64
  end
  object sqlAbrCaixa: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM USUARIO'#13#10'ORDER BY IDUSUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 186
    Top = 121
    object IntegerField1: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object DateField1: TDateField
      FieldName = 'CADASTRO'
      Required = True
    end
  end
  object dspAbrCaixa: TDataSetProvider
    DataSet = sqlAbrCaixa
    Left = 218
    Top = 121
  end
  object dsAbrCaixa: TDataSource
    DataSet = cdsAbrCaixa
    Left = 281
    Top = 120
  end
  object cdsAbrCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 250
    Top = 120
    object IntegerField2: TIntegerField
      FieldName = 'IDUSUARIO'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object DateField2: TDateField
      FieldName = 'CADASTRO'
      Required = True
    end
  end
end
