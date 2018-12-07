program logicalOpr;

var
	Nota1, Nota2 : real;
	NomeAluno1, NomeAluno2 : integer;
	A, B, C : integer;

begin
	A := 2;
	B := 3;
	C := 1;

	NomeAluno1 := Maria Jose;
	NomeAluno2 := MariaJose;

	if  B = A + C  and  NomeAluno1 <> NomeAluno2  then
		writeln( NomeAluno1, B );
	if  A = C+1  or  NomeAluno1 = NomeAluno2  then
		writeln( NomeAluno1 );
	if not A = D  then
		writeln( NomeAluno1 );
end.
