programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Util
	
	funcao inicio()
	{
		
		cadeia cont
		faca
		{
			cadeia dia[8] = {"", "Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado" } , mes[13] = {"", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
			inteiro D , M
	
			faca
			{
				limpa()
				escreva("Dia: digite um número de 1 a 7: ")
				leia(D)
		
				se (D < 1 ou D > 7)
				{
					limpa()
					escreva("\n Dia inválido. \n")
					Util.aguarde(1000)
					limpa()
				}
			
				senao se (D == 1 ou D == 7)
				{
					limpa()
					escreva("\n" , D , " corresponde à " , dia[D] , ". \n \n")
					Util.aguarde(2000)
				}
				senao
				{
					limpa()
					escreva("\n" , D , " corresponde à " , dia[D] , "-feira. \n \n")
					Util.aguarde(2000)
				}
				
			}enquanto (D < 1 ou D > 7)
	
			faca
			{
				limpa()
				escreva("Mês: digite um número de 1 a 12: ")
				leia(M)
				
				se (M < 1 ou M > 12)
				{
					limpa()
					escreva("\n Mês inválido. \n")
					Util.aguarde(1000)
					limpa()
				}
				senao
				{
					limpa()
					escreva("\n" , M , " corresponde à " , mes[M] , ".\n")
					Util.aguarde(2000)
				}
				
			}enquanto (M < 1 ou M > 12)

			escreva("Quer repetir? \n")
			leia(cont)
			cont = tx.caixa_alta(cont)

		}enquanto (cont == "S" ou cont == "SIM" ou cont == "SS" ou cont == "QUERO")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */