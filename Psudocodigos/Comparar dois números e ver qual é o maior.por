//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Util
	funcao inicio()
	{
	    cadeia Cont
	    faca
	    {	
	    	     real n1 , n2 
	    		escreva("Comparador de dois números, descubra qual é o maior! \n")
	    		escreva("1° número: \n")
	    		leia(n1)
	    		escreva("2° número: \n")
	    		leia(n2)
	    		se ( n1 > n2 )
	    		{
	    			escreva("O primeiro número inserido (" , n1 , ") é o maior! \n")
	    		}
	    		senao se ( n1 < n2 )
	    		{
	    			escreva("O segundo número inserido (" , n2 , ") é o maior! \n")
	    		}
	    		senao
	    		{
	    			escreva("Os dois números são iguais! \n")
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
 * @POSICAO-CURSOR = 695; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */