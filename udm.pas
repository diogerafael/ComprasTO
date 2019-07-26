unit UDM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,fpjson,fphttpclient;
  resourcestring
    UrlServer ='127.0.0.1';
type
  TDM = class(TDataModule)
  private

  public
    function Post(AJson: TJSONObject):boolean;

  end;

var
  DM: TDM;

implementation

{$R *.lfm}


function TDM.Post(AJson: TJSONObject):boolean;
var
   http:   TFPHTTPClient;
begin
     http.Post(UrlServer);
   result := true;
end;

end.

