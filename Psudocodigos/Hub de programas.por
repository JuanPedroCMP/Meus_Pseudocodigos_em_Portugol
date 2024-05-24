//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Util
	inclua biblioteca Matematica
	inclua biblioteca Calendario
	inclua biblioteca Texto
	
	funcao inicio()
	{
		inteiro opc
		opc = 10
		     
		faca
		{
			limpa()

		     
		     
			escreva(" \t\t\t\t  Seja bem vindo ao Hub de programas \n ")
			escreva("\t\t\t\t    ============================== \n \n")
			escreva("\t\t\t\t\t\t**Menu** \n")
			escreva("\t\t\t\t ======================================== \n")
			escreva("\t\t\t\t =           [1] Entrevista             = \n")
			escreva("\t\t\t\t =           [2] Cálculadora simples    = \n")
			escreva("\t\t\t\t =           [3] Par ou impar           = \n")
			escreva("\t\t\t\t =           [4] Comparar n°s           = \n")
			escreva("\t\t\t\t =           [5] Área de triâgulo       = \n")
			escreva("\t\t\t\t =           [6] Jogo de adivinhação    = \n")
			escreva("\t\t\t\t =           [7] Tabuada                = \n")
			escreva("\t\t\t\t =           [8] Simulador de D20       = \n")
			escreva("\t\t\t\t =           [9] Comparar n°s V2        = \n")
			escreva("\t\t\t\t =           [0] Fim                    = \n")
			escreva("\t\t\t\t ======================================== \n")
			escreva("Escolha uma opção:  ")
	          leia(opc)
	          escreva("\n")
	
			escolha(opc)
			{
				caso 1:
				{
					Entrevista ()	
					pare			
				}	
				caso 2:
				{
					Calculos ()
					pare
				}	
				caso 3:
				{
					Par_ou_impar ()
					pare
				}	
				caso 4:
				{
					Comparar_numeros ()
					pare
				}	
				caso 5:
				{
					Area_do_triangulo ()
					pare
				}	
				caso 6:
				{
					Adivinhacao ()
					pare
				}	
				caso 7:
				{
					Tabuada ()
					pare
				}	
				caso 8:
				{
					D20 ()
					pare
				}				
				caso 9:
				{
					Comparador_de_numeros_v2 ()
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
		}enquanto (opc != 0)         		
	}
	funcao Entrevista ()
	{
			cadeia Cont
       faca
       {
	       limpa()
		  cadeia E , F , MO , N 
		  inteiro Q , AN , MN , AT , MT , AC , MC , ACC , Conf
	
		  Cont = "Redefinir"
		  
		  AT =  Calendario.ano_atual()
		  MT =  Calendario.mes_atual()
		  
		  Q = 0 
		  Conf = 0
		  
		  faca
		  {	   
		        escreva("Qual é o seu nome? \n")
			   leia(N)
			   se(N == "")
			   {
			   	escreva("Resposta inválida, tente novamente.", "\n")
			   	Util.aguarde(1000)
			   }
		  }enquanto( N == "")
		  limpa()	

            escreva("Olá " , N , ", seja bem vindo a entrevista automática! \n")
            Util.aguarde(3000)
            limpa()
		  
	      faca
	      {
		   escreva("Onde você mora? \n")
		   leia(MO)
		   se(MO == "")
		   {
		   	escreva("Resposta inválida, tente novamente.", "\n")
		   	Util.aguarde(1000)
		   }
	      }enquanto( MO == "")	
		  
		  faca
		  {
		   escreva("Onde estuda? \n")
		   leia(E)
		    se(E == "")
		   {
		   	escreva("Resposta inválida, tente novamente.",  "\n")
		   	Util.aguarde(1000)
		   }
		  }enquanto( E == "")
		 
		  faca
		  {
		   escreva("Tem filhos? \n ")
		   leia(F)
		   se ( F == "sim" ou F == "Sim" ou F == "S" ou F == "s" ou F == "ss" ou F == "SS" ou F == "Ss" ou F == "sS")
		    {
		     	escreva("Quantos Filhos? \n")
		     	leia(Q) 
		     	Conf = 1
	// Pedir ajuda para o professor, eu não consigo contornar esse erro (Se o usuário digitar algum caractere na pegunta a cima o programa para de funcionar
		    }
		   senao se ( F == "Não" ou F== "Nao" ou F == "N" ou F == "n" ou F == "NN" ou F == "nn" ou F == "Nn" ou F == "nN" ou F == "nao" ou F == "Nao" )
		    {
		     	Conf = 1
		    }
		   senao 
		    {
		    		escreva("Resposta inválida, responda com Sim ou Não. \n")
		    		Util.aguarde(1000)
		    }
		  }enquanto ( Conf == 0 )
		  
		  faca 
		  {
			  escreva("Ano em que nasceu: \n")
			  leia(AN)
		  }enquanto ( AN > AT )
		  
		  faca
		  {
			  escreva("Mês em que nasceu: \n")
			  leia(MN)
		  }enquanto ( MN <= 0 ou MN > 12)
		
		  
		  limpa()
		  
		  escreva("Agora já sei que se chama " , N , "\n")	  
		  escreva("Que estuda na " , E , "\n")
		  escreva("Que mora em " , MO ,"\n")
		  
		  se ( Q <= 0 )
		   {
		   	escreva("Que não tem filhos \n")
		   }
		  senao se ( Q == 1 )
		   {
		  	escreva("Que tem " , Q , " filho \n") 
		   }
		  senao
		   {
		  	escreva("Que tem " , Q , " filhos \n") 
		   }
		   
		  MC = MT - MN
		  se ( MC >= 0 )
		   {
		   	AC = AT - AN 
		   }
		  senao 
		   {
		   	AC = AT - AN 
		   	ACC = AC - 1
		   	AC = ACC
		   }
		  escreva("E que tem " , AC , " anos completos \n \n") 
		  
		  Util.aguarde(2000)
		  escreva("Quer refazer a entrevista? \n")
		  leia(Cont)
		  
       }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS"  )	
	}	
	funcao Calculos ()
	{
			cadeia Cont
	    faca
	    {
		     limpa()
			cadeia Op
		     real N1 , N2 , R
		     R = 0.00
		     Cont = "Redefinir"
			escreva("-_-Calculadora simples-_- \n \n")
			Util.aguarde(2000)
			limpa()
			faca
			{
				escreva("Operação ( + , - , *, / ou ^): \n")
				leia(Op)
				se (Op != "+" e Op != "-" e Op != "*" e Op != "/" e Op != "^")
				{
					escreva("Resposta inválida, siga as instruções. \n")
					Util.aguarde(1000)
					limpa()
				}
			}enquanto (Op != "+" e Op != "-" e Op != "*" e Op != "/" e Op != "^")

			se (Op == "^")
			{
				escreva("Base: \n")
				leia(N1)
				limpa()
				escreva("Expoente: \n")
				leia(N2)
				limpa()
			}
			senao
			{
				escreva("1° número: \n")
				leia(N1)
				limpa()
				escreva("2° número: \n")
				leia(N2)
				limpa()
			}
			
	
			se ( Op == "+" ) 
			 {
			    R = N1 + N2
			 }
			senao se( Op == "-" ) 
			 {
			   R = N1 - N2
			 }
			senao se ( Op == "*" ) 
			 {
			    R = N1 * N2
			 }
			senao se( Op == "/" ) 
			 {
			   R = N1 / N2
			 }
			senao
			{
			  R = Matematica.potencia(N1, N2)
			}

			se (Op == "+" ou Op == "-" ou Op == "*" ou Op == "/")
			{
				escreva("O resultado é: " , R , "\n \n")
			}
			senao
			{
				escreva("A potência é: " , R , "\n \n")
			}

			Util.aguarde(2000)
			
			escreva("Quer calcular novamente? \n")
			leia(Cont)
			
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
	}	
	funcao Par_ou_impar ()
	{
			cadeia Cont
	    faca
	    {
		    	limpa()
			inteiro N, M
			
			escreva("Digite um número: ")
			leia(N)
	
	
			limpa()
			
			se (N % 2 == 0) 
			{
				escreva("O número ", N, " é par \n \n")	
			}
			senao
			{
				escreva("O número ", N, " é impar \n \n")
			}
	          Util.aguarde(2000)
			escreva("Quer continuar? \n")
			leia(Cont)
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS"  )
	}	
	funcao Comparar_numeros ()
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
	funcao Area_do_triangulo ()
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
	funcao Adivinhacao ()
	{
			
	    escreva("--- Jogo de adivinhação, vulgo Jogo do tigrinho V2 --- \n")
	    Util.aguarde(3000)
	    inteiro Sor , NE , ER , AR , JE , D , A
	    cadeia Cont
	    faca
	    {
		    escreva("De qual número o sorteio deve começar? \n")
		    leia(D)
		    escreva("\n E terminar? \n")
		    leia(A)
		    se (D > A )
		    	{
		    		escreva("O número inicial deve ser menor do que o número final!! \n")
		    		Util.aguarde(1000)
		    	}
	    }enquanto (D >= A)
	        
	    Cont = "S"
	    ER = 0
	    AR = 0
	    JE = 0
	    faca
	    {
	    	     
		     limpa()

               escreva("__- Você errou um total de " , ER , " vezes desde seu útimo jogo -__ \n")
               escreva("__- Você acertou um total de " , AR , " vezes desde seu útimo jogo -__ \n")
			faca
			{
				escreva("Digite seu número (", D ,"-" , A ,"): \n")
				leia(NE)

				se (NE > A ou NE < D)
				{
					escreva("Número inválido! \n")
					Util.aguarde(1000)
				}
				
			}enquanto (NE > A ou NE < D)

		     Sor = Util.sorteia(D, A)

		     escreva("Sorteando...")

		     Util.aguarde(5000)

		    
		     se (NE != Sor)
		     {
		     	escreva("Você errou! HAHAHAHA! \n")
		     	Util.aguarde(500)
		     	escreva("O número sorteado foi: " , Sor , "\n")
		     	Util.aguarde(1000)
		     	ER++
		     	JE++
		     	escreva("Quer tentar a sorte novamente? \n")
			     leia(Cont)
		     			     	
		     }
		      senao
		     {
		     	Util.aguarde(500)
		     	JE++
		     	escreva("Parabéns, você acertou na " , JE ,"° tentativa! \n")
		     	escreva("O número sorteado foi: " , Sor , "\n")
		     	Util.aguarde(1000)
		     	AR++
		     	escreva("Quer tentar a sorte novamente? \n")
			     leia(Cont)
		     }

		    
			
			
			
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
		
	}	
	funcao Tabuada ()
	{
			inteiro R , CC
		cadeia Cont
	   faca
        {

        	limpa()

		escreva("Seja Bem vindo à máquina de tabuada do 1 até o 1000 \n \n") 
		escreva("Qual é o número que você deseja descobrir a tabuada? \n")
		leia(CC)
		limpa ()

		para (inteiro c = 1 ; c<=1000; c++)
		{
			R = c * CC
			escreva (CC, " x ", c, " = ", R , "\n")
		}

		 Util.aguarde(2000)
		 escreva("Quer descobrir mais uma tabuada? \n")
		 leia(Cont)
		  
       }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS"  )
	}
	funcao D20 ()
	{

	    escreva("Seja bem vindo ao simulador de dado D20 \n")
	    Util.aguarde(3000)
	    cadeia Cont
	    faca
	    {
	    	     inteiro D1212
		     limpa()


			Util.aguarde(1000)

		     D1212 = Util.sorteia(1, 20)

		     escreva("Sorteando...")

		     Util.aguarde(5000)

		     escreva("O número sorteado foi: " , D1212 , "\n")
			
			escreva("Quer tentar a sorte novamente? \n")
			leia(Cont)
			
	    }enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
		
	}
	funcao Comparador_de_numeros_v2 ()
	{
		
	     escreva("Seja bem vindo ao comparador de números V2 \n")
	     Util.aguarde(2000)
	     cadeia Cont
	     faca
	     {
	     	limpa ()
			inteiro N , I , P , IP , M , G , GE , GI , MN , GII
			real MD , T , IT
			P = 0
			IP = 0
			M = 0
			T = 0.0
			GI = 0
			GE = 0
			GII = 0
			G = 0
			MN = 0
			MD = 0.0
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

				se (N < G)
				{
					MN = N
					GII = I				
				}
	
				
				T = T + N

				MD = T / IT
			}
			escreva("=========================================================================================================== \n")
			escreva("\tTotal de números pares: " , P , "\n")
			Util.aguarde(500)
			escreva("\tTotal de números impares: " ,IP , "\n")
			Util.aguarde(500)
			escreva("\tSoma de todos os números: " , T , "\n")
			Util.aguarde(500)
			escreva("\tMaior número: " , GI , "º - " , GE , "\n") 
			Util.aguarde(500)
			escreva("\tMenor número: " , GII , "º - " , MN , "\n")
			Util.aguarde(500)
			escreva("\tMédia os números: " , MD , "\n")
			escreva("=========================================================================================================== \n \n")
			Util.aguarde(3000)
			escreva("Quer comparar os números novamente? \n")
			leia(Cont)
		}enquanto ( Cont == "sim" ou Cont == "Sim" ou Cont == "S" ou Cont == "s" ou Cont == "ss" ou Cont == "SS" ou Cont == "Ss" ou Cont == "sS" )
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13279; 
 * @DOBRAMENTO-CODIGO = [38, 13, 8, 98, 226, 308, 335, 364, 400, 482, 508, 536];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */