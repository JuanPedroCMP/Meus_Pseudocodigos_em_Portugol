programa
{
    inclua biblioteca Util
    funcao inicio()
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

		para (inteiro c = CC; c<=1000; c++)
		{
			R = c * CC
			escreva (CC, " x ", c, " = ", R , "\n")
		}

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
 * @POSICAO-CURSOR = 195; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */