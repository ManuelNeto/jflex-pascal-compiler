program exFunction;


const
	teste = 3;
	teste2 = 'testeString';
	
var
  ret: integer;

function max(num1: integer; num2: integer): integer;

var
   result: integer;
   
begin
	num1 := 1;
	num2 := 2;
	max := 2;
   	if num1 > num2 then
    	result := num1;
   	else
      	result := num2;
   	max := result;
end;

begin
   a := 100;
   b := 200;
   c := 300;
   fun := max(a, b); 
end.
