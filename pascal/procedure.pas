program exProcedure;

var x, y, a, b, c, z, m: integer;
	bol: boolean;

procedure findMin(var z, m: integer); 

begin
	bol := not true;
	x := 1;
	y := 2;
	m := 3;
	z := 4; 
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
end;


begin
a := 6;
b := 7;
c := 8;
findMin(a,b);

end.

