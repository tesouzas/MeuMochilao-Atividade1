algoritmo "Ficha de cadastro - Ag�ncia Meu Mochil�o"
// Fun��o : Ficha de cadastro de clientes e de destinos.
// Autor : Stephanie Souza da Silva
// Data : 09/07/2022
// Se��o de Declara��es 
var
nomes, end, cid, UF: vetor[0..4] de caractere
cidDestino, cidOrigem, tempoViagem, consultaCadastro: vetor[0..4] de caractere
CPF, RG, CEP: vetor[0..4] de real
voltarMenu1, voltarMenu2, voltarMenu3: caractere
op, nome: caractere
i, j, s: inteiro




Procedimento inicializa()

Inicio
      Enquanto op <> "4" faca
      Escreval("-------------------------------------")
      Escreval("***CADASTRO - AG�NCIA MEU MOCHIL�O***")
      Escreval("-------------------------------------")
      Escreval("(1) Cadastro de cliente")
      Escreval("(2) Cadastro do destino")
      Escreval("(3) Consulta ao cadastro")
      Escreval("(4) Sair")
      Escreva("Digite sua op��o: ")
      Leia(op)
      
      //Op��o 1 - Cadastro Cliente
      Se op="1" entao
         limpatela
         Se s=10 entao
         Escreval("Esgotou o limite de cadastros")
         Senao
         cadastroCliente()
         FimSe
      FimSe
      
      //Op��o 2- Cadastro Destino
      Se op="2" entao
      LimpaTela
         cadastroDestino()
      FimSe
      
      //Op��o 3 - Consulta ao cadastro
      Se op="3" entao
      limpaTela
         consultaCadastro()
      FimSe
      
      //Op��o 4 - Sair
      Se op="4" entao
         Para i de 0 ate 4 faca
         nomes[i]<-"x"
         FimPara
      LimpaTela
      Escreval("A Ag�ncia Meu Mochil�o agradece sua visita! Volte Sempre!")
      FimSe
      
      FimEnquanto
FimProcedimento


//Procedimento - Cadastro do Cliente

Procedimento cadastroCliente()
Inicio
      Para i de 0 ate 4 faca
           Se (nomes[i]="") entao
              Escreva("Nome completo: ")
              Leia(nomes[i])
              Escreva("CPF(Apenas n�meros): ")
              Leia(CPF[i])
              Escreva("RG (Apenas n�meros): ")
              Leia(RG[i])
              Escreva("Endere�o: ")
              Leia(end[i])
              Escreva("CEP (Apenas n�meros): ")
              Leia(CEP[i])
              Escreva("Cidade: ")
              Leia(cid[i])
              Escreva("Estado: ")
              Leia(UF[i])
           
              voltarMenu1()
              s<-s+1
           LimpaTela
           FimSe
      FimPara
      Escreval("Esgotou o limite de cadastros")
FimProcedimento


//Procedimento - Voltar Menu 1

Procedimento voltarMenu1()

Inicio
      Escreva("Voltar ao menu inicial? (S/N)")
      Leia(op)
          Se (op="S") ou (op="s") entao
             i<-i+1
             LimpaTela
             inicializa()
          Senao
             LimpaTela
             cadastroCliente()
          FimSe
FimProcedimento



//Procedimento - Cadastro do Destino

Procedimento cadastroDestino()
Inicio
      Para i de 0 ate 4 faca
           Se (cidDestino[i]="") entao
              Escreva("Cidade destino: ")
              Leia(cidDestino[i])
              Escreva("Cidade de origem: ")
              Leia(cidOrigem[i])
              Escreva("Tempo estimado de viagem (em dias): ")
              Leia(TempoViagem[i])
              
              voltarMenu2()
              s<-s+1
           LimpaTela
           FimSe
      FimPara
      Escreval("Esgotou o limite de cadastros")
FimProcedimento


//Procedimento - Voltar Menu 2

Procedimento voltarMenu2()

Inicio
      Escreva("Voltar ao menu inicial? (S/N)")
      Leia(op)
          Se (op="S") ou (op="s") entao
             i<-i+1
             LimpaTela
             inicializa()
          Senao
             LimpaTela
             cadastroDestino()
          FimSe
FimProcedimento


//Procedimento - Consulta ao cadastro

Procedimento consultaCadastro()
Inicio
j<-0
Escreva("Digite o nome do cliente: ")
Leia(nome)
    Para i de 0 ate 4 faca
         Se nome=nomes[i] entao
            Escreval("Nome: ", nome[i])
            Escreval("CPF: (Apenas n�meros)", CPF[i])
            Escreval("RG: (Apenas n�meros)", RG[i])
            Escreval("Cidade origem: ", cidOrigem[i])
            
            
            j<-j+1
         FimSe
    FimPara
    
         Se j=0 entao
         Escreval("Cliente n�o encontrado.")
         FimSe

     voltarMenu3()
     LimpaTela


//Procedimento - Voltar Menu 3

Procedimento voltarMenu3()
Inicio
      Escreva("Voltar ao menu inicial? (S/N)")
      Leia(op)
          Se (op="S") ou (op="s") entao
             i<-i+1
             LimpaTela
             inicializa()
          Senao
             LimpaTela
             cadastroDestino()
          FimSe
FimProcedimento


//Reinicia
Inicio
      inicializa()
         
FimAlgoritmo
