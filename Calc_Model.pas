Unit Calc_Model;

interface

uses crt;
var f:text;


function Sum(a,b:integer;files:text):integer;
function Divs(a,b:integer;files:text):real;
function Minus(a,b:integer;files:text):integer;
function Multi(a,b:integer;files:text):integer;
function My_Sqrt(a:integer;files:text):real;
function My_Sqr(a:integer;files:text):real;
function Powers(a,b:integer;files:text):integer;
function Sins(a:integer;files:text):real;
function Cosn(a:integer;files:text):real;
function Tag(a:integer;files:text):real;
function Tg(a:integer;files:text):real;
procedure Menu_Simple_Number();
procedure Menu_Equation(files:text);
procedure Menu_Corner();
procedure Menu_Number();




implementation
function Sum(a,b:integer;files:text):integer;
var Str:string;
begin
  Assign(f,'History.txt');
  Append(f);
  Sum:=a+b;
  str:=str+a.ToString();
  str:=str+'+';
  str:=str+b.ToString();
  str:=str+'=';
  str:=str+(a+b).tostring();
  Writeln(f,str);
  Close(f);
end;

function Divs(a,b:integer;files:text):real;
var str:string;
begin
  if(a=0) or (b=0) then begin
    writeln('Error! Do not divising 0 ');
    Divs:=0;
  end
  else 
  begin
  Assign(f,'History.txt');
  Append(f);

  str:=str+a.ToString();
  str:=str+'/';
  str:=str+b.ToString();
  str:=str+'=';
  str:=str+(a/b).tostring();
  Writeln(f,str);
  Close(f);
  Divs:=a/b;
    end;
end;

function Minus(a,b:integer;files:text):integer;
var str:String;
begin
  Minus:=a-b;
    Assign(f,'History.txt');
  Append(f);

  str:=str+a.ToString();
  str:=str+'-';
  str:=str+b.ToString();
  str:=str+'=';
  str:=str+(a-b).tostring();
  Writeln(f,str);
  Close(f);
end;

function Multi(a,b:integer;files:text):integer;
var str:string;
begin
    Assign(f,'History.txt');
  Append(f);

  str:=str+a.ToString();
  str:=str+'*';
  str:=str+b.ToString();
  str:=str+'=';
  str:=str+(a*b).tostring();
  Writeln(f,str);
  Close(f);
  Multi:=a*b;
end;

function My_Sqrt(a:integer;files:text):real;
var i,d:integer;
c:real;
str:string;
begin
  Assign(f,'History.txt');
  Append(f);

  str:=str+'√';
  str:=str+a.ToString();
  str:=str+'=';
  str:=str+(Power(a,(1/2))).tostring();
  Writeln(f,str);
  Close(f);
  c:=Power(a,(1/2));
  My_Sqrt:=c;
 
end;
function My_Sqr(a:integer;files:text):real;
var str:string;
begin
 Assign(f,'History.txt');
  Append(f);

 
  str:=str+a.ToString();
  str:=str+'^';
  str:=str+'2';
  str:=str+'=';
  str:=str+(a*a).tostring();
  Writeln(f,str);
  Close(f);
 My_Sqr:=a*a;
 
end;
function Powers(a,b:integer;files:text):integer;
var c:integer;
i:integer;
str:string;
begin
  Assign(f,'History.txt');
  Append(f);

 
  str:=str+a.ToString();
  str:=str+'^';
  str:=str+b.ToString();
  str:=str+'=';
 

  c:=a;
  for i:=1 to b-1 do
  begin
   c:=c*b;
   
  end;
 
 Powers:=c;
 str:=str+c;
 Writeln(f,str);
 Close(f);
end;

function Sins(a:integer;files:text):real;
var q:integer;
str:string;
res:real;
begin
res:=a * Pi /180;
Sins:=Sin(res);
Assign(f,'History.txt');
  Append(f);

 
  str:=str+'Sin(';
  str:=str+a.ToString();
  str:=str+')';
  str:=str+'=';
  str:=str+(Sin(res)).tostring();
  Writeln(f,str);
  Close(f);
end;

function Cosn(a:integer;files:text):real;

var q:integer;
str:string;
res:real;
begin
res:=a * Pi /180;
Cosn:=Cos(res);
Assign(f,'History.txt');
  Append(f);

 
  str:=str+'Cos(';
  str:=str+a.ToString();
  str:=str+')';
  str:=str+'=';
  str:=str+(Cos(res)).tostring();
  Writeln(f,str);
  Close(f);
end;


function Tg(a:integer;files:text):real;

var q:integer;
str:string;
res:real;
begin
res:=a * Pi /180;
Tg:=Tan(res);
Assign(f,'History.txt');
  Append(f);

 
  str:=str+'Tg(';
  str:=str+a.ToString();
  str:=str+')';
  str:=str+'=';
  str:=str+(Tan(res)).ToString();
  Writeln(f,str);
  Close(f);
end;


function Tag(a:integer;files:text):real;

var q:integer;
str:string;
res:real;
begin
res:=a * Pi /180;
Tag:=Tanh(res);
Assign(f,'History.txt');
  Append(f);

 
  str:=str+'Ctg(';
  str:=str+a.ToString();
  str:=str+')';
  str:=str+'=';
  str:=str+(Tanh(res)).tostring();
  Writeln(f,str);
  Close(f);
end;

procedure Menu_Simple_Number();
var i,a,b,c:integer;
c1:real;
begin
  while(i<>5) do
  begin
    Writeln;
    Writeln('Kind of operation:');
    Writeln('1 - Addition');
    Writeln('2 - Subtraction');
    WRiteln('3 - Multiplication');
    Writeln('4 - Division');
    Writeln('5 - Exit');
    Writeln;
    
    Write('Input your menu number:');
    Readln(i);
    Writeln;
    case i of 
      1: begin
      write('Input the first number:');
      Readln(a);
      write('Input the secod number:');
      Readln(b);
      c:=Sum(a,b,f);
      Writeln('Your Result of Addition is:',c);
      end;
      2:begin
      write('Input the first number:');
      Readln(a);
      write('Input the secod number:');
      Readln(b);
      c:=Minus(a,b,f);
      Writeln('Your Result of Subtraction is:',c);
      end;
      3:begin
        write('Input the first number:');
      Readln(a);
      write('Input the secod number:');
      Readln(b);
      c:=Multi(a,b,f);
      Writeln('Your Result of Multiplication is:',c);
      end;
      4:begin
       write('Input the first number:');
      Readln(a);
      write('Input the secod number:');
      Readln(b);
      c1:=Divs(a,b,f);
      Writeln('Your Result of Division is:',c1);
      end;
      5:begin
        writeln('You exited');
        break;
      end;
      else writeln('This menu number is not number of operation');
end;
end;
end;


procedure Menu_Number();
var i:integer;
c:real;
a:integer;
b:integer;
begin

while i<>4 do
begin

    Writeln;
    Writeln('Kind of operation:');
    Writeln('1 - The squared number');
    Writeln('2 - The number under the root');
    WRiteln('3 - A number to the power of');
    Writeln('4 - Exit');
    
    writeln;
    Write('Input your menu number:');
    Readln(i);
    Writeln;
    case i of 
      1:begin
        Write('Input your number:');
        Readln(a);
        c:=My_Sqr(a,f);
        writeln('You number the squared number is: ',c);
      end;
      2:begin
           Write('Input your number:');
        Readln(a);
        c:=My_Sqrt(a,f);
        writeln('You number The number under the root is: ',c);
      end;
      3:begin
        Write('Input your the first number:');
        Readln(a);
        Write('Input your the second number:');
        Readln(b);
        c:=Powers(a,b,f);
         writeln('You number The number under the root is: ',c);
      end;
      4: begin
        
        writeln('You exited');
        break;
      
      end;
      else writeln('This menu number is not number of operation');
   
  end;
end;
end;

procedure Menu_Equation();
var a,b,c:integer;
str:string;
D:real;
x1:real;
x2:real;
begin
  Assign(f,'History.txt');
  Append(f);
   Write('Input your the first number:');
        Readln(a);
        Write('Input your the second number:');
        Readln(b);
        Write('Input your the thirds number:');
        Readln(c);
        D:=Sqr(b)-4*a*c;
        Writeln('Your discriminant is: ',D);
        if(D<0) then begin
          writeln('You D < 0 and there is no root');
          str:=str+'D='+D.ToString();
          writeln(f,str);
          close(f);
        end
        else if (D=0) then begin
          x1:=(-b)/2*a;
          writeln('You D = 0 and there is x1: ',x1);
          str:=str+'D='+D.ToString()+' x1:='+x1.ToString();
          writeln(f,str);
          close(f);
        end
        else if (D>0) then
        begin
          x1:=(-b+Sqrt(D))/(2*a);
          x2:=(-b-Sqrt(D))/(2*a);
          writeln('You D > 0 and there is:');
          writeln('x1: ',x1);
          writeln('x2: ',x2);
           str:=str+'D='+D.ToString()+' x1='+x1.ToString()+' x2='+x2.ToString();
          writeln(f,str);
          close(f);
          
        end;
end;

procedure Menu_Corner();
var i,a:integer;
c:real;
begin
while i<>5 do
begin
    Writeln;
    Writeln('Kind of operation:');
    Writeln('1 - Sin(x)');
    Writeln('2 - Cos(x)');
    WRiteln('3 - Tg(x)');
    Writeln('4 - Ctg(x)');
    writeln('5 - Exit');
    
    writeln;
    Write('Input your menu number:');
    Readln(i);
    Writeln;
    case i of 
      
      1:begin
       Write('Input your number:');
    Readln(a);
    c:=Sins(a,f);
      writeln('Your sin(',a,')=',c);
    end;
    2:begin
         Write('Input your number:');
    Readln(a);
    c:=Cosn(a,f);
      writeln('Your cos(',a,')=',c);
    end;
    3:begin
         Write('Input your number:');
    Readln(a);
    c:=Tg(a,f);
      writeln('Your tg(',a,')=',c);
    end;
    4:begin
         Write('Input your number:');
    Readln(a);
    c:=Tag(a,f);
      writeln('Your ctg(',a,')=',c);
    end;
    5:begin
      writeln('You exited');
        break;
    end;
    else writeln('This menu number is not number of operation');
end;
end;
end;


///////////////////////////////////

begin
  
end.