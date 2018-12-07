program ifprog;
 
{ teste }
 
var
   number: integer;
 
{ main }
 
begin
  writeln('Please enter an integer between 0 and 100');
  read(number);
  
  write('If this was a grade, you would receive a grade of:  ');
  if number >= 90 then
     write('A');
  else if number >= 80 then
     write('B');
  else if number >= 70 then
     write('C');
  else if number >= 60 then
     write('D');
  else
     write('F');
  writeln;
end.
