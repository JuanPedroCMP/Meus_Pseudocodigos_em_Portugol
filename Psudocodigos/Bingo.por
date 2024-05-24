programa
{
	
  inclua biblioteca Util --> UT
	funcao inicio()
	{
		inteiro CT[4][4], CT2[4][4], CT3[4][4], CT4[4][4], CT5[4][4], QT, NP, CTP, X, Y
		cadeia  PLY[6]
		NP = 0
		CTP = 0
		X = 0
		Y = 0
		
		
		escreva("--- Jogo do bingo! --- \n \n")
		escreva("Quantas pessoas participarão do jogo? (Mínimo: 1  Máximo: 5) \n")
		leia(QT)

		se (QT >= 1)
		{ 
			NP++
			escreva("Nome do 1º jogador: ")
			leia(PLY[NP])
		}
		se (QT >= 2)
		{ 
			NP++
			escreva("Nome do 2º jogador: ")
			leia(PLY[NP])
		}
		se (QT >= 3)
		{ 
			NP++
			escreva("Nome do 3º jogador: ")
			leia(PLY[NP])
		}
		se (QT >= 4)
		{ 
			NP++
			escreva("Nome do 4º jogador: ")
			leia(PLY[NP])
		}
		se (QT >= 5)
		{ 
			NP++
			escreva("Nome do 5º jogador: ")
			leia(PLY[NP])
		}
			
		
		
		para (inteiro N = 1 ; N<=9; N++)
		{
			se (X == 4)
			{
				Y ++
				X = 1
			}
			X ++
			CT[Y][X] = UT.sorteia(1, 50)
			CT2[Y][X] = UT.sorteia(1, 50)
			CT3[Y][X] = UT.sorteia(1, 50)
			CT4[Y][X] = UT.sorteia(1, 50)
			CT5[Y][X] = UT.sorteia(1, 50)
		}

		escreva("\n\n\n")
		
		se (QT >= 1)
		{ 	
			CTP++
			escreva("1° Cartela - ", PLY[CTP], "\n\n")
			escreva(" |",CT[1][1],"|",CT[1][2],"|",CT[1][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT[2][1],"|",CT[2][2],"|",CT[2][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT[3][1],"|",CT[3][2],"|",CT[3][3],"|", "\n")
			escreva("-------------------------------")
			
		}
		escreva("\n\n\n")
		
		se (QT >= 2)
		{ 	
			CTP++
			escreva(CTP,"° Cartela - ", PLY[CTP], "\n\n")
			escreva(" |",CT2[1][1],"|",CT2[1][2],"|",CT2[1][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT2[2][1],"|",CT2[2][2],"|",CT2[2][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT2[3][1],"|",CT2[3][2],"|",CT2[3][3],"|", "\n")
			escreva("-------------------------------")
			
		}
		
		escreva("\n\n\n")
		
		se (QT >= 3)
		{ 	
			CTP++
			escreva(CTP,"° Cartela - ", PLY[CTP], "\n\n")
			escreva(" |",CT3[1][1],"|",CT3[1][2],"|",CT3[1][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT3[2][1],"|",CT3[2][2],"|",CT3[2][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT3[3][1],"|",CT3[3][2],"|",CT3[3][3],"|", "\n")
			escreva("-------------------------------")
			
		}
		
		escreva("\n\n\n")
		
		se (QT >= 4)
		{ 	
			CTP++
			escreva(CTP,"° Cartela - ", PLY[CTP], "\n\n")
			escreva(" |",CT4[1][1],"|",CT4[1][2],"|",CT4[1][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT4[2][1],"|",CT4[2][2],"|",CT4[2][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT4[3][1],"|",CT4[3][2],"|",CT4[3][3],"|", "\n")
			escreva("-------------------------------")
			
		}
		
		escreva("\n\n\n")
		
		se (QT >= 5)
		{ 	
			CTP++
			escreva(CTP,"° Cartela - ", PLY[CTP], "\n\n")
			escreva(" |",CT5[1][1],"|",CT5[1][2],"|",CT5[1][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT5[2][1],"|",CT5[2][2],"|",CT5[2][3],"|", "\n")
			escreva(" ------- \n")
			escreva(" |",CT5[3][1],"|",CT5[3][2],"|",CT2[3][3],"|", "\n")
			escreva("-------------------------------")
			
		}
		
		escreva("\n\n\n")
		

		
					 	   
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2966; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {CT, 7, 10, 2}-{CT2, 7, 20, 3}-{CT3, 7, 31, 3}-{CT4, 7, 42, 3}-{CT5, 7, 53, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */