unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, FileUtil, Ipfilebroker, IpHtml, SynExportHTML,
  DateTimePicker, Forms, Controls, Graphics, Dialogs, Buttons, ButtonPanel,
  ExtCtrls, StdCtrls, Menus, ActnList, ComCtrls, ColorBox, ValEdit, Grids, lclintf;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    StringGrid1: TStringGrid;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure IpHtmlPanel1Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

var
  hour: integer;
  min: integer;
  sec: integer;

  fhour: integer;
  fmin: integer;
  fsec: integer;

  allsec: integer;
  eursec: real;
  maney :real;

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

   hour := 0;
   min := 0;
   sec := 0;

   fhour := 0;
   fmin := 0;
   fsec := 0;

   maney := 0;


   // IpHtmlPanel1.CurURL('http://web.skype.com');
    StringGrid1.Columns[0].Title.Caption:='Title';
    StringGrid1.Columns[1].Title.Caption:='Time';
    StringGrid1.Columns[2].Title.Caption:='Eur';
    // StringGrid1.Columns.Delete(0);
    // StringGrid1.Columns[ColIndex].Title.Caption:='Title';
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
    StringGrid1.Cols[1][1] := Edit2.Text;
    Edit2.Text := '';
    Button1.Click;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  label27.Visible:=false;
  label28.Visible:=false;
  label30.Visible:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    if Timer1.Enabled then begin
     Timer1.Enabled := False;
     Button1.Caption := 'Start';
          Image4.Visible:=True;

  end
  else begin
     Timer1.Enabled := True;
     Button1.Caption := 'Pause';
     Button2.Enabled := True;
     Image3.Visible:=False;
          Image4.Visible:=False;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
    for I := StringGrid1.RowCount - 1 downto 1 do
    StringGrid1.Rows[I] := StringGrid1.Rows[I - 1];

    StringGrid1.Cols[1][1] :=Edit2.Text;
    StringGrid1.Cols[2][1] :=Label1.Caption+':'+Label2.Caption+':'+Label3.Caption;
    StringGrid1.Cols[3][1] :=Label4.Caption;

    Label4.Caption:='0';
    Edit2.Text := '';

    maney:=(allsec*eursec)+maney;
    Label10.Caption:=formatfloat('0.##', maney);

    hour := 0;
    min := 0;
    sec := 0;

    Label1.Caption := '00';
    Label2.Caption := '00';
    Label3.Caption := '00';

    Timer1.Enabled := False;
    Button1.Caption := 'Start';
    button2.Enabled:=false;
    Image3.Visible:=True;
    Image4.Visible:=True;

    label12.Caption:=inttostr(strtoint(label12.Caption)+1);

    //label11.Caption:='sdf';
    //Form1.Height:=134;

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Click(Sender: TObject);
begin
    if Edit2.Text = 'YOU TASK HERE...' then Edit2.Text:='';
end;

procedure TForm1.Edit2Enter(Sender: TObject);
begin

end;

procedure TForm1.Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin


end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);
begin
    if Key = #13 then begin
      //Button1.Click;
      Button1.SetFocus;
    end;
end;

procedure TForm1.IpHtmlPanel1Click(Sender: TObject);
begin

end;

procedure TForm1.Label11Click(Sender: TObject);
begin

end;

procedure TForm1.Label23Click(Sender: TObject);
begin
    PopupMenu2.PopUp;
end;

procedure TForm1.Label24Click(Sender: TObject);
begin
  PopupMenu1.PopUp;
end;

procedure TForm1.Label27Click(Sender: TObject);
begin
  OpenURL('https://www.paypal.com/ru/cgi-bin/webscr?cmd=_flow&SESSION=S4sZRu7JjfQXZ78W-M1DGNd-16L16ngZOf86DtLLEH5-9xCT1TgLlRhn0A0&dispatch=5885d80a13c0db1f8e263663d3faee8de6030e9239419d79c3f52f70a3ed57ec');
end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);

Begin

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
    Label24.Caption:='RUB/HOUR';
    Label18.Caption:='TASK RUB';
    Label21.Caption:='ALL RUB';
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
    Label24.Caption:='SEK/HOUR';
    Label18.Caption:='TASK SEK';
    Label21.Caption:='ALL SEK';
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
    Label24.Caption:='SGD/HOUR';
    Label18.Caption:='TASK SGD';
    Label21.Caption:='ALL SGD';
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
    Label24.Caption:='USD/HOUR';
    Label18.Caption:='TASK USD';
    Label21.Caption:='ALL USD';
end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  Label24.Caption:='EUR/HOUR';
  Label18.Caption:='TASK EUR';
  Label21.Caption:='ALL EUR';
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin
  Label23.Caption:='WORK DAY 1HOUR';
  Label31.Caption:='WORK DAY 1HOUR';
end;

procedure TForm1.MenuItem17Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 2HOUR';
    Label31.Caption:='WORK DAY 2HOUR';
  end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 3HOUR';
    Label31.Caption:='WORK DAY 3HOUR';
  end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 4HOUR';
    Label31.Caption:='WORK DAY 4HOUR';
  end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
    Label24.Caption:='AUD/HOUR';
    Label18.Caption:='TASK AUD';
    Label21.Caption:='ALL AUD';
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 5HOUR';
    Label31.Caption:='WORK DAY 5HOUR';
  end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 6HOUR';
    Label31.Caption:='WORK DAY 6HOUR';
  end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 7HOUR';
    Label31.Caption:='WORK DAY 7HOUR';
  end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
   Label23.Caption:='WORK DAY 8HOUR';
   Label31.Caption:='WORK DAY 8HOUR';
 end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 9HOUR';
    Label31.Caption:='WORK DAY 9HOUR';
  end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 10HOUR';
    Label31.Caption:='WORK DAY 10HOUR';
  end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 11HOUR';
    Label31.Caption:='WORK DAY 11HOUR';
  end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
    Label23.Caption:='WORK DAY 12HOUR';
    Label31.Caption:='WORK DAY 12HOUR';
  end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
    Label24.Caption:='CHF/HOUR';
    Label18.Caption:='TASK CHF';
    Label21.Caption:='ALL CHF';
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
    Label24.Caption:='CAD/HOUR';
    Label18.Caption:='TASK CAD';
    Label21.Caption:='ALL CAD';
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
    Label24.Caption:='CZK/HOUR';
    Label18.Caption:='TASK CZK';
    Label21.Caption:='ALL CZK';
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
    Label24.Caption:='DKK/HOUR';
    Label18.Caption:='TASK DKK';
    Label21.Caption:='ALL DKK';
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    Label24.Caption:='RBP/HOUR';
    Label18.Caption:='TASK RBP';
    Label21.Caption:='ALL RBP';
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
    Label24.Caption:='HUF/HOUR';
    Label18.Caption:='TASK HUF';
    Label21.Caption:='ALL HUF';
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
    Label24.Caption:='NOK/HOUR';
    Label18.Caption:='TASK NOK';
    Label21.Caption:='ALL NOK';
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
    Label24.Caption:='PLN/HOUR';
    Label18.Caption:='TASK PLN';
    Label21.Caption:='ALL PLN';
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin


    Panel2.Width:=Panel2.Width+1;
    allsec := (hour * 3600) + (min*60) + sec;
    eursec := strtoint(Edit1.Text)/3600;

    Label4.Caption:=formatfloat('0.##', allsec*eursec);
    //Label10.Caption:=formatfloat('0.##', allsec*eursec+Label4.Caption);


    sec := sec + 1;
    if sec = 60 then
      begin
        min := min + 1;
        sec := 0;
      end;
    if min = 60 then
      begin
        hour := hour + 1;
        min := 0;
      end;
    if hour = 24 then hour := 0;

    if sec < 10 then
      Label3.Caption := '0' + IntToStr(sec)
    else
      Label3.Caption := IntToStr(sec);

    if min < 10 then
      Label2.Caption := '0' + IntToStr(min)
    else
      Label2.Caption := IntToStr(min);

    if hour < 10 then
      Label1.Caption := '0' + IntToStr(hour)
    else
      Label1.Caption := IntToStr(hour);


       fsec := fsec + 1;
    if fsec = 60 then
      begin
        fmin := fmin + 1;
        fsec := 0;
      end;
    if fmin = 60 then
      begin
        fhour := fhour + 1;
        fmin := 0;
      end;
    if fhour = 24 then fhour := 0;

    if fsec < 10 then
      Label17.Caption := '0' + IntToStr(fsec)
    else
      Label17.Caption := IntToStr(fsec);

    if min < 10 then
      Label15.Caption := '0' + IntToStr(fmin)
    else
      Label15.Caption := IntToStr(fmin);

    if hour < 10 then
      Label13.Caption := '0' + IntToStr(fhour)
    else
      Label13.Caption := IntToStr(fhour);





end;

end.

