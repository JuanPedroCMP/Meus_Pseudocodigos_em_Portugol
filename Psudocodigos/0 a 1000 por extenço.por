programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	funcao inicio()
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1873; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 10, 11, 1}-{ne, 10, 13, 2}-{nd, 10, 16, 2}-{nc, 10, 19, 2}-{P, 10, 22, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */