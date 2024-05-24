programa
{
	inclua biblioteca Util
	inclua biblioteca Texto
	funcao inicio()
	
	{
		cadeia est[26][3] 

//Estados
		est[0][0] = "Acre"
		est[1][0] = "Alagoas"
		est[2][0] = "Amapá"
		est[3][0] = "Amazonas"
		est[4][0] = "Bahia"
		est[5][0] = "Ceará"
		est[5][0] = "Espírito Santo"
		est[6][0] = "Goiás"
		est[7][0] = "Maranão"
		est[8][0] = "Mato Grosso"
		est[9][0] = "Mato Grosso do Sul"
		est[10][0] = "Minas Gerais"
		est[11][0] = "Pará"
		est[12][0] = "Paraíba"
		est[13][0] = "Paraná"
		est[14][0] = "Pernambuco"
		est[15][0] = "Piauí"
		est[16][0] = "Rio de Janeiro"
		est[17][0] = "Rio Grande do Norte"
		est[18][0] = "Rio Grande do Sul"
		est[19][0] = "Rondônia"
		est[20][0] = "Roraima"
		est[21][0] = "Santa Catarina"
		est[22][0] = "São Paulo"
		est[23][0] = "Sergipe"
		est[24][0] = "Tocantins"
		est[25][0] = "Distrito Federal"

//Siglas
		est[0][1] = "AC"
		est[1][1] = "AL"
		est[2][1] = "AP"
		est[3][1] = "AM"
		est[4][1] = "BA"
		est[5][1] = "CE"
		est[5][1] = "ES"
		est[6][1] = "GO"
		est[7][1] = "MA"
		est[8][1] = "MT"
		est[9][1] = "MS"
		est[10][1] = "MG"
		est[11][1] = "PA"
		est[12][1] = "PB"
		est[13][1] = "PR"
		est[14][1] = "PE"
		est[15][1] = "PI"
		est[16][1] = "RJ"
		est[17][1] = "RN"
		est[18][1] = "RS"
		est[19][1] = "RO"
		est[20][1] = "RR"
		est[21][1] = "SC"
		est[22][1] = "SP"
		est[23][1] = "SE"
		est[24][1] = "TO"
		est[25][1] = "DF"

//Capitais
		est[0][2] = "Rio Branco"
		est[1][2] = "Maceió"
		est[2][2] = "Macapá"
		est[3][2] = "Manaus"
		est[4][2] = "Salvador"
		est[5][2] = "Fortaleza"
		est[5][2] = "Vitória"
		est[6][2] = "Goiânia"
		est[7][2] = "São Luís"
		est[8][2] = "Cuiabá"
		est[9][2] = "Campo Grande"
		est[10][2] = "Belo Horizonte"
		est[11][2] = "Belém"
		est[12][2] = "João Pessoa"
		est[13][2] = "Curitiba"
		est[14][2] = "Recife"
		est[15][2] = "Teresina"
		est[16][2] = "Rio de Janeiro"
		est[17][2] = "Natal"
		est[18][2] = "Porto Alegre"
		est[19][2] = "Porto Velho"
		est[20][2] = "Boa Vista"
		est[21][2] = "Florianópolis"
		est[22][2] = "São Paulo"
		est[23][2] = "Aracaju"
		est[24][2] = "Palmas"
		est[25][2] = "Brasília"

			inteiro opcs
			
		faca
		{
			
			escreva("\t\t\t\t ======================================== \n")
			Util.aguarde(200)
			escreva("\t\t\t\t =      Estados, siglas e capitais      = \n")
			Util.aguarde(200)
			escreva("\t\t\t\t ======================================== \n \n")
			Util.aguarde(200)

			escreva("\t\t\t\t ======================================== \n")
			Util.aguarde(200)
			escreva("\t\t\t\t =	  [1] Tabela                    = \n")
			Util.aguarde(200)
			escreva("\t\t\t\t =	  [2] Quiz                      = \n")
			Util.aguarde(200)
			escreva("\t\t\t\t =	  [3] Consultar                 = \n")
			Util.aguarde(200)
			escreva("\t\t\t\t =	  [0] Fim                       = \n")
			Util.aguarde(200)
			escreva("\t\t\t\t ======================================== \n")
			Util.aguarde(200)

			escreva("Escolha uma opção:  ")
	          leia(opcs)
	          escreva("\n")
	
			escolha(opcs)
			{
				caso 1:
				{
					cadeia volt
					faca
					{
						escreva("\t\t ================== \n")
						Util.aguarde(200)
						escreva("\t\t =     TABELA     = \n")
						Util.aguarde(200)
						escreva("\t\t ================== \n \n")
						Util.aguarde(200)
						
						escreva("\t\t________________________________________________________\n")
						escreva("\t\t|     Estado      |      Sigla      |      Capital     |\n")
						Util.aguarde(100)
						para(inteiro rep1 = 0; rep1 <= 25; rep1 ++)
						{
						escreva("\t\t|   ",est[rep1][0] ,"   |     ",est[rep1][1] ,"     |    ",est[rep1][2] ,"    |\n")
						Util.aguarde(100)			
						}
						escreva("\t\t________________________________________________________\n\n")
						Util.aguarde(100)
						escreva("Escreva 'Voltar' para retornar ao menu: ")
						leia(volt)
						volt = Texto.caixa_baixa(volt)
					}enquanto (volt != "sair" e volt != "voltar" e volt != "exit" e volt != "retornar") 
					pare			
				}	
				caso 2:
				{
					escreva("\t\t ================== \n")
					Util.aguarde(200)
					escreva("\t\t =     Quiz     = \n")
					Util.aguarde(200)
					escreva("\t\t ================== \n \n")
					Util.aguarde(200)

					inteiro qdq
					faca
					{
						escreva("Quantos 'packs' de três questões você vai querer fazer?\n")
						leia(qdq)
						se (qdq < 1)
						{
							escreva("Quntidade inválida (minimo: 1)\n")
							Util.aguarde(2000)
							limpa()
						}
						escreva("Obs.: não há tolerância com erros ortográficos, então acentue tudo certinho!! \n")
						escreva("Obs 2.: No final a quantidade de acentos e de erros será apontada, e os erros serão corrigidos. \n\n")
					}enquanto (qdq <1 )

					inteiro questao, y, erros, acertos, posicao_erros[1000], y_do_erro[1000]
					cadeia respostaA, respostaB
					logico errouA, errouB
					erros = 0
					acertos = 0
					questao = 0
					para(inteiro rep2 = 1; rep2 <= qdq; rep2 ++)
					{
						// Qustão do tipo 1
						questao++
						y = Util.sorteia(0,25)
						escreva(questao,"º Questão: sigla e capital do estado '", est[y][0], "'. \n")
						escreva("Sigla: ")
						leia(respostaA)
						escreva("Capital: ")
						leia(respostaB)
						se (Texto.caixa_baixa(respostaA) == Texto.caixa_baixa(est[y][1]))
						{  
							errouA = falso	
						}
						senao
						{
							errouA = verdadeiro
						}

						se (Texto.caixa_baixa(respostaB) == Texto.caixa_baixa(est[y][2]))
						{ 
							errouB = falso	   	
						}
						senao
						{
							errouB = verdadeiro
						}

						se (errouA ou errouB == verdadeiro)
						{
							erros++
							posicao_erros[erros] = questao
							y_do_erro[erros] = y
						}
						senao
						{
							acertos++
						}

						//Questão do tipo 2
						questao++
						y = Util.sorteia(0,25)
						escreva(questao,"º Questão: estado e capital da sigla '", est[y][1], "'. \n")
						escreva("Estado: ")
						leia(respostaA)
						escreva("Capital: ")
						leia(respostaB)
						se (Texto.caixa_baixa(respostaA) == Texto.caixa_baixa(est[y][0]))
						{	  
							errouA = falso	   	
						}
						senao
						{
							errouA = verdadeiro
						}
						se (Texto.caixa_baixa(respostaB) == Texto.caixa_baixa(est[y][2]))
						{ 
							errouB = falso	    	
						}
						senao
						{
							errouB = verdadeiro
						}

						se (errouA ou errouB  == verdadeiro)
						{
							erros++
							posicao_erros[erros] = questao
							y_do_erro[erros] = y
						}
						senao
						{
							acertos++
						}

						//Questão do tipo 3
						questao++
						y = Util.sorteia(0,25)
						escreva(questao,"º Questão: estado e e sigla da capital '", est[y][2], "'. \n")
						escreva("Estado: ")
						leia(respostaA)
						escreva("Sigla: ")
						leia(respostaB)
						se (Texto.caixa_baixa(respostaA) == Texto.caixa_baixa(est[y][0]))
						{
							errouA = falso	   	
						}
						senao
						{
							errouA = verdadeiro
						}

						se (Texto.caixa_baixa(respostaB) == Texto.caixa_baixa(est[y][1]))
						{   
							errouB = falso	 	
						}
						senao
						{

							errouB = verdadeiro
						}	

						se (errouA ou errouB == verdadeiro)
						{
							erros++
							posicao_erros[erros] = questao
							y_do_erro[erros] = y
						}
						senao
						{
							acertos++
						}
					}

					escreva("\n\n Número total de acertos: ", acertos, "\n")
					escreva("Número total de erros: ", erros, "\n")
					
					para(inteiro rep2 = 1; rep2 <= erros; rep2 ++) 
					{
						escreva("Resposta da ",posicao_erros[rep2], "º questão: \n")
						escreva(est[y_do_erro[rep2]][0], "\n")
						escreva(est[y_do_erro[rep2]][1], "\n")
						escreva(est[y_do_erro[rep2]][2], "\n")
						escreva("--------------------------------\n")
					}
					
					pare
				}	
				caso 3:
				{
					
					cadeia Xconsulta
					inteiro ReservaY = 0
					logico existente = falso
					faca
					{
							escreva("\nDigite uma sigla, capital ou estado: ")
							leia(Xconsulta)
							para(inteiro repC = 0; repC <= 24; repC++)
								{
								se(Xconsulta == est[repC][0])
								{					
									ReservaY = repC
									existente = verdadeiro
								}
								senao se(Xconsulta == est[repC][1])
								{							
									ReservaY = repC
									existente = verdadeiro
								}
								senao se(Xconsulta == est[repC][2])
								{	
									ReservaY = repC
									existente = verdadeiro
								}
							}
						}enquanto(existente == falso)
						escreva("\nEstado: ", est[ReservaY][0])
						escreva("\nSigla: ", est[ReservaY][1])
						escreva("\nCapital: ", est[ReservaY][2], "\n")
						escreva("--------------------------------\n")
						pare
				}
				caso 0:
				{
					pare
				}	
				caso contrario: 
				{
					escreva("Opção inválida!!")
					Util.aguarde(3000)
					pare
				}
			}
		}enquanto (opcs != 0)			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4003; 
 * @DOBRAMENTO-CODIGO = [127, 155, 348, 352];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */