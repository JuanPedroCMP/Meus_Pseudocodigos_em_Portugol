//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util	
	funcao inicio()
	{
		
	    escreva("Jogo de adivinhação \n")
	    Util.aguarde(3000)
	    inteiro D20 , NE , ER
	    cadeia Cont
	    Cont = "S"
	    ER = 0
	    faca
	    {
	    	     
		     limpa()

               escreva("Você erros um total de " , ER , " vezes desde sua útima vitória/jogo \n")
			faca
			{
				escreva("Digite seu número (1-20): \n")
				leia(NE)

				se (NE > 20 ou NE < 1)
				{
					escreva("Número inválido \n.")
				}
				
			}enquanto (NE > 20 ou NE < 1)

		     D20 = Util.sorteia(1, 20)

		     escreva("Sorteando...")

		     Util.aguarde(3000)

		    
		     se (NE != D20)
		     {
		     	escreva("Você errou! HAHAHAHA! \n")
		     	Util.aguarde(500)
		     	escreva("O número sorteado foi: " , D20 , "\n")
		     	Util.aguarde(1000)
		     	ER++
		     			     	
		     }
		      senao
		     {
		     	escreva("Parabéns, você acertou! \n")
		     	escreva("O número sorteado foi: " , D20 , "\n")
		     	escreva("Quer tentar a sorte novamente? \n")
			     leia(Cont)
		     }

		    
			
			
			
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
		
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 715; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */