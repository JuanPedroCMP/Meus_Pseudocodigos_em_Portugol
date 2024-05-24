programa
{
	
	funcao inicio()
	{
		inteiro N , I , P , IP , M , G , GE , GI , T , IT
		P = 0
		IP = 0
		M = 0
		G = 0
		T = 0
		GI = 0
		GE = 0
		escreva("Quantos números você quer analizar? \n")
		leia(IT)
		para (I = 1; I<=IT; I++)
		{
			escreva("Informe o " , I , "º número \n \n")
			leia(N)
			escreva("\n")
			se (N % 2 == 0) 
			{
				P++	
			}
			senao
			{
				IP++
			}

			se (N > G)
			{
				GE = N
				GI = I				
			}

			G = N
			
			T = T + N
			
		}
		escreva("=========================================================================================================== \n")
		escreva("\tTotal de números pares: " , P , "\n")
		escreva("\tTotal de números impares: " ,IP , "\n")
		escreva("\tSoma de todos os números: " , T , "\n")
		escreva("\tMaior número: " , GI , "º " , GE , "\n") 
		escreva("=========================================================================================================== \n")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 634; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */