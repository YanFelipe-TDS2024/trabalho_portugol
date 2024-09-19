programa
{
	
	// Bibliotecas
	inclua biblioteca Texto
	inclua biblioteca Util

	// Funções

	// ANIMAÇÃO DO TEXTO
	funcao typewriter(cadeia TextoParaType, inteiro Velocidade){
		limpa()
		para(inteiro i = 0; i < Texto.numero_caracteres(TextoParaType); i++){
			escreva(Texto.extrair_subtexto(TextoParaType, i, i+1))
			Util.aguarde(Velocidade)
		}
		cadeia Esperando
		escreva("\n\n[ENTER PARA CONTINUAR]")
		leia(Esperando)
	}

	// FUNÇÃO QUE RETORNA PERGUNTA ESCOLHIDA
	funcao inteiro pergunta(cadeia Pergunta, cadeia A, cadeia B, cadeia C, cadeia D){
		inteiro Escolha = 0

		inteiro Maximo = 4
		se(C == ""){
			Maximo = 2
		}senao se(D == ""){
			Maximo = 3
		}
		
		enquanto(Escolha < 1 ou Escolha > Maximo){
			limpa()
			escreva(Pergunta, "\n\n")
			escreva("[1] ", A, "\n")	
			escreva("[2] ", B, "\n")

			se(Maximo >= 3){
				escreva("[3] ", C, "\n")	
			}
			se(Maximo == 4){
				escreva("[4] ", D, "\n")
			}

			escreva("\n")
			leia(Escolha)
		}
		limpa()
		retorne Escolha
	}

	funcao dialogos(){
		typewriter("Testando typewriter, console do Portugol TESTEE", 25)
		typewriter("Testando 123456789", 100)

		inteiro Resposta = pergunta(
			"Gostaria de continuar?",
			
			"Alternativa A",
			"Alternativa B",
			"Alternativa C",
			"Alternativa D"
		)
	}
	
	// Inicialização
	funcao inicio()
	{
		dialogos()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {Maximo, 26, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */