unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    nilaiA: TEdit;
    nilaiB: TEdit;
    nilaiN: TEdit;
    Label3: TLabel;
    NilaiX: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    NilaiY: TEdit;
    Button2: TButton;
    NilaiR: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Button3: TButton;
    Label8: TLabel;
    NilaiDet: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses
  unit1;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
Form1.Close;
Form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
y:Float64;
x:Integer;
begin
x:=StrToInt(NilaiX.Text);
Y:=(StrToFloat(nilaiA.Text)) + (StrToFloat(nilaiB.Text)*x);

NilaiY.Text := FormatFloat('#####0.0000',y);
end;

procedure TForm2.Button3Click(Sender: TObject);
var
r, nSumXy, SumXSumY, nSumX2,
SumXp2, nSumY2, SumYp2:Float64;

begin
nSumXy := StrToFloat(nilaiN.Text)*StrToFloat(Form1.SumXY.Text);
SumXSumY := StrToFloat(Form1.sumX.Text) * StrToFloat(Form1.SumY.Text);
nSumX2 := StrToFloat(nilaiN.Text)*StrToFloat(Form1.SumX2.Text);
SumXp2 := Sqr(StrToFloat(Form1.sumX.Text));
nSumY2 := StrToFloat(nilaiN.Text)*StrToFloat(Form1.SumY2.Text);
SumYp2 := Sqr(StrToFloat(Form1.SumY.Text));

r := (nSumXy-SumXSumY)/Sqrt((nSumX2-SumXp2)*(nSumY2-SumYp2));

NilaiR.Text := FormatFloat('#####0.0000',r);
end;

procedure TForm2.Button4Click(Sender: TObject);
var
det:Float64;
begin
 det:= Sqr(StrToFloat(NilaiR.Text))*100;
 NilaiDet.Text:= FormatFloat('#####0.0000',det);
end;

end.
