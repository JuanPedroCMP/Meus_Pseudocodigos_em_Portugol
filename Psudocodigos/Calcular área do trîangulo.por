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
		      real A , C , R
		      Cont = "Redefinir"
		      
		      escreva("_-_Calculador de área do triângulo_-_ \n \n")
		      faca
		      {
				 escreva("Altura: \n")
				 leia(A)
				 
				 escreva("Comprimento: \n")
				 leia(C)
				 
				 se ( A <= 0 ou C <= 0)
				 {
				     escreva("Digite números maiores do que 0!")
				 }
			 
		      }enquanto ( A <= 0 ou C <= 0)
			
			 R = (A * C) / 2
	 
			 escreva("O volume é de: " , R , "\n \n")

			 Util.aguarde(2000)
			 escreva("Quer continuar?")
			 leia(Cont)
		 
	     }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS"  )
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 452; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */