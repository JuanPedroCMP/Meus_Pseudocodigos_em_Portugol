//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Matematica
	inclua biblioteca Util	
	funcao inicio()
	{
		
	    escreva("Seja bem vindo ao simulador de dado D20 \n")
	    Util.aguarde(3000)
	    cadeia Cont
	    faca
	    {
	    	     inteiro D20
		     limpa()


			Util.aguarde(1000)

		     D20 = Util.sorteia(1, 20)

		     escreva("Sorteando...")

		     Util.aguarde(5000)

		     escreva("O número sorteado foi: " , D20 , "\n")
			
			escreva("Quer tentar a sorte novamente? \n")
			leia(Cont)
			
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
		
		

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */