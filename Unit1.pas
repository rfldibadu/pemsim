unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    Button1: TButton;
    zconn: TZConnection;
    ZQ_X: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ZQ_Y: TZQuery;
    DataSource2: TDataSource;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    sumX: TEdit;
    Label1: TLabel;
    SumY: TEdit;
    Label2: TLabel;
    Button2: TButton;
    SumX2: TEdit;
    Label3: TLabel;
    Button3: TButton;
    Label4: TLabel;
    SumY2: TEdit;
    Button4: TButton;
    SumXY: TEdit;
    Label5: TLabel;
    xy2: TButton;
    konstanta: TEdit;
    nilaiA: TButton;
    Koefisien: TEdit;
    nilaib: TButton;
    Catatan: TMemo;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure xy2Click(Sender: TObject);
    procedure nilaiAClick(Sender: TObject);
    procedure nilaibClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
unit2;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
Form1.Close;
Form2.Close;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
i:Integer;
begin
ZQ_X.First;
i:=0;
while not ZQ_X.Eof do
 begin
   i:=i+1;
   ZQ_X.Next;
 end;
Form1.Hide;
Form2.Show;
Form2.nilaiA.Text := Form1.konstanta.Text;
Form2.nilaiB.text := Form1.Koefisien.Text;
Form2.nilaiN.Text := IntToStr(i);
 ZQ_X.First;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
totalx : Float64;
begin
ZQ_X.First;
totalx := 0;
  while not ZQ_X.Eof do
  begin
  totalx := totalx + ZQ_X.FieldByName('nilaix').AsFloat;
  ZQ_X.Next;
  end;
  sumX.Text :=  FloatToStr(totalx);
  ZQ_X.First;
  end;

procedure TForm1.Button2Click(Sender: TObject);
var
totaly : Float64;
begin
ZQ_Y.First;
 totaly := 0;
 while not ZQ_Y.Eof do
 begin
 totaly := totaly + ZQ_Y.FieldByName('nilaiy').AsFloat;
 ZQ_Y.Next;
 end;
 SumY.Text := FloatToStr(totaly);
 ZQ_Y.First;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
totalx2 : Float64;
begin
ZQ_X.First;
 totalx2 :=0;
 while not ZQ_X.Eof do
 begin
   totalx2 := totalx2 +  Sqr(ZQ_X.FieldByName('nilaix').AsFloat);
   ZQ_X.Next;
 end;
 SumX2.Text := FormatFloat('#,####0.0000',totalx2);
 ZQ_X.First;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
totaly2: Float64;
begin
ZQ_Y.First;
 totaly2:=0;
 while not ZQ_Y.Eof do
 begin
   totaly2 := totaly2 + Sqr(ZQ_Y.FieldByName('nilaiy').AsFloat);
   ZQ_Y.Next;
 end;
 SumY2.Text := FloatToStr(totaly2);
 ZQ_Y.First;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
//Application.Terminate;
end;

procedure TForm1.nilaiAClick(Sender: TObject);
var
a: Float64;
yx2: Float64;
xxy: Float64;
i:Integer;
begin
 i:=0;
 ZQ_X.First;
 while not ZQ_X.Eof do
 begin
  i:= i + 1;
  ZQ_X.Next;
 end;
 yx2:= (StrToFloat(SumY.Text) * StrToFloat(SumX2.Text));
 xxy:= (StrToFloat(sumX.Text) * StrToFloat(SumXY.Text));
 a:= (yx2-xxy)/((i*StrToFloat(SumX2.Text))-(Sqr(StrToFloat(sumX.Text))));
 konstanta.Text := FormatFloat('#####0.0000',a);
 ZQ_X.First;
end;

procedure TForm1.nilaibClick(Sender: TObject);
var
b:Float64;
i:Integer;
begin
i:=0;
ZQ_X.First;
while not ZQ_X.Eof do
begin
  i:=i+1;
  ZQ_X.Next;
end;

b:= ((i*StrToFloat(SumXY.Text)) - (StrToFloat(sumX.Text)*StrToFloat(SumY.Text)))
    /((i*StrToFloat(sumX.Text)) - (Sqr(StrToFloat(sumX.Text))));
Koefisien.Text := FormatFloat('#####0.0000',b);
 ZQ_X.First;
end;

procedure TForm1.xy2Click(Sender: TObject);
var
totalXY: Float64;
totalx1: Float64;
totaly1: Float64;
begin
  ZQ_X.First;
  ZQ_Y.First;
  //totalx1 :=0;
  //totaly1 :=0;
  totalXY :=0;
  while not ZQ_X.Eof do
  begin
  //totalx1 := ZQ_X.FieldByName('nilaix').AsFloat
    while not ZQ_Y.Eof do
    begin

    //totaly1 := ZQ_Y.FieldByName('nilaiy').AsFloat;
    totalXY := totalXY + (ZQ_X.FieldByName('nilaix').AsFloat *
    ZQ_Y.FieldByName('nilaiy').AsFloat);
    ZQ_Y.Next;
    ZQ_X.Next;
    end;

  end;
  SumXY.Text := FormatFloat('#####0.0000',totalXY);
  ZQ_X.First;
  ZQ_Y.First;
end;

end.
