//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util	
	funcao inicio()
	{
	    cadeia Cont
	    faca
	    {
		     limpa()
			cadeia Op
		     real N1 , N2 , R
		     R = 0.00
		     Cont = "Redefinir"
			escreva("-_-Calculadora simples-_- \n \n")
			Util.aguarde(2000)
			limpa()
			faca
			{
				escreva("Operação ( + , - , *, / ou ^): \n")
				leia(Op)
				se (Op != "+" e Op != "-" e Op != "*" e Op != "/" e Op != "^")
				{
					escreva("Resposta inválida, siga as instruções. \n")
					Util.aguarde(1000)
					limpa()
				}
			}enquanto (Op != "+" e Op != "-" e Op != "*" e Op != "/" e Op != "^")

			se (Op == "^")
			{
				escreva("Base: \n")
				leia(N1)
				limpa()
				escreva("Expoente: \n")
				leia(N2)
				limpa()
			}
			senao
			{
				escreva("1° número: \n")
				leia(N1)
				limpa()
				escreva("2° número: \n")
				leia(N2)
				limpa()
			}
			
	
			se ( Op == "+" ) 
			 {
			    R = N1 + N2
			 }
			senao se( Op == "-" ) 
			 {
			   R = N1 - N2
			 }
			senao se ( Op == "*" ) 
			 {
			    R = N1 * N2
			 }
			senao se( Op == "/" ) 
			 {
			   R = N1 / N2
			 }
			senao
			{
			  R = Matematica.potencia(N1, N2)
			}

			se (Op == "+" ou Op == "-" ou Op == "*" ou Op == "/")
			{
				escreva("O resultado é: " , R , "\n \n")
			}
			senao
			{
				escreva("A potência é: " , R , "\n \n")
			}

			Util.aguarde(2000)
			
			escreva("Quer calcular novamente? \n")
			leia(Cont)
			
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
		
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */