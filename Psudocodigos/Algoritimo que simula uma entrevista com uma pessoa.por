//Algoritimo que simula uma entrevista com uma pessoa
//Juan Pedro de Camargo Martins Pereira - juan.pereira26@etec.sp.gov.br
programa
{
	inclua biblioteca Util
	inclua biblioteca Calendario
	funcao inicio()
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
		   escreva("Onde estuda \n")
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 851; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */