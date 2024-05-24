programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Util
	
	funcao inicio()
	{
		
		cadeia cont
		faca
		{
			inteiro numero[160000], assistente_de_troca, opicao, quantidade_de_numeros
			logico ordem = verdadeiro, repita = falso
			escreva("Organizador de números!\n")
			Util.aguarde(2500)
			faca
			{
				escreva("quantos números você quer organizar (mínimo: 2 maximo: 16E3)? \n")
				leia(quantidade_de_numeros)
				se (quantidade_de_numeros < 2)
				{
					escreva("\nNúmero abaixo do permitido, escolha um número igual ou maior do que 2.\n")
					Util.aguarde(2500)
				}
			} enquanto (quantidade_de_numeros < 2 ou quantidade_de_numeros > 16000)
			Util.aguarde(500)
			faca
			{
				escreva("Digite '1' para ordem crescente e '2' para decrescente: ")
				leia(opicao)
				se (opicao == 1)
				{
					ordem = verdadeiro
				}
				senao se (opicao == 2)
				{
					ordem = falso
				}
				senao
				{
					repita = verdadeiro
					escreva("Número inválido, digite '1' ou '2'")
					Util.aguarde(2500)
					limpa()
				} 
				Util.aguarde(500)
			}enquanto (repita == verdadeiro)
			para(inteiro repeticao = 0; repeticao <= (quantidade_de_numeros - 1); repeticao++)
			{
				escreva("\n",(repeticao+1),"º número: ")
				leia(numero[repeticao])
				Util.aguarde(100)
			}
	
			escreva("\n___________________________________\n\n")
	
			para(inteiro repeticao_2 = 0; repeticao_2 <= (quantidade_de_numeros - 1); repeticao_2++)
			{
				para(inteiro repeticao_2_2 = (quantidade_de_numeros - 1); repeticao_2_2 > 0; repeticao_2_2--)
				{
					se (numero[repeticao_2_2] < numero[(repeticao_2_2 - 1)])
					{
						assistente_de_troca = numero[repeticao_2_2]
						numero[repeticao_2_2] = numero[(repeticao_2_2 - 1)]
						numero[(repeticao_2_2 - 1)] = assistente_de_troca
					}
				}
			}
	
			se (ordem == verdadeiro)
			{
			escreva("Números organizados em ordem crescente: ")
			para(inteiro repeticao_3 = 0; repeticao_3 <= (quantidade_de_numeros - 1); repeticao_3++)
			{
				escreva("\t",numero[repeticao_3])
				Util.aguarde(150)
			}
			}
			senao
			{
			escreva("Números organizados em ordem decrescente: ")
			para(inteiro repeticao_4 = (quantidade_de_numeros - 1); repeticao_4 >= 0; repeticao_4--)
			{
				escreva("\t",numero[repeticao_4])
				Util.aguarde(150)
			}	
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
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */