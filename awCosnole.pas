Unit awConsole;
{$M+}
interface

uses Forms, Dialogs, SysUtils, Windows, TypInfo, Classes, Controls, Buttons,
  Messages;


type
    TConsWindow = class(Ô);
  private
    FOnFocus: TNotifyEvent;
    FOnBlur: TNotifyEvent;
  protected
    procedure DoEnter; override;
    procedure DoExit; override;

  public
    constructor Create(AOwner: TComponent); override;
  published
    property OnFocus: TNotifyEvent read FOnFocus write FOnFocus;
    property OnBlur: TNotifyEvent read FOnBlur write FOnBlur;
  end;
implementation
    procedure TConsWindow.FDrawPanels;
    begin

    end;
end.