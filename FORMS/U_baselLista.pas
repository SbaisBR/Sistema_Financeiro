unit U_baselLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxpngimage, ExtCtrls, StdCtrls, Buttons, ComCtrls, ImgList;

type
  Tviewbaselista = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewbaselista: Tviewbaselista;

implementation

{$R *.dfm}


procedure Tviewbaselista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    Perform(wm_NextDlgCtl,0,0); 
end;

end.
