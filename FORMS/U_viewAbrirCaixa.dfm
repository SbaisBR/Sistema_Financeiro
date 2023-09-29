inherited viewAbrirCaixa: TviewAbrirCaixa
  Caption = 'viewAbrirCaixa'
  Position = poDesktopCenter
  ExplicitWidth = 1042
  ExplicitHeight = 758
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 97
      Height = 34
      Caption = 'Abrir Caixa'
      ExplicitWidth = 97
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited Page_panelconteudo: TPageControl
      ActivePage = Card_pesquisar
      inherited Card_cadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1030
        ExplicitHeight = 643
        object lblVlrInicial: TLabel [0]
          Left = 11
          Top = 104
          Width = 101
          Height = 23
          Caption = 'Saldo Inicial'
          FocusControl = edVlrIncial
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblOBS: TLabel [1]
          Left = 184
          Top = 104
          Width = 97
          Height = 23
          Caption = 'Observa'#231#227'o'
          FocusControl = edOBS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        inherited pnlFiltroCadastro: TPanel
          inherited lblTituloCadastro: TLabel
            Height = 51
          end
        end
        object edVlrIncial: TDBEdit
          Left = 11
          Top = 133
          Width = 125
          Height = 31
          DataField = 'ABR_VLRINICIAL'
          DataSource = dtsAbreCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edOBS: TDBEdit
          Left = 184
          Top = 133
          Width = 500
          Height = 31
          CharCase = ecUpperCase
          DataField = 'ABR_OBSERVACAO'
          DataSource = dtsAbreCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cbxStatus: TDBComboBox
          Left = 720
          Top = 133
          Width = 225
          Height = 31
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'ABR_STATUS'
          DataSource = dtsAbreCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5395026
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 23
          Items.Strings = (
            'ABERTO'
            'FECHADO')
          ParentFont = False
          TabOrder = 3
        end
      end
      inherited Card_pesquisar: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1030
        ExplicitHeight = 643
        inherited pnlFiltroPesquisa: TPanel
          inherited pnlFiltro: TPanel
            inherited lblPesquisa: TLabel
              Top = 15
              Margins.Top = 15
              ExplicitTop = 19
              ExplicitHeight = 18
            end
            object rdoAberto: TRadioButton
              Left = 216
              Top = 15
              Width = 65
              Height = 17
              Caption = 'Aberto'
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = rdoAbertoClick
            end
            object rdoFechado: TRadioButton
              Left = 304
              Top = 15
              Width = 65
              Height = 17
              Caption = 'Fechado'
              TabOrder = 1
              OnClick = rdoAbertoClick
            end
            object rdoTodos: TRadioButton
              Left = 400
              Top = 15
              Width = 65
              Height = 17
              Caption = 'Todos'
              TabOrder = 2
              OnClick = rdoAbertoClick
            end
          end
        end
        inherited SuperGrid1: TSuperGrid
          DataSource = dtsAbreCaixa
          Columns = <
            item
              Expanded = False
              FieldName = 'ABR_CODIGO'
              Title.Caption = 'N'#250'm. Caixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_DATAABERTURA'
              Title.Caption = 'Dta. Abertura'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_HRAABERTURA'
              Title.Caption = 'Hra. Abertura'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_DTAFECHAMENTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ABR_HRAFECHAMENTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ABR_VLRINICIAL'
              Title.Caption = 'Vlr Inicial'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_VLRFINAL'
              Title.Caption = 'Vlr Final'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_CODIGOUSUARIO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ABR_STATUS'
              Title.Caption = 'Status'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ABR_OBSERVACAO'
              Visible = False
            end>
        end
      end
    end
  end
  inherited cdsAbreCaixa: TClientDataSet
    Active = True
  end
  inherited DataSource1: TDataSource
    Left = 552
    Top = 288
  end
end
