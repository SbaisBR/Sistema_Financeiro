unit Providers.Functions;

interface

uses dm;

{Procedures}
{Procedure CriarForm(const AtClass : TCustomFormClass; out Form);}

implementation

{Procedure CriarForm(const AtClass : TCustomFormClass; out Form);
Var MeuForm :TCustomForm absolute form;
begin
  if not Assigned(MeuForm) then
  begin
    Application.CreateForm(AClasse, Form);
    try
      MeuForm.ShowModal;
    finally
      FreeAndnil(MeuForm);
    end;
  end;
end;}

end.
