programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> UT
	funcao inicio()
	{
		
		cadeia cont
		faca
		{
			escreva("__*__Sorteador de nomes__*__\n\n")
			
			cadeia Nome[16000]
			inteiro Quantidade
	
			faca
			{
			escreva("Quantos nomes você vai sortear (Mínimo 2 e maximo 16000)?\n")
			leia(Quantidade)
			se (Quantidade < 2 ou Quantidade > 16000)
			{
				escreva("Número inválido!\n")
				UT.aguarde(1500)
			}
			}enquanto (Quantidade < 2 ou Quantidade > 16000)
			
			para(inteiro Repeticao_1 = 0; Repeticao_1 <= (Quantidade - 1); Repeticao_1++)
			{
				faca
				{
					escreva("\n", (Repeticao_1 + 1), "º nome:")
					leia(Nome[Repeticao_1])
					UT.aguarde(200)
					se (Nome[Repeticao_1] == "****SORTEADO****")
					{
						escreva("Nome inválido! Esta palavra está reservada para o uso interno do progama, use outra.\n")
					}
					senao se (Nome[Repeticao_1] == "")
					{
						escreva("Nome inválido, escreva algo!")
					}
				}enquanto (Nome[Repeticao_1] == "" ou Nome[Repeticao_1] == "****SORTEADO****")
			}
			
			inteiro Numero_Sorteado[160000]
			logico Repetiu
	
			escreva("\n___________________________________\n\n")
			
			para(inteiro Repeticao_2 = 0; Repeticao_2 <= (Quantidade - 1); Repeticao_2++)
			{
				faca
				{
					Numero_Sorteado[Repeticao_2] = UT.sorteia(0, (Quantidade - 1))
					se(Nome[Numero_Sorteado[Repeticao_2]] == "****SORTEADO****")
					{
						Repetiu = verdadeiro
					}
					senao
					{
						Repetiu = falso		
						escreva((Repeticao_2 + 1), "º nome sorteado: ", Nome[Numero_Sorteado[Repeticao_2]], "\n")
						Nome[Numero_Sorteado[Repeticao_2]] = "****SORTEADO****"
						UT.aguarde(400)
					}		
				}enquanto(Repetiu == verdadeiro)
			}
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
 * @POSICAO-CURSOR = 797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */