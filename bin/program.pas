// Programa que cálcula o salário de funcionários
Program CalcularSalario;
    Var TempoEmAnos : Integer; 
    Var ValorSalario: Real; 
    Begin 
        If (TempoEmAnos > 10) Then 
            ValorSalario := 100.00; 
        Else 
            ValorSalario := ValorSalario * 2; 
    End;

    Imprimir("Processamento feito com sucesso")
End.
