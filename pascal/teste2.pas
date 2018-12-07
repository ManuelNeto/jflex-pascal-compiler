program add;
 
{ Simple program to add 2 integer arrays element by element.  }
 
const
  size = 5;
 
type  
color = (red, blue, yellow, green, white, black, orange);  
colors = set of color; 
 
var
   i: integer;
   a: intarray;
 
{ adder }
 
procedure adder(var a,b : intarray);
var
   i: integer;
 
begin
   i := a + b;
end;
 
{ main }
 
begin
  
  writeln('The array before call to adder:'); 
  adder(a,a);
  writeln('The array after call to adder:');

end.
