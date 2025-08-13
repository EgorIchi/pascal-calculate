Program Calculate;

uses Calc_Model;
var i:integer;
f:text;


procedure Delete_File(files:text);
begin
  Assign(f,'History.txt');
  Erase(f);
end;
procedure History_Read(files:text);
var s:string;
begin
   IF FileExists('History.txt')=false then writeln('No File')
   else begin
   writeln('Your history:');
   writeln();
   Assign(f,'History.txt');
   Reset(f);
   while not(eof(f)) do
   begin
     Readln(f,s);
     Writeln(s);
   end;
   close(f);
   writeln();
   end;
     
end;



begin
 while i<>6 do
 begin

   writeln;
   writeln('Menu of the application:');
   writeln('1 - Operations of simply numbers ');
   writeln('2 - Sqrt, Sqr, Pow');
   writeln('3 - Quadratic equation ');
   writeln('4 - Sin, Cos, Tg, Ctg');
   writeln('5 - Read History');
   writeln('6 - Exit');
   Writeln;
   Write('Input your menu number:');
   Readln(i);
   writeln;
   case i of 
     1:Menu_Simple_Number();
     2:Menu_Number();
     3:Menu_Equation(f);
     4:Menu_Corner();
     5:History_Read(f);
     6: begin
        Delete_File(f);
        writeln('You exited from program');
        break;
     end;
     else writeln('This menu number is not number of operation');
   end;
   
   
 end;
end.