//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Util
	funcao inicio()
	{
	    cadeia Cont
	    faca
	    {
		    	limpa()
			inteiro N, M
			
			escreva("Digite um número: ")
			leia(N)
	
	
			limpa()
			
			se (N % 2 == 0) 
			{
				escreva("O número ", N, " é par \n \n")	
			}
			senao
			{
				escreva("O número ", N, " é impar \n \n")
			}
	          Util.aguarde(2000)
			escreva("Quer continuar? \n")
			leia(Cont)
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS"  )
	    
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 160; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */