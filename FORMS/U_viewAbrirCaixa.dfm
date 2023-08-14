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
