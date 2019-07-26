unit Uprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, db, BufDataset, Forms, Controls, Graphics,
  Dialogs, StdCtrls, RVStyle, RichView, rxcurredit, rxpickdate, rxtooledit,
  rxdbgrid;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button2: TButton;
    dataSet: TBufDataset;
    dataSetlink: TStringField;
    dataSetmenorlance: TCurrencyField;
    Button1: TButton;
    DataSource1: TDataSource;
    edtMenorLance: TCurrencyEdit;
    Edit1: TEdit;
    edtLink: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RxDateEdit1: TRxDateEdit;
    RxDBGrid1: TRxDBGrid;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  if not dataSet.Active then
     dataSet.CreateDataset;
  dataSet.Open;
  dataSet.Active:= True;
  dataSet.Append;
  dataSetlink.AsString:=edtLink.text;
  dataSetmenorlance.AsCurrency:=edtMenorLance.Value;
  dataSet.Post;
end;

end.

