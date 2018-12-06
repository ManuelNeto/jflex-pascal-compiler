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
   if x < y then
      m:= x
   else
      m:= y;
   if z < m then
      m:= z;
end;


begin
a := 6;
b := 7;
c := 8;
findMin(a,b);


end.

