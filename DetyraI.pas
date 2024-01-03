(****************************************************************************)
{ Ahmet Murati, Detyra 1, Kursi 1d}
{ Punuar me TPX.EXE për shkak se Turbo.exe jep këtë mesazh: }
{ Not enough memory to run program }
(****************************************************************************)
program Detyra;
(****************************************************************************)
{ Libraritë që is shfrytëzon programi }
uses Graph,Crt, TutConst, Drivers, Objects, Views, Menus, App, MsgBox;
(****************************************************************************)
{ Blloku për deklarimin i Tipeve }
TYPE
DetyraApp = Object(TApplication)
Constructor Init;
PROCEDURE Shto;
PROCEDURE Permbajtja;
PROCEDURE kerkesa_a;
PROCEDURE kerkesa_b;
PROCEDURE DoAboutBox;
PROCEDURE HandleEvent(VAR Event: TEvent); virtual;
PROCEDURE InitMenuBar; virtual;
PROCEDURE InitStatusLine; virtual;
END;
VEND =1..5;
gjinia =(m,f);
pergjigje=RECORD
emer,mbiemer: STRING [15];
mosha:INTEGER;
g:gjinia;
zgjedhja: ARRAY [1..5] OF VEND;
END; { Fundi i Bllokut të deklarimeve të tipeve }

(****************************************************************************)

CONST n=30; {Konstatet}

(****************************************************************************)

PROCEDURE Ngj(tc,tb:word);FORWARD; {Deklarimi FORWARD i procedurave}
PROCEDURE DESKTOPI;FORWARD; {që kanë vlerë të njëtë përdorimi}
PROCEDURE box(x1,y1,x2,y2:INTEGER);FORWARD;

(****************************************************************************)

PROCEDURE INTRO;
{Kjo PROCEDURE Intro është krijuar si uvertyrë e programit.}
LABEL PA_GRAFIK;
CONST pr=’presents’; th= ‘D.J. ThemA’; dItem= ‘Detyrë Kursi 1';
VAR i,j,grDriver,wid,VAR1,leng,x,y:INTEGER;
ErrorCode:INTEGER;
Begin
grDriver:=detect;
InitGraph(grdriver,VAR1,”);SetTextStyle(7,0,4);
ErrorCode:=GraphResult;
if ErrorCode <> grOk then goto pa_grafik;
SetTextJustify(1,1); x:=GetMaxX div 2 ;Y:=GetMaxY div 2; Delay(2000);
FOR i:= 1 TO 63 DO
Begin SetRGBPalette(2, 0, i, i); Setcolor(2);delay(15);outtextxy(x,y,th);
SetColor(2); DELAY(10); OutTextXY(x,200,’Ahmet Murati’);
END; DELAY(850);
FOR i:= 60 DownTO 0 DO
Begin SetRGBPalette(2, 0 , i, i); SetColor(2);DELAY(15);OutTextXY(x,y,th);
END;
ClearViewPort;
DELAY(500);
SetRGBPalette(2, 63, 0,63);SetTextStyle(10,0,5);
SetColor(2);OutTextXY(x,y,pr);
VAR1 := TextWidth(pr) div 2;
j:=TextHeight(‘a’)div 2;
DELAY(2500);
FOR i:= 1 TO VAR1 DO
Begin DELAY(10);
SetColor(11);
LINE (x-VAR1+i-1,y-10,x-VAR1+i-1,y+49);
LINE (x+VAR1-i+1,y-10,x+VAR1-i+1,y+49); SetColor(0);
LINE (x-VAR1+i-2,y-10,x-VAR1+i-2,y+49);
LINE (x+VAR1-i+2,y-10,x+VAR1-i+2,y+49);
LINE (x-VAR1+i,y-10,x-VAR1+i,y+49);
LINE (x+VAR1-i,y-10,x+VAR1-i,y+49); END;
FOR i:= 1 TO 36 DO
Begin DELAY(10);
LINE (318,225+i,320,225+i); LINE (318,300-i,320,300-i);
END;
FOR i:= 262 DownTO 100 DO
Begin DELAY(1);
PutPixel(318,i,11); PutPixel(320,i,11);
PutPixel(318,i+5,0); PutPixel(320,i+5,0);
END;
SetColor(0);
LINE (318,101,318,105); LINE (320,101,320,105);
FOR i:= 0 TO 100 DO
Begin DELAY(10);
PutPixel(319-i,100,11); PutPixel(319+i,100,11);
END;
FOR i:= 0 TO 100 DO Begin DELAY(3); PutPixel(319-i,100,11);
PutPixel(319+i,100,11); END;
FOR i:= 0 TO 80 DO Begin DELAY(3); PutPixel(219,100+i,11);
PutPixel(419,100+i,11); END;
FOR i:= 0 TO 100 DO Begin DELAY(3); PutPixel(219+i,180,11);
PutPixel(419-i,180,11); END; DELAY(500);
FOR i:= 1 TO 60 DO Begin SetTextStyle(7,0,1);
SetRGBPalette(2, 0, i, i);
SetColor(2);DELAY(10);OutTextXY(x,y-100,dItem);
END; DELAY(850);
FOR i:= 60 DownTO 0 DO
Begin
SetRGBPalette(2, 0, i, i);SetTextStyle(7,0,1);
SetColor(2);DELAY(10);OutTextXY(x,y-100,dItem);
LINE (219,100,219,180); LINE (419,100,419,180);
LINE (219,100,419,100); LINE (219,180,419,180);
END; closegraph; PA_GRAFIK: END;
(****************************************************************************)
FUNCTION kenga(n:BYTE):STRING;
Begin CASE n OF
1:kenga:=(‘When a man loves a woman ‘); 2:kenga:=(‘E kam emrin kosovar ‘);
3:kenga:=(‘Krah për krah me U€K-në ‘); 4:kenga:=(‘Unchain my heart ‘);
5:kenga:=(‘Dov”‚ l”amore ‘);6:kenga:=(‘Amore erotique ‘);
7:kenga:=(‘Said I loved but I lied ‘); 8:kenga:=(‘Marshi i UÇK-së ‘);
9:kenga:=(‘Give it To me baby… ‘); 10:kenga:=(‘Wind of change ‘);
11:kenga:=(‘Twister faith ‘); 12:kenga:=(‘Oxygen 1O ‘);
13:kenga:=(‘What a falling in love ‘); 14:kenga:=(‘Ushtarit tim ‘);
15:kenga:=(‘Born to touch your feelings ‘); 16:kenga:=(‘Für Elize ‘);
17:kenga:=(‘Big Big Girl ‘); 18:kenga:=(‘Harroj ‘);
19:kenga:=(‘Would you… ‘); 20:kenga:=(‘Equador ‘);
21:kenga:=(‘Iho de la luna ‘); 22:kenga:=(‘You and me ‘);
23:kenga:=(‘Get freaky ‘); 24:kenga:=(‘Sound of music ‘);
25:kenga:=(‘Time to say goodbay ‘); 26:kenga:=(‘Out of dark ‘);
27:kenga:=(‘Rock me Amadeus ‘); 28:kenga:=(‘Jeany ‘);
29:kenga:=(‘Emotional ‘); 30:kenga:=(‘Naked ‘);
ELSE kenga:=’—————————‘;
END;END;
(****************************************************************************)
FUNCTION singer(n:BYTE):STRING;
Begin
CASE n OF
1:singer:=(‘Michael Bolton ‘); 2:singer:=(‘Shkurte Fejza ‘);
3:singer:=(‘Mjellma ‘); 4:singer:=(‘Joe Cocker ‘);
5:singer:=(‘Cher ‘); 6:singer:=(‘Carolina Marquez ‘);
7:singer:=(‘Michael Bolton ‘); 8:singer:=(‘Arif Vlladi ‘);
9:singer:=(‘OffSpring ‘);10:singer:=(‘Scorpions ‘);
11:singer:=(‘Emilia ‘);12:singer:=(‘Jean Michel-Jarr‚ ‘);
13:singer:=(‘Chris Rea ‘);14:singer:=(‘Edona Llalloshi ‘);
15:singer:=(‘Scorpions ‘);16:singer:=(‘Johan Sebastian Bach ‘);
17:singer:=(‘Emilia ‘);18:singer:=(‘Burhan Halili ‘);
19:singer:=(‘Touch & Go ‘);20:singer:=(‘Sash ‘);
21:singer:=(‘Mejan¢ ‘);22:singer:=(‘Scorpions ‘);
23:singer:=(‘Music Instructor ‘);24:singer:=(‘Jean Micheal-Jarr‚ ‘);
25:singer:=(‘A. Bocello & S.Brightmen’);26:singer:=(‘Falco ‘);
27:singer:=(‘Falco ‘);28:singer:=(‘Falco ‘);
29:singer:=(‘Falco ‘);30:singer:=(‘Falco ‘);
ELSE singer:=’———————–‘;
END;END;
(****************************************************************************)
{ Procedura spc mbush një varg të caktuar me hapsira boshe }
PROCEDURE spc(n:BYTE); VAR i:INTEGER; Begin FOR i:= 1 TO n DO WRITE(#32); END;
{ Fundi i procedurës SPC }
(****************************************************************************)
{ Funksioni Merr_str merr një varg të caktuar me shkrojna dhe disa
shenja të caktuara.}
FUNCTION Merr_Str(n:BYTE;VAR abort:BOOLEAN):STRING;
VAR poz,x,y,i: INTEGER; ch:char; str1:STRING; LABEL a1;
Begin abort:=FALSE; x:=WhereX;y:=WhereY; poz:=1;
str1:=”; GoToXY(x,y); FOR i:=1 TO n DO WRITE(‘*’);GoToXY(x,y);
a1: ch := ReadKey;
CASE ch OF ‘ ‘,’A’..’Z’,’a’..’z’,’0'..’9',’ë’,’ç’,’Ç’:Begin
If poz <= n then Begin str1 := str1 + ch; poz := poz + 1; WRITE(ch);
END; goto a1; END;
chr(8) : Begin if length(str1) < 2 THEN str1 :=”; IF poz > 1 THEN Begin
delete(str1,length(str1),1); WRITE(#8,’ú’,#8); poz := poz – 1; END;
goto a1;END;
#27:Begin merr_str:=”;abort:=true;END;
chr(13): Merr_str:=str1; ELSE goto a1;
{Fundi i Funksionit Merr_Str.}END;END;
(****************************************************************************)

(****************************************************************************)
{ Funksioni Merr_Num merr numër të plotë}
FUNCTION merr_num(n:BYTE; abort:BOOLEAN):longint;
VAR x,y,poz:BYTE; c:char; m:real; i,code:INTEGER;
LABEL a1;
Begin
x:=WhereX; y:=WhereY;
poz:=1; Merr_num := 0; m:= 0;
GoToXY(x,y); FOR i:=1 TO n DO
Write(‘ú’); GoToXY(x,y);
a1: c:= ReadKey; m := Trunc(m);
CASE c OF
‘0’: Begin
IF ((poz > 1) and (poz <= n)) THEN Begin
m := m * 10; Write(c); poz := poz + 1;
END; Goto a1; END;
‘1’..’9': Begin
IF poz <= n THEN Begin
val(c,i,code); m := (m * 10) + i; WRITE(c);
poz := poz + 1; END;
goto a1;
END;
#8: Begin IF poz > 1 THEN Begin WRITE(#8,’ú’,#8); poz:=poz-1;
m := m/10; END; GoTo a1; END;
#27: Begin abort := true;END;
#13: Begin merr_num := trunc(m); END; ELSE GoTo a1;
END END; { Përfundimi i procedurës Merr_Num }
(****************************************************************************)

(****************************************************************************)
{ Procedura Desktop kthen pamjen e desktopit.}
PROCEDURE Desktopi; VAR i,j:INTEGER;
Begin Ngj(1, 7);
FOR i:=1 TO 80 DO FOR j:= 2 TO 24 DO Begin
GoToXY(i,j); WRITE(‘#’); END; END;
{ Fundi i PROCEDUREs DESKTOPI }
(****************************************************************************)

(****************************************************************************)
PROCEDURE prit; {Procedura prit}
VAR c:char; Begin c:=ReadKey; END; {Fundi i procedurës prit}
(****************************************************************************)

(****************************************************************************)
{ Procedura Ngj bën rregullimin e ngjyrave në vEND se të shkruhen
dy intruksionet e bibliotekës CRT, TextColor dhe TextBackground }
PROCEDURE Ngj(tc,tb:WORD); Begin textcolor(tc); textbackground(tb);END;
(****************************************************************************)

(****************************************************************************)
{ Procedura BOX vizaton një Kuti ndërmjet koordinatave të dhëna.}
PROCEDURE box{(x1,y1,x2,y2:INTEGER)}; VAR boxwdth,i,j:INTEGER;
Begin BoxWdth := x2 – x1 + 1; GoToXY(x1,y1);Write(‘Ú’);
FOR i:= 1 TO BoxWdth – 2 DO Write(‘Ä’);Write(‘¿’);
FOR i := y1 +1 TO y2 -1 DO Begin GoToXY(x1,i);Write(‘³’);
FOR j := 1 TO boxwdth – 2 DO WRITE(‘ ‘);WRITE(‘³’); END;
GoToXY(x1,y2);WRITE(‘À’); FOR i:= 1 TO (boxwdth – 2) DO WRITE(‘Ä’);
WRITE(‘Ù’); END; { Fundi i PROCEDUREs BOX }
(****************************************************************************)

(****************************************************************************)
{CONSTRUCTOR-i është metodë speciale që inicializon një objekt që përmban
metoda virtuale.}
CONSTRUCTOR DetyraApp.Init;
Begin INHERITED Init; END;
{Fundi i CONSTRUCTOR-it.}
(****************************************************************************)
{Kjo procedurë shfaq listën e të anketuarëve}
PROCEDURE Te_anketuarit;
VAR rest,i,l:INTEGER; rec:pergjigje; f1: FILE OF pergjigje;
zgj,delta:BYTE; ch: CHAR; abort:BOOLEAN;
LABEL a1,a2,a4,fundi;
Begin ngj(1,7); box(05,6,75,19);
GoToXY(30,6);WRITE(‘Lista e të anketuarëve’);
Begin ASSIGN (f1,’a:\Anketa.ahm’); RESET(f1); zgj:=1; l:=FileSize(f1);
a4: ;GoToXY(25,2);
GoToXY(15,7);WRITE(‘ Emri Mbiemri Mosha Gjinia’);
GoToXY(11,8);WRITE(‘----------------------------------------------------------’);
a1: SEEK(f1,zgj-1);
READ (f1, rec);
GoToXY(11, 9); WRITE(zgj:2,’.’);
GoToXY(15, 9);WRITE(rec.emer);FOR rest := length(rec.emer) TO 15 DO WRITE(‘ ‘);
GoToXY(35, 9);WRITE(rec.mbiemer);FOR rest := length(rec.mbiemer) TO 15 DO WRITE(‘ ‘);
GoToXY(54, 9);WRITE(rec.mosha:3,’ vjeç’:5);
GoToXY(58, 9);
CASE rec.g OF
m:Begin WRITE(‘Mashkull’);END;
f:Begin WRITE(‘Femër ‘);END;
END;
GoToXY(67,17); WRITE(zgj:2,’/’,l);
GoToXY(8,17);WRITE(‘Gjithesej ndodhen ‘,l:3,’ rekorde ne skedarin kryesor. ³’);
GoToXY(8,11);WRITE(‘Pref. 1: ‘,kenga(rec.zgjedhja[1]),’ úúú ‘,singer(rec.zgjedhja[1]));
FOR i:= length(kenga(rec.zgjedhja[1])) TO 25 DO WRITE(‘ ‘);
GoToXY(8,12);WRITE(‘ 2: ‘,kenga(rec.zgjedhja[2]),’ úúú ‘,singer(rec.zgjedhja[2]));
FOR i:= length(kenga(rec.zgjedhja[2])) TO 25 DO WRITE(‘ ‘);
GoToXY(8,13);WRITE(‘ 3: ‘,kenga(rec.zgjedhja[3]),’ úúú ‘,singer(rec.zgjedhja[3]));
FOR i:= length(kenga(rec.zgjedhja[3])) TO 25 DO WRITE(‘ ‘);
GoToXY(8,14);WRITE(‘ 4: ‘,kenga(rec.zgjedhja[4]),’ úúú ‘,singer(rec.zgjedhja[4]));
FOR i:= length(kenga(rec.zgjedhja[4])) TO 25 DO WRITE(‘ ‘);
GoToXY(8,15);WRITE(‘ 5: ‘,kenga(rec.zgjedhja[5]),’ úúú ‘,singer(rec.zgjedhja[5]));
FOR i:= length(kenga(rec.zgjedhja[5])) TO 25 DO WRITE(‘ ‘);
a2: ch:=READKey;
CASE ch OF
‘H’:Begin IF zgj > 1 THEN Begin zgj := zgj – 1; GoTo a1; END; GoTo a2;END;
‘P’:Begin IF zgj < l THEN Begin zgj := zgj + 1; GoTo a1; END; GoTo a2;END;
#27:Begin exit; ;END ELSE GoTo a2; END; fundi: close(f1); END; END;
{ Fundi i procedurës që liston të anketuarit}
(****************************************************************************)

(****************************************************************************)
{Kjo procedurë liston kënget që marin pjesë në konkurrim}
{Fillimi i procedurës lista_Kenge}
PROCEDURE lista_Kenge;
CONST
a = ‘ Nr.Rend. Titulli Këndon’;
b1 = ‘------------------------------------------------------------------’;
type str = RECORD Kg:BYTE; kendon:BYTE; END;
VAR i:BYTE; c: CHAR; LABEL poz1,poz2,fill,fundi,lex;
Begin DESKTOPI;Ngj(1,7);
box(10,12,79,20);GoToXY(40,12);
GoToXY(37,12);WRITE(‘ Lista e këngëve ‘);
GoToXY(12,13);WRITE(a);GoToXY(12,14);WRITEln(b1); i:=1;
GoToXY(15,15); WRITE((1):2,’.’,kenga(1):30,’ úúúú ‘,singer(1):20);
GoToXY(15,16); WRITE((2):2,’.’,kenga(2):30,’ úúúú ‘,singer(2):20);
GoToXY(15,17); WRITE((3):2,’.’,kenga(3):30,’ úúúú ‘,singer(3):20);
GoToXY(15,18); WRITE((4):2,’.’,kenga(4):30,’ úúúú ‘,singer(4):20);
GoToXY(15,19); WRITE((5):2,’.’,kenga(5):30,’ úúúú ‘,singer(5):20);
fill:
c:=readkey;
case c of
#72:BEGIN IF i=26 THEN GOTO POZ1;
Inc(i);
GoToXY(15,15); WRITE((i):2,’.’, kenga(i):30,’ úúúú ‘, singer(i):20);
GoToXY(15,16); WRITE((i+1):2,’.’,kenga(i+1):30,’ úúúú ‘,singer(i+1):20);
GoToXY(15,17); WRITE((i+2):2,’.’,kenga(i+2):30,’ úúúú ‘,singer(i+2):20);
GoToXY(15,18); WRITE((i+3):2,’.’,kenga(i+3):30,’ úúúú ‘,singer(i+3):20);
GoToXY(15,19); WRITE((i+4):2,’.’,kenga(i+4):30,’ úúúú ‘,singer(i+4):20);
poz1:
END;
#80:begin IF i=1 THEN GOTO POZ2;
IF i=2 THEN GOTO POZ2;
Dec(i);
GoToXY(15,15); WRITE((i):2,’.’, kenga(i):30,’ úúúú ‘, singer(i):20);
GoToXY(15,16); WRITE((i+1):2,’.’,kenga(i+1):30,’ úúúú ‘,singer(i+1):20);
GoToXY(15,17); WRITE((i+2):2,’.’,kenga(i+2):30,’ úúúú ‘,singer(i+2):20);
GoToXY(15,18); WRITE((i+3):2,’.’,kenga(i+3):30,’ úúúú ‘,singer(i+3):20);
GoToXY(15,19); WRITE((i+4):2,’.’,kenga(i+4):30,’ úúúú ‘,singer(i+4):20);
POZ2:
end;
#27: GOTO FUNDI;
END;
GOTO FILL;
FUNDI:
DESKTOPI; END; {Fundi i procedurës lista_Kenge}
(****************************************************************************)

(****************************************************************************)
{Procedura për bërjen Kutisë së InFORmatave mbi programin}
PROCEDURE DetyraApp.DOAboutBox;
Begin DESKTOPI;
MessageBox(#3’Detyrë kursi 1’#13 + #3’E drejte e kopjes 1999’#13#3’Ahmet Murati’, nil, mfInFORmation or mfOKButton); END;
{Fun i procedurës DOAboutBox}
(****************************************************************************)

(****************************************************************************)
(****************************************************************************)
{Kjo PROCEDURE shfaq përgjigjen për kërkesën a të detyrës 1 së kursit}
PROCEDURE DetyraApp.kerkesa_A; {SHFAQ Kenget simbas rENDit te preferencave }
CONST
a = ‘ Vendi Titulli Këndon Pikët Nr.’;
b = ‘------------------------------------------------------------------------’;
type str = RECORD Kg:BYTE; piket:BYTE; END;
VAR de:STRING; W,i,j,gama: INTEGER; rec:pergjigje; f1: FILE OF pergjigje;
delta:BYTE; ch: CHAR; vektor:ARRAY [1..n]OF BYTE; vek:ARRAY [1..n]OF str;
temp:str;
LABEL poz1,poz2,fill,fundi,lex,lart,poshte,poz3;
Begin ASSIGN (f1,’a:\anketa.ahm’);
RESET(f1);Ngj(1,7); box(2,15,78,23);
FOR i:= 1 TO n DO
Begin vektor[i] := 0; vek[i].piket := 0; vek[i].kg := 0;
END;{Pastrohen vektorin VEKTOR }
while not eOF(f1) DO
Begin
READ (f1,rec);
FOR j:= 1 TO 5 DO
Begin gama:= rec.zgjedhja[j];
IF (gama > 0) and (gama <= 30) THEN
vektor[gama]:= vektor[gama] + 1; END; END;
close(f1);
FOR i:= 1 TO n DO
Begin vek[i].piket := vektor[i];vek[i].kg:=i;END;
FOR i:= 1 TO n DO
FOR J:= i+1 TO n DO
Begin IF vek[i].piket < vek[j].piket THEN
Begin temp.piket:=vek[i].piket;temp.kg:=vek[i].kg;
vek[i].piket:=vek[j].piket;vek[i].kg:=vek[j].kg;
vek[j].piket:=temp.piket;vek[j].kg:=temp.kg;
END; END;
Begin
GoToXY(25,15); WRITE(‘ Kërkesa (a). Lista e këngëve Fituese ‘);
GoToXY(04,16); WRITE(a);GoToXY(4,17);WRITEln(b); i:=1;
GoToXY(04,18); WRITE((1):2,’.’,kenga(vek[1].kg):30,’ úú ‘,singer(vek[1].kg):20,’ úú ‘,vek[1].piket:2,'(‘:3,vek[1].kg:2,’)’);
GoToXY(04,19); WRITE((2):2,’.’,kenga(vek[2].kg):30,’ úú ‘,singer(vek[2].kg):20,’ úú ‘,vek[2].piket:2,'(‘:3,vek[2].kg:2,’)’);
GoToXY(04,20); WRITE((3):2,’.’,kenga(vek[3].kg):30,’ úú ‘,singer(vek[3].kg):20,’ úú ‘,vek[3].piket:2,'(‘:3,vek[3].kg:2,’)’);
GoToXY(04,21); WRITE((4):2,’.’,kenga(vek[4].kg):30,’ úú ‘,singer(vek[4].kg):20,’ úú ‘,vek[4].piket:2,'(‘:3,vek[4].kg:2,’)’);
GoToXY(04,22); WRITE((5):2,’.’,kenga(vek[5].kg):30,’ úú ‘,singer(vek[5].kg):20,’ úú ‘,vek[5].piket:2,'(‘:3,vek[5].kg:2,’)’);

W:=1;
fill:
ch:=readkey;
case ch of
#72:BEGIN IF W<1 THEN GOTO POZ2; IF W=26 THEN GOTO POZ1;if vek[W+5].piket=0 then goto poz2;
Inc(W);
GoToXY(04,18); WRITE((W):2,’.’, kenga(vek[W].kg):30,’ úú ‘, singer(vek[W].kg):20,’ úú ‘, vek[W].piket:2,'(‘:3,
vek[W].kg:2,’)’);
GoToXY(04,19); WRITE((W+1):2,’.’,kenga(vek[W+1].kg):30,’ úú ‘,singer(vek[W+1].kg):20,’ úú ‘,vek[W+1].piket:2,'(‘:3,
vek[W+1].kg:2,’)’);
GoToXY(04,20); WRITE((W+2):2,’.’,kenga(vek[W+2].kg):30,’ úú ‘,singer(vek[W+2].kg):20,’ úú ‘,vek[W+2].piket:2,'(‘:3,
vek[W+2].kg:2,’)’);
GoToXY(04,21); WRITE((W+3):2,’.’,kenga(vek[W+3].kg):30,’ úú ‘,singer(vek[W+3].kg):20,’ úú ‘,vek[W+3].piket:2,'(‘:3,
vek[W+3].kg:2,’)’);
GoToXY(04,22); WRITE((W+4):2,’.’,kenga(vek[W+4].kg):30,’ úú ‘,singer(vek[W+4].kg):20,’ úú ‘,vek[W+4].piket:2,'(‘:3,
vek[W+4].kg:2,’)’);
poz1:
END;
#80:begin IF W<3 THEN GOTO POZ2 ;
IF vek[W+4].piket <> 0 THEN Begin
Dec(W);
GoToXY(04,18); WRITE((W):2,’.’,kenga(vek[W].kg):30,’ úú ‘,singer(vek[W].kg):20,’ úú ‘,vek[W-4].piket:2,'(‘:3,
vek[W].kg:2,’)’);
GoToXY(04,19); WRITE((W+1):2,’.’,kenga(vek[W+1].kg):30,’ úú ‘,singer(vek[W+1].kg):20,’ úú ‘,vek[W+1].piket:2,'(‘:3,
vek[W+1].kg:2,’)’);
GoToXY(04,20); WRITE((W+2):2,’.’,kenga(vek[W+2].kg):30,’ úú ‘,singer(vek[W+2].kg):20,’ úú ‘,vek[W+2].piket:2,'(‘:3,
vek[W+2].kg:2,’)’);
GoToXY(04,21); WRITE((W+3):2,’.’,kenga(vek[W+3].kg):30,’ úú ‘,singer(vek[W+3].kg):20,’ úú ‘,vek[W+3].piket:2,'(‘:3,
vek[W+3].kg:2,’)’);
GoToXY(04,22); WRITE((W+4):2,’.’,kenga(vek[W+4].kg):30,’ úú ‘,singer(vek[W+4].kg):20,’ úú ‘,vek[W+4].pIket:2,'(‘:3,
vek[W+4].kg:2,’)’);END;
POZ2:
end;

#27: GoTo FUNDI;END;GoTo FILL;END;fundi:DESKTOPI;END;
{Fundi i procedurës që liston këngët fituese}
(****************************************************************************)

(****************************************************************************)
PROCEDURE DetyraApp.kerkesa_b; {SHFAQ Kenget simbas rENDit te preferencave }
CONST
c = ‘ Emri Mbiemri Mosha Nr.Rekordit ‘;
d = ‘===========================================================’;
ma =’1.Meshkuj (të anketuar) ‘; fe= ‘2.Femra (të anketuara) ‘;
mbi=’Mbi 25 vjeç’; nen=’Nën 25 vjeç’;
type str = RECORD Kg:BYTE; piket:BYTE; end;
fit = ARRAY [1..3] OF BYTE;
VAR i:BYTE; rec:pergjigje; f1: FILE OF pergjigje;
FlSize:BYTE; ch,ch2: CHAR; Fituese:fit;
flag_mbi,flag_nen,enter_flag:BOOLEAN;
LABEL lart,poshte,fundi,lex,ask,ask2,ask3,go;

(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

Procedure mM25(fituese:fit);
VAR i,k,lr,j:INTEGER; rec:pergjigje; f1: FILE OF pergjigje;
pr,tmp,fll,fnd:BYTE; Personi:ARRAY [1..n]OF BYTE;
what: CHAR; Flag:BOOLEAN;
LABEL fund,lex,sss;
BEGIN ASSIGN (f1,’a:\anketa.ahm’); Ngj(0,11); box(10,3,70,23); GoToXY(22,2);
for i:= 1 to n do personi[i]:=0; pr:=0;j:=0;
reset(f1);
while not eOF(f1) do begin
READ (f1,rec); pr:=pr+1;
IF ((rec.g = m) and (rec.mosha > 25) ) THEN begin flag := true;
for k:= 1 to 5 do for lr:= 1 to 3 do IF (flag=true) THEN
IF rec.zgjedhja[k] = fituese[Lr] THEN
begin j:=j+1;personi[j]:= pr;flag:=FALSE; end; end; end;
pr:=0; Ngj(0,11); GoToXY(11,4);write(c);GoToXY(11,5);write(d); Ngj(1,11);
begin for i := 1 to j do begin
SEEK(f1,personi[i]-1);READ (f1,rec); GoToXY(11,5+i);
Write(rec.Emer:15,’ ‘,rec.mbiemer:15,’ úúú ‘);
write(rec.mosha:3,’ úúú ‘,personi[i]:3);
end; sss:what:=READKey;if (what <> #27) THEN GoTo sss;
GoTo fund; end;
lex: what:=READKey;
CASE what OF #27: begin DESKTOPI; GoTo fund; end;
ELSE GoTo lex; end; fund: end; {fundi i procedures mM25}

(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

Procedure mN25(fituese:fit);
VAR i,k,lr,j:INTEGER; rec:pergjigje; f1: FILE OF pergjigje;
pr,tmp,fll,fnd:BYTE; Personi:ARRAY [1..n]OF BYTE;
what: CHAR; Flag:BOOLEAN;
LABEL fund,lex,sss;
BEGIN ASSIGN (f1,’anketa.dat’); Ngj(0,11); box(10,3,70,23); GoToXY(22,2);
for i:= 1 to n do personi[i]:=0; pr:=0;j:=0;
reset(f1);
while not eOF(f1) do begin
READ (f1,rec); pr:=pr+1;
IF ((rec.g = m) and (rec.mosha < 25) ) THEN begin flag := true;
for k:= 1 to 5 do for lr:= 1 to 3 do IF (flag=true) THEN
IF rec.zgjedhja[k] = fituese[Lr] THEN
begin j:=j+1;personi[j]:= pr;flag:=FALSE; end; end; end;
pr:=0; Ngj(0,11); GoToXY(11,4);write(c);GoToXY(11,5);write(d); Ngj(1,11);
begin for i := 1 to j do begin
SEEK(f1,personi[i]-1);READ (f1,rec); GoToXY(11,5+i);
Write(rec.Emer:15,’ ‘,rec.mbiemer:15,’ úúú ‘);
write(rec.mosha:3,’ úúú ‘,personi[i]:3);
end; sss:what:=READKey;if (what <> #27) THEN GoTo sss;
GoTo fund; end;
lex: what:=READKey;
CASE what OF #27: begin DESKTOPI; GoTo fund; end;
ELSE GoTo lex; end; fund: end; {fundi i procedures mM25}

(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

Procedure fM25(fituese:fit);
VAR i,k,lr,j:INTEGER; rec:pergjigje; f1: FILE OF pergjigje;
pr,tmp,fll,fnd:BYTE; Personi:ARRAY [1..n]OF BYTE;
what: CHAR; Flag:BOOLEAN;
LABEL fund,lex,sss;
BEGIN ASSIGN (f1,’anketa.dat’); Ngj(0,11); box(10,3,70,23); GoToXY(22,2);
for i:= 1 to n do personi[i]:=0; pr:=0;j:=0;
reset(f1);
while not eOF(f1) do begin
READ (f1,rec); pr:=pr+1;
IF ((rec.g = f) and (rec.mosha > 25) ) THEN begin flag := true;
for k:= 1 to 5 do for lr:= 1 to 3 do IF (flag=true) THEN
IF rec.zgjedhja[k] = fituese[Lr] THEN
begin j:=j+1;personi[j]:= pr;flag:=FALSE; end; end; end;
pr:=0; Ngj(0,11); GoToXY(11,4);write(c);GoToXY(11,5);write(d); Ngj(1,11);
begin for i := 1 to j do begin
SEEK(f1,personi[i]-1);READ (f1,rec); GoToXY(11,5+i);
Write(rec.Emer:15,’ ‘,rec.mbiemer:15,’ úúú ‘);
write(rec.mosha:3,’ úúú ‘,personi[i]:3);
end; sss:what:=READKey;if (what <> #27) THEN GoTo sss;
GoTo fund; end;
lex: what:=READKey;
CASE what OF #27: begin DESKTOPI; GoTo fund; end;
ELSE GoTo lex; end; fund: end; {fundi i procedures mM25}

(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

Procedure fN25(fituese:fit);
VAR i,k,lr,j:INTEGER; rec:pergjigje; f1: FILE OF pergjigje;
pr,tmp,fll,fnd:BYTE; Personi:ARRAY [1..n]OF BYTE;
what: CHAR; Flag:BOOLEAN;
LABEL fund,lex,sss;
BEGIN ASSIGN (f1,’anketa.dat’); Ngj(0,11); box(10,3,70,23); GoToXY(22,2);
for i:= 1 to n do personi[i]:=0; pr:=0;j:=0;
reset(f1);
while not eOF(f1) do begin
READ (f1,rec); pr:=pr+1;
IF ((rec.g = f) and (rec.mosha < 25) ) THEN begin flag := true;
for k:= 1 to 5 do for lr:= 1 to 3 do IF (flag=true) THEN
IF rec.zgjedhja[k] = fituese[Lr] THEN
begin j:=j+1;personi[j]:= pr;flag:=FALSE; end; end; end;
pr:=0; Ngj(0,11); GoToXY(11,4);write(c);GoToXY(11,5);write(d); Ngj(1,11);
begin for i := 1 to j do begin
SEEK(f1,personi[i]-1);READ (f1,rec); GoToXY(11,5+i);
Write(rec.Emer:15,’ ‘,rec.mbiemer:15,’ úúú ‘);
write(rec.mosha:3,’ úúú ‘,personi[i]:3);
end; sss:what:=READKey;if (what <> #27) THEN GoTo sss;
GoTo fund; end;
lex: what:=READKey;
CASE what OF #27: begin DESKTOPI; GoTo fund; end;
ELSE GoTo lex; end; fund: end; {fundi i procedures mM25}

(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

Procedure jep_fit(VAR fituese:fit;VAR flsize:BYTE);
VAR i,j,gama:INTEGER; vektor:ARRAY [1..n]OF BYTE; vek:ARRAY [1..n]OF str;
temp:str;
begiN ASSIGN (f1,’anketa.dat’); reset(f1);
for i:= 1 to n do begin {Pastrohet vektori VEKTOR }
vektor[i] := 0; vek[i].piket := 0; vek[i].kg := 0; end;

while not eOF(f1) do begin READ (f1,rec);
for j:= 1 to 5 do begin
gama:= rec.zgjedhja[j]; IF (gama > 0) and (gama <= N) THEN
vektor[gama]:= vektor[gama] + 1; end; end;
close(f1);
for i:= 1 to n do begin
vek[i].piket := vektor[i];vek[i].kg:=i;end;
for i:= 1 to n do for J:= i+1 to n do
begin IF vek[i].piket < vek[j].piket THEN begin
temp.piket:=vek[i].piket;temp.kg:=vek[i].kg;
vek[i].piket:=vek[j].piket;vek[i].kg:=vek[j].kg;
vek[j].piket := temp.piket; vek[j].kg:=temp.kg;
end; end; for i:= 1 to 3 do fituese[i]:= vek[i].kg; end;
begin
go: desktopi; Ngj(7,1); box(16,8,65,16);
GoToXY(22,11);Write(‘ Zgjidhni kategorinë që ju intereson.’);
GoToXY(22,12);Write(‘* * * * * * * * * * * * * * * * * * *’);
ask: GoToXY(30,13);Ngj(12,1);Write(ma); GoToXY(30,14);Write(fe);Ngj(0,15);
ch:=READKey;CASE ch OF
‘1’,’m’,’M’:begin Ngj(12,1);GoToXY(25,14);Write(fe);
Ngj(1,white); GoToXY(25,13);Write(ma);
box(49,13,63,16);Ngj(white,red); GoToXY(51,14);Write(nen);Ngj(1,7);
GoToXY(51,15);Write(Mbi);GoToXY(52,15);
flag_mbi:=true;Flag_nen:=FALSE;GoToXY(1,25);
ask2:ch2:=READKey;
CASE ch2 OF
#32:begin IF (flag_mbi=true) THEN begin
flag_mbi:=FALSE;flag_nen:=true;;Ngj(15,red);
GoToXY(51,15);Write(Mbi);GoToXY(52,15); Ngj(1,7);
GoToXY(51,14);Write(Nen);Ngj(1,7);GoToXY(1,1);
GoTo ask2;end
ELSE begin flag_mbi:=true;flag_nen:=FALSE; Ngj(1,7);
GoToXY(51,15);Write(Mbi);GoToXY(52,15); Ngj(15,red);
GoToXY(51,14);Write(Nen);GoToXY(1,1);GoTo ask2;
end; end;

#13:begin jep_fit(fituese,flsize);
IF (flag_mbi=FALSE) THEN begin mM25(fituese); GoTo go;end
ELSE begin mN25(fituese); GoTo go;end; end;

#27:begin desktopi; Ngj(7,1); box(16,8,65,16);
GoToXY(22,11);Write(‘ Zgjidhni kategorinë që ju intereson.’);
GoToXY(22,12);Write(‘* * * * * * * * * * * * * * * * * * *’);
GoToXY(30,13);Ngj(12,1);Write(ma);
GoToXY(30,14);Write(fe);Ngj(0,15);
GoTo ask;end;
ELSE GoTo ask2;end;
end;
‘2’,’f’,’F’:begin;
Ngj(1,7);
GoToXY(25,14);Write(fe);
box(49,14,63,17);Ngj(white,red);
GoToXY(51,15);Write(nen);Ngj(1,7);
GoToXY(51,16);Write(Mbi);GoToXY(52,15);
flag_mbi:=true;Flag_nen:=FALSE;GoToXY(1,25);

ask3:ch2:=READKey;
CASE ch2 OF
#32:begin IF (flag_mbi=true) THEN begin
flag_mbi:=FALSE;flag_nen:=true; Ngj(15,red);
GoToXY(51,16);Write(Mbi);Ngj(1,7);
GoToXY(51,15);Write(Nen);Ngj(1,7);GoToXY(1,1);
GoTo ask3;end
ELSE begin flag_mbi:=true;flag_nen:=FALSE;Ngj(1,7);
GoToXY(51,16);Write(Mbi);Ngj(15,red);
GoToXY(51,15);Write(Nen);GoToXY(1,1);GoTo ask3;
end; end;
#13:begin jep_fit(fituese,flsize);
IF (flag_mbi=FALSE) THEN begin fM25(fituese);
GoTo go;end
ELSE begin fN25(fituese); GoTo go;end;end;
#27:begin
DESKTOPI; Ngj(7,1); box(16,8,65,16);
GoToXY(22,11);Write(‘ Zgjidhni kategorinë që ju intereson.’);
GoToXY(22,12);Write(‘* * * * * * * * * * * * * * * * * * *’);
GoToXY(30,13);Ngj(12,1);Write(ma);
GoToXY(30,14);Write(fe);Ngj(0,15);
GoTo ask;end;
ELSE GoTo ask3;end;
end;
#27:GoTo fundi;
ELSE exit;end;
fundi: end; { Fundi i procedures Pergjigje_B. }
(****************************************************************************)

(****************************************************************************)
{Procedura për shtimin e të dhenave}
PROCEDURE DetyraApp.shto;
CONST
a = ‘Nr.Rendor Titulli Këndon’;
b = ‘---------------------------------------------------------’;
type str = RECORD Kg:BYTE; kendon:BYTE; END;
LABEL poz1,poz2,fill,fundi,lex,fp,b1,a1,a2,a3,funi;
VAR i,l:INTEGER; emri,mbiemri:STRING [15]; f1: FILE OF pergjigje;
rec,rec2:pergjigje; ch: CHAR; abort:BOOLEAN; ik,kk:BYTE; ch1: CHAR;
Begin
ASSIGN (f1,’Anketa.dat’); box(3,2,33,12); Ngj(1,7); a3:
GoToXY(5,3);WRITE(‘Emri….: ‘);
GoToXY (15,3); rec.emer:=Merr_str(15,abort);
IF (abort=true) THEN GoTo fundi;
GoToXY(5,4); WRITE(‘Mbiemri.: ‘);
GoToXY (15,4);rec.mbiemer:=Merr_str(15,abort);
if (abort=true) THEN GoTo fundi;
GoToXY(5,5);WRITE(‘Mosha…: ‘);
GoToXY (15,5);rec.mosha:=Merr_num(2,abort);
if (abort=true) THEN GoTo fundi;
GoToXY(5,6);WRITE(‘Gjinia..: ‘);
a1: ch:= READKey;GoToXY(15,6);
CASE upCASE(ch) OF
‘M’:Begin rec.g := m;WRITEln(‘Mashkull’);GoTo a2;END;
‘F’:Begin rec.g:= f ;WRITEln(‘Femër ‘);GoTo a2;END;
ELSE GoTo a1; END;
a2: FOR i:= 1 TO 5 DO Begin GoToXY (5,6+i);WRITE(‘Preferenca ‘,i,’: ‘);
rec.zgjedhja[i]:=merr_num(3,abort);END;RESET(f1); l:=FileSize(f1);
SEEK(f1,l);
WRITE(f1,rec);
close(f1);
FUNDI:DesktopI;
END;
{Fundi i procedurës për shtimin e të dhënave}
(****************************************************************************)

(****************************************************************************)
{PROCEDURE e ndihmës}
PROCEDURE DetyraApp.Permbajtja;
LABEL poshte,lart;
VAR Help_File:text;Help_Context:STRING [70];b:BYTE;
Begin DESKTOPI;
ASSIGN (Help_File,’Ahm_Det.HLP’); RESET(Help_File);
Ngj(1,7); box (3,3,77,24); lart: FOR b:= 1 TO 20 DO
Begin READln(Help_File, Help_Context);
GoToXY(5,3+b); WRITE(Help_Context); END;
poshte: prit; desktopi; END;
{Fundi i procedurës së Ndihmës}
(****************************************************************************)

(****************************************************************************)
{PROCEDURE e Aplikacioneve të Programit}
PROCEDURE DetyraApp.HandleEvent(VAR Event: TEvent);
LABEL a1;
VAR R: TRect;
Begin INHERITED HandleEvent(Event); IF Event.What = evCommand THEN
Begin
CASE Event.Command OF
cmNew: Begin shto; ClearEvent(Event); DESKTOPI END;
cmAbout: Begin DOAboutBox; ClearEvent(Event); DESKTOPI;END;
cmHelp: Begin Permbajtja; ClearEvent(Event); DESKTOPI;END;
cmUnDO: Begin Te_anketuarit; ClearEvent(Event); DESKTOPI;END;
cmPaste: Begin Write(‘Ahmet’); ClearEvent(Event); DESKTOPI;END;
cmCut: Begin Kerkesa_a; ClearEvent(Event); DESKTOPI;END;
cmClear: Begin kerkesa_b; clearEvent(Event); desktopi; END;
cmSave: Begin lista_kenge; clearEvent(event); DESKTOPI;END;
cmCloseAll: Begin ClearEvent(Event);END;
cmClose: Begin clearEvent(event)END;
END; END; END; {Fundi i procedurës së Aplikacioneve të Programit}
(****************************************************************************)

(****************************************************************************)
{Procedura për inicializimin e menysë}
PROCEDURE DetyraApp.InitMenuBar;
VAR R: TRect; d:STRING;
Begin
GetExtent(R); R.B.Y := R.A.Y + 1;
MenuBar := New(PMenuBar, Init(R, NewMenu(
NewSubMenu(‘~S~kedarë’, hcNoContext, NewMenu(
NewSubMenu(‘~A~nketimi’, hcNoContext, NewMenu(
NewItem(‘Sh~t~o rekord’,’Alt+T’, kbAltT, cmnew, hcnocontext,
NewItem(‘Të a~n~ketuarit’,’Alt+N’, kbAltN, cmUnDO, hcnocontext,
nil))),
NewItem(‘~L~ista e këngëve’,’Alt+L’,kbAltL,cmSave,hcnocontext,
NewItem(‘O~S~ Shelli’,’F9', kbf9, cmDosShell, hcnocontext,
NewItem(‘~D~alja’,’Alt+x & F1O’, kbAltX, cmQuit, hcnocontext,
nil))))),
NewSubMenu(‘~K~ërkesa’, hcNoContext, NewMenu(
NewItem(‘Kërkesa ~A~’,’Alt A’, kbAltA, cmCut,hcNoContext,
NewItem( ‘Kërkesa ~B~’,’Alt+B’,kbaltB,cmClear,hcNoContext,nil))),
NewSubMenu(‘Nd~i~hma’, hcNoContext, NewMenu(
NewItem(‘~P~ëmbajtja’,’ F1', kbF1, cmHelp, hcNoContext,
NewItem(‘~R~reth…’,’ F2', kbF2, cmAbout, hcNoContext,nil))),nil))))));
END; {Fundi i procedurës për inicializimin e menysë}
(****************************************************************************)

(****************************************************************************)
{Procedura për inicializimin e rreshtit të statusit}
PROCEDURE DetyraApp.InitStatusLINE ;
VAR R: TRect;
Begin
GetExtent(R); R.A.Y := R.B.Y – 1;
New(StatusLINE , Init(R,
NewStatusDef(0, $EFFF,
NewStatusKey(‘~F1~ Ndihma’,kbF1,cmHelp,
NewStatusKey(‘~F2~ Rreth’,kbF2,cmAbout,
NewStatusKey(‘~F10~ Dalja’,kbF10,cmQuit,
NewStatusKey(‘~Alt+A~ Kërkesa a’,kbAltA,cmCut,
NewStatusKey(‘~Alt+L~ Këngët’,kbAltA,cmSave,
NewStatusKey(‘~Alt+T~ Shto’,kbAltA,cmNew,
StdStatusKeys(nil))))))), NewStatusDef($F000, $FFFF,nil,nil))));
END;
{Fundi i procedurës për inicializimin e rreshtit të statusit}
(****************************************************************************)

(****************************************************************************)
{Deklarimi i Variablave global}
VAR Detyre: DetyraApp;
Rec:pergjigje;
{Fundi i bllokut të deklarimit të Variablave}
(****************************************************************************)

(****************************************************************************)
{Trupi i programit}
Begin
{ intro;}
ShowMouse;
Detyre.Init;
Detyre.Run;
Detyre.Done;
END.
{Fundi i programit}
(****************************************************************************)

(****************************************************************************

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* Programi u punua nga studenti i Kursit të I-rë D Ahmet Murati *
* 1999-2000 *
* UT Tiranë *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

(****************************************************************************)