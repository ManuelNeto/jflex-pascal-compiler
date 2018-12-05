program p1;
const Q = 1;
	word = 'asd';
	verdade = true;
var X, Y, Z: integer;
	sera : boolean;

begin 

X := 3;
sera := true;

if (X > Q) then
	begin
		Z := 3;
	end
	
else if (X <= Q) then
	begin
		Z := 8;
	end
	
else if (false) then
	begin
		Z := -16;
	end
	
else if (true) then
	begin
		~Z := 5 + 6;
	end
	
else if (verdade) then
	begin
		~Z := 5 * 10;
	end
	
else if (not verdade) then
	begin
		Z := 5;
	end
	
else if (sera) then
	begin
		Z := 1;
	end
	
else
	begin 
		Z := 4;
	end

end.