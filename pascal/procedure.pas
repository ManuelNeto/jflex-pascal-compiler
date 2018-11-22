program exProcedure;
var
   a, b, c,  min: integer;
   
procedure findMin(x:integer; y:integer; z: integer; var m: integer); 
{ Finds the minimum of the 3 values }

begin
   if (x < y) then
   begin
      m:= x
   end
   else
   begin
      m:= y;
   end
   if (z < m) then
   begin
      m:= z;
   end
   
end; { end of procedure findMin }  

begin
   writeln(' Enter three numbers: ');
   readln( a, b, c);
   findMin(a, b, c, min); (* Procedure call *)
   
   writeln(' Minimum: ', min);
end.