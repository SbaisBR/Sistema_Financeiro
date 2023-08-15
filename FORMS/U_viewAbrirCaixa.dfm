inherited viewAbrirCaixa: TviewAbrirCaixa
  Caption = 'viewAbrirCaixa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 97
      Caption = 'Abrir Caixa'
      ExplicitWidth = 97
    end
  end
  inherited pnlLinhaFundo: TPanel
    inherited Page_panelconteudo: TPageControl
      inherited Card_cadastro: TTabSheet
        ExplicitLeft = 7
        ExplicitTop = 25
        object lblVlrInicial: TLabel [0]
          Left = 11
          Top = 104
          Width = 82
          Height = 13
          Caption = 'ABR_VLRINICIAL'
          FocusControl = edVlrIncial
        end
        object lblOBS: TLabel [1]
          Left = 184
          Top = 104
          Width = 94
          Height = 13
          Caption = 'ABR_OBSERVACAO'
          FocusControl = edOBS
        end
        object edVlrIncial: TDBEdit
          Left = 11
          Top = 123
          Width = 125
          Height = 21
          DataField = 'ABR_VLRINICIAL'
          DataSource = DataSource1
          TabOrder = 1
        end
        object edOBS: TDBEdit
          Left = 184
          Top = 123
          Width = 500
          Height = 21
          DataField = 'ABR_OBSERVACAO'
          DataSource = DataSource1
          TabOrder = 2
        end
        object edVlrFinal: TDBEdit
          Left = 11
          Top = 168
          Width = 125
          Height = 21
          TabOrder = 3
        end
      end
      inherited Card_pesquisar: TTabSheet
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
end
