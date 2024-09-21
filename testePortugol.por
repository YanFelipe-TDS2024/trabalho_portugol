programa
{	
	// Bibliotecas
	inclua biblioteca Texto
	inclua biblioteca Util

	// Variáveis
	
	cadeia ImagemFaca[] = {                                        
		"                                     :",     
		"                                  .:=#",     
		"                                :==++#",     
		"                             .:-:=***:",     
		"                           .-:--*#**:",      
		"                         :-..=+#*+#.",       
		"                       .=::=+#**+=.",        
		"                     .-.:-*#**+:",           
		"                   .-.:-+#***:",             
		"                 .--=++#***-",               
		"           .:= :-==#%%***-",                 
	  	"           +#+=*+*#%%**-%%#",                   
	  	"           -*#++*##%*--++",                     
	  	"           .++*=*##*",                       
	  	"         .=*++*#%",                     
	  	"        =****%#",                      
	  	"    --++**#%%=",                             
	  	"   -=**##%+:",                               
	  	"   -*%#%%+",                                 
	  	"   :--==:"
	}                                  
	

	// Funções
	funcao dialogos(){
		inteiro Resposta = 0
		
		typewriter("Testando ", verdadeiro)
		typewriter("Testando 123456789", verdadeiro)

		Resposta = pergunta(
			"Escolha um personagem!",  // Pergunta
			
			"Personagem A", // Alternativa 1
			"Personagem B", // Alternativa 2
			"Personagem C", // Alternativa 3 (OPCIONAL)
			"Personagem D"  // Alternativa 4 (OPCIONAL)
		)

		typewriter("Você encontrou uma faca!\n\n", falso)
		para(inteiro i = 0; i < Util.numero_elementos(ImagemFaca); i++){
			escreva(ImagemFaca[i], "\n")
		}
		esperarEnter()

	}
	
	// Inicialização
	funcao inicio()
	{
		dialogos()
	}

	// ENTER PARA CONTINUAR
	funcao esperarEnter(){
		cadeia Esperando
		escreva("\n\n[ENTER PARA CONTINUAR]\n\n")
		leia(Esperando)	
	}

	// ANIMAÇÃO DO TEXTO
	funcao typewriter(cadeia TextoParaType, logico Esperar){
		limpa()
		para(inteiro i = 0; i < Texto.numero_caracteres(TextoParaType); i++){
			escreva(Texto.extrair_subtexto(TextoParaType, i, i+1))
			Util.aguarde(25)
		}
		se(Esperar){
			esperarEnter()
		}
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
			typewriter(Pergunta + "\n\n", falso)
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 885; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */