//Este algoritmo realiza a conversao de medidas.
//Conversoes disponiveis:
//Metro para centimetros
//Centimetros para metros
//Milimetros para centimetros
//Centimetros para milimetros
//Metros para Quilometros
//Quilometros para Metros
//Decimetro para metros
//Metros para Decimetro

algoritmo "Conversor de Medidas"
var
    opcao: inteiro
    valor: real
    aux: caractere
    
procedimento Topo()
inicio
    escreval("                   ----------------------------------------------")
    escreval("                       C O N V E R S O R  DE  M E D I D A S ")
    escreval("                   ----------------------------------------------") 
fimprocedimento

funcao Menu(): inteiro
var
    opcao: inteiro
inicio
    escreval("")
    escreval("                                  Menu de opcoes")
    escreval("")
    escreval("                           1 - Metro para centimetros")
    escreval("                           2 - Centimetros para Metro")
    escreval("                           3 - Milimetros para centimetros")
    escreval("                           4 - Centimetros para Milimetros")
    escreval("                           5 - Metro para Km")
    escreval("                           6 - Km para Metro")
    escreval("                           7 - Decimetro para Metro")
    escreval("                           8 - Metro para Decimetro")
    escreval("                           0 - Finalizar")
    escreval("")
    escreva("                                  Escolha sua opcao: ")
    leia(opcao)
    retorne opcao
fimfuncao

//Converte de metros para centimetros
procedimento ConverteMetroParaCm(metro: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Metros para Centimetros eh: ", (metro * 100), " centimetros")
fimprocedimento

//convertendo centimetros para Metros
procedimento ConverteCmParaM(cm: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Centimetros para Metros eh: ", (cm / 100), " metros")
fimprocedimento

//convertendo milimetros para centimetros
procedimento ConverteMmParaCm(mm:real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Milimetros para Centimetros eh: ", (mm  / 10), "centimetros")
fimprocedimento

//convertendo centimetros para milimetros
procedimento ConverteCmParaMm(cm: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Centimetros para Milimetros eh: ", (cm * 10), " milimetros")
fimprocedimento

//convertendo metros para Quilometros
procedimento ConverteMparaKm(m: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Metros para Km eh: ", (m /1000), " km")
fimprocedimento

//convertendo Quilometros para metros
procedimento ConverteKmParaM(km: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Km para Metros eh: ", (km * 1000), " metros")
fimprocedimento

//convertendo decimetro para metro
procedimento ConverteDmParaM(dm: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de decimetros para Metros eh: ", (dm / 10), " metros")
fimprocedimento

//convertendo metros para decimetro
procedimento ConverteMParaDm(m: real)
inicio
    escreval("")
    escreval("      O resultado da conversao de Metros para decimetros eh: ", (m * 10), " decimetros")
fimprocedimento

inicio
    repita
        Topo()
        opcao <- Menu()

        se((opcao > 0 ) e (opcao <= 8))entao
            escreval("")
            escreva("                                  Digite um valor: ")
            leia(valor)
        fimse

        limpatela()
        Topo()

        escolha opcao
            caso 1
                ConverteMetroParaCm(valor)

            caso 2
                ConverteCmParaM(valor)

            caso 3
                ConverteMmParaCm(valor)

            caso 4
                ConverteCmParaMm(valor)

            caso 5
                ConverteMParaKm(valor)

            caso 6
                ConverteKmParaM(valor)

            caso 7
                ConverteDmParaM(valor)

            caso 8
                ConverteMParaDm(valor)

            caso 0
                escreval("")
                escreval("                                    Finalizando")

            outrocaso
                escreval("")
                escreval("              Opcao invalida. Retorne ao menu de opcoes e tente novamente.")
        fimescolha

        escreval("")
        escreva("                           Tecle Enter para continuar...")
        leia(aux)

        limpatela()
    ate opcao = 0
fimalgoritmo