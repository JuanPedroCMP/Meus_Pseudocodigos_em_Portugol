programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> UT
	
	funcao inicio()
	{
				
		inteiro opc
		opc = 10
		     
		faca
		{
			limpa()
			
			escreva("\t\t\t\t ======================================== \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	      MENU VETORES              = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t ======================================== \n \n")
			Util.aguarde(100)
	
			
			escreva("\t\t\t\t ======================================== \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	  [1] Consulta dia/mês          = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	  [2] Consulta siglas e estados = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	  [3] Extenso 0-1000            = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	  [4] Sorteio sem repetir       = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	  [5] Ordenação de números      = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t =	  [0] Fim                       = \n")
			Util.aguarde(100)
			escreva("\t\t\t\t ======================================== \n")
			Util.aguarde(1800)


			escreva("Escolha uma opção:  ")
	          leia(opc)
	          escreva("\n")
	
			escolha(opc)
			{
				caso 1:
				{
					limpa()
					Consulta_dia_mes ()	
					pare			
				}	
				caso 2:
				{
					limpa()
					Siglas_e_estados ()
					pare
				}	
				caso 3:
				{
					limpa()
					Extenco ()
					pare
				}	
				caso 4:
				{
					limpa()
					Sorteio ()
					pare
				}	
				caso 5:
				{
					limpa()
					Ordenacao_de_numeros ()
					pare
				}	
				caso 0:
				{
					limpa()
					pare
				}	
				caso contrario:
				{
					limpa()
					escreva("Opção inválida!!")
					Util.aguarde(3000)
					pare
				}
			}

			
		}enquanto (opc != 0)
	}
	
	funcao Consulta_dia_mes()
	{
	
			
			cadeia cont
			logico valido = falso
			faca
			{
				cadeia dia[8] = {"", "Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado" } , mes[13] = {"", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}, consul
				inteiro D , M

				escreva("Você que consultar o dia ou o mês?")
				leia(consul)

				consul = tx.caixa_alta(consul)

				se (consul == "DIA")
				{
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
				}
				senao se (consul == "MES" ou consul == "MÊS")
				{
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
				}
	
				escreva("Quer repetir? \n")
				leia(cont)
				cont = tx.caixa_alta(cont)
	
			}enquanto (cont == "S" ou cont == "SIM" ou cont == "SS" ou cont == "QUERO")
	
	}
	funcao Siglas_e_estados()
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
			limpa()
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
			limpa()
			
			escolha(opcs)
			{
				caso 1:
				{	limpa()
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
					
					cadeia cont
					faca
					{
						limpa()
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
						escreva("Quer repetir? \n")
						leia(cont)
						cont = tx.caixa_alta(cont)
				
					}enquanto (cont == "S" ou cont == "SIM" ou cont == "SS" ou cont == "QUERO")
					pare
				}	
				caso 3:
				{
					limpa()
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
					limpa()
					pare
				}	
				caso contrario: 
				{
					limpa()
					escreva("Opção inválida!!")
					Util.aguarde(3000)
					pare
				}
			}
		}enquanto (opcs != 0)			
	
	}
	funcao Extenco()
	{
		cadeia Cont
		faca
		{
			inteiro n,ne,nd,nc,P
			cadeia unidade[] = {"zero","um","dois","três","quatro","cinco","seis","sete","oito","nove","dez","onze","doze","treze","quatorze","quinze","dezeseis","dezessete","dezoito","dezenove"}
			cadeia dezena [] = {"","","vinte","trinta","quarenta","cinquenta","secenta","setenta","oitenta","noventa"}
			cadeia centena[] = {"","cento","duzentos","trezentos","quatrocentos","quinhentos","seicentos","setecentos","oitocentos","novecentos"}
	
			limpa()
			
			faca
			{
				escreva("Informe um número entre 0 e 1000: ")
				leia(n)
		
				se (n < 0 ou n > 1000)
				{
					escreva("\n Número fora da faixa aceita \n")
					Util.aguarde(1000)
					limpa()
				}
				senao se (n < 20)
				{
					escreva("Número '", n ,"' por extenço: ",unidade[n])
				}
				senao se (n < 100) //20 -- 99
				{
					ne = n/10
					nd = n%10  //% = resto inteiro
					
					escreva("Número '", n ,"' por extenço: ",dezena[ne])
					se (nd > 0)
					{
						escreva(" e ", unidade[nd]) 
					}
				}
				senao se (n == 100)
				{
					escreva("Número '", n ,"' por extenço: ","cem")
				}
				senao se (n > 100 e n < 1000)
				{  
					nc = n/100
					
					ne = n/10
					ne = ne%10 
					
					nd = n%10
					
					P =  n - ((nc * 100) + nd)	
	
					escreva("Número '", n ,"' por extenço: ", centena[nc])
	
					se (P > 0 e P < 20)
					{
						P = P + nd
						escreva(" e ", unidade[P])
					}
					senao se (P >= 20 ) 
					{
						escreva(" e ", dezena[ne])
						se (nd > 0)
						{
							escreva(" e ",unidade[nd])
						}
					}
					senao se (nd > 0)
					{
						escreva(" e ",unidade[nd])
					}										
				}
				senao se (n == 1000)
				{
					escreva("Número '", n ,"' por extenço: ", "mil")
				}
			 }enquanto (n < 0 ou n > 1000)

			 escreva("\n \n Quer continuar? ")
			 leia(Cont)

			 Texto.caixa_baixa(Cont)
			 
		}enquanto ( Cont == "sim" ou Cont == "s" ou Cont == "ss" ou Cont == "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porttitor et diam et tincidunt. Donec tristique faucibus pretium. Sed bibendum, nisi quis egestas aliquet, libero nisl interdum lectus, eget convallis purus mi sit amet libero. Morbi cursus congue felis sit amet mattis. Etiam eu massa rutrum, pretium leo faucibus, malesuada magna. Maecenas faucibus diam viverra ipsum auctor, sed mollis libero aliquam. Phasellus facilisis, est sit amet consequat accumsan, magna quam dictum sapien, sed blandit justo elit vitae tellus. Aenean quis purus volutpat tellus elementum tempor vitae id turpis. Sed viverra ex vitae laoreet convallis." )
	}
	funcao Sorteio()
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
	funcao Ordenacao_de_numeros()
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
				escreva("\t",numero[repeticao_3], "\t | ")
				Util.aguarde(150)
			}
			}
			senao
			{
			escreva("Números organizados em ordem decrescente: ")
			para(inteiro repeticao_4 = (quantidade_de_numeros - 1); repeticao_4 >= 0; repeticao_4--)
			{
				escreva("\t",numero[repeticao_4], "\t | ")
				Util.aguarde(150)
			}	
			}
			escreva("\nQuer repetir? \n")
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
 * @POSICAO-CURSOR = 10814; 
 * @DOBRAMENTO-CODIGO = [45, 95, 298, 493, 528, 533, 544, 630, 698];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */