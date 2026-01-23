//
//  main.swift
//  ExerciciosEstruturasCondicionais
//
//  Created by Juliano Sgarbossa on 22/01/26.
//

import Foundation

//1- Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado” se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"
print("Exercício 01")
func verificarAprovacaoAluno(nota1: Double, nota2: Double) -> String {
    let media = (nota1 + nota2) / 2
    
    return media >= 7 ? "Aluno Aprovado" : "Aluno Reprovado"
}
print(verificarAprovacaoAluno(nota1: 7.0, nota2: 8.0))
print(verificarAprovacaoAluno(nota1: 6.0, nota2: 5.0))
print("--------------------")

//2- Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.
// Dica: return total * 0.9 (isso significa o valor com 10% de desconto)
print("Exercício 02")
func verificarDesconto(total: Double) -> Double {
    if total < 100 {
        return total * 0.10
    } else if total <= 200 {
        return total * 0.15
    } else {
        return total * 0.20
    }
}
print(verificarDesconto(total: 50))
print(verificarDesconto(total: 150))
print(verificarDesconto(total: 300))
print("--------------------")

//3- Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE", se for amarelo, retorne "ATENÇÃO", se for verde, retorne "SIGA EM FRENTE", se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.
print("Exercício 03")
func verificarSemafaro(cor: String) -> String {
    if cor == "Vermelho" {
        return "PARE"
    } else if cor == "Amarelo" {
        return "ATENÇÃO"
    } else if cor == "Verde" {
        return "SIGA EM FRENTE"
    } else {
        return "PARÂMETRO INVÁLIDO"
    }
}
print(verificarSemafaro(cor: "Vermelho"))
print(verificarSemafaro(cor: "Amarelo"))
print(verificarSemafaro(cor: "Verde"))
print(verificarSemafaro(cor: "Azul"))
print("--------------------")

//4- Crie uma função que receba dois parâmetros (eFimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"
print("Exercício 04")
func verificarAtividade(eFimDeSemana: Bool, tenhoDinheiro: Bool) {
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    } else {
        print("VAMOS FICAR EM CASA")
    }
}
verificarAtividade(eFimDeSemana: true, tenhoDinheiro: false)
verificarAtividade(eFimDeSemana: true, tenhoDinheiro: true)
print("--------------------")

//5- Crie uma função que receba dois parâmetros do tipo Double e caso o valor do 1° parâmetro seja maior que o valor do 2° parâmetro. Retorne "Bola", caso contrário, retorne "Banana"
print("Exercício 05")
func informarObjeto(valor1: Double, valor2: Double) -> String {
    return valor1 > valor2 ? "Bola" : "Banana"
}
print(informarObjeto(valor1: 20, valor2: 10))
print(informarObjeto(valor1: 10, valor2: 20))
print("--------------------")

//6- Crie uma função que receba um parâmetro (foiConvidado: Bool). Caso o valor seja true, print "Liberado para a festa" Caso contrário, print "Infelizmente você não foi convidado"
print("Exercício 06")
func verificarEntradaFesta(foiConvidado: Bool) {
    if foiConvidado {
        print("Liberado para a festa")
    } else {
        print("Infelizmente você não foi convidado")
    }
}
verificarEntradaFesta(foiConvidado: true)
verificarEntradaFesta(foiConvidado: false)
print("--------------------")

//7 - Implemente uma função que receba a idade de uma pessoa e determine se ela tem direito a entrada gratuita em um evento. Entrada gratuita é concedida para pessoas com menos de 5 anos ou mais de 65 anos.
print("Exercício 07")
func verificarEntrada(idade: Int) -> String {
    if idade <= 5 {
        return "Entrada gratuita concedida"
    } else if idade > 65 {
        return "Entrada gratuita concedida"
    } else {
        return "Entrada gratuita não concedida"
    }
}
print(verificarEntrada(idade: 4))
print(verificarEntrada(idade: 66))
print(verificarEntrada(idade: 34))
print("--------------------")

//8 - Crie uma função que receba um score de crédito (tipo Int) de 0 a 1000 e retorne se a pessoa tem um "Bom crédito" (score acima de 700), "Crédito regular" (score entre 300 e 700) ou "Mau crédito" (abaixo de 300).
print("Exercício 08")
func verificarScore(scoreDeCredito: Int) -> String {
    if scoreDeCredito >= 0 && scoreDeCredito < 300 {
        return "Mau crédito"
    } else if scoreDeCredito >= 300 && scoreDeCredito <= 700 {
        return "Crédito regular"
    } else if scoreDeCredito > 700 && scoreDeCredito <= 1000 {
        return "Bom crédito"
    } else {
        return "Informe um score de 0 a 1000"
    }
}
print(verificarScore(scoreDeCredito: -10))
print(verificarScore(scoreDeCredito: 150))
print(verificarScore(scoreDeCredito: 450))
print(verificarScore(scoreDeCredito: 850))
print("--------------------")

//9 - Implemente uma função que receba um dia da semana (tipo String) e retorne "Dia útil" se for de segunda a sexta, e "Final de semana" se for sábado ou domingo.
print("Exercício 09")
func verificarDiaDaSemana(dia: String) -> String {
    if dia == "Sábado" || dia == "Domingo" {
        return "Final de semana"
    } else if dia == "Segunda" || dia == "Terça" || dia == "Quarta" || dia == "Quinta" || dia == "Sexta" {
        return "Dia útil"
    } else {
        return "Informe um dia da semana válido"
    }
}
print(verificarDiaDaSemana(dia: "Quinta"))
print(verificarDiaDaSemana(dia: "Sábado"))
print(verificarDiaDaSemana(dia: "Janeiro"))
print("--------------------")

//10 - Desenvolva uma função que receba uma senha (tipo String) e retorne "Senha fraca" se tiver menos de 6 caracteres, "Senha média" se tiver entre 6 e 8 caracteres, e "Senha forte" se tiver mais de 8 caracteres.
// Dica: Para descobrir a quantidade de caracteres de uma string, basta utilizar a propriedade .count
// var nome: String = "caio"
// print(nome.count) -> vai printar a quantidade de caracteres
print("Exercício 10")
func verificarSenha(senha: String) -> String {
    if senha.count > 0 && senha.count < 6 {
        return "Senha fraca"
    } else if senha.count >= 6 && senha.count <= 8 {
        return "Senha média"
    } else if senha.count > 8 {
        return "Senha forte"
    } else {
        return "Informe uma senha"
    }
}
print(verificarSenha(senha: ""))
print(verificarSenha(senha: "12345"))
print(verificarSenha(senha: "1234567"))
print(verificarSenha(senha: "12345678910"))
print("--------------------")

//11 - Crie uma função que receba a altura de uma pessoa em metros (tipo Double) e retorne "Baixa" se for menor que 1.60 metros, "Média" se for entre 1.60 e 1.85 metros, e "Alta" se for maior que 1.85 metros.
print("Exercício 11")
func verificarAltura(altura: Double) -> String {
    if altura > 0 && altura < 1.60 {
        return "Baixa"
    } else if altura >= 1.60 && altura <= 1.85 {
        return "Média"
    } else if altura > 1.85 {
        return "Alta"
    } else {
        return "Informe uma altura válida"
    }
}
print(verificarAltura(altura: -1.75))
print(verificarAltura(altura: 1.57))
print(verificarAltura(altura: 1.76))
print(verificarAltura(altura: 1.90))
print("--------------------")

//12 - Crie uma função que receba a idade de uma pessoa (tipo Int) e o tempo de serviço em anos (tipo Int). Uma pessoa é elegível para promoção se tiver mais de 30 anos e mais de 5 anos de serviço. A função deve retornar "Promoção Elegível" se ambas as condições forem verdadeiras, e "Promoção Não Elegível" caso contrário.
print("Exercício 12")
func verificarPromocao(idade: Int, tempoServico: Int) -> String {
    return idade > 30 && tempoServico > 5 ? "Promoção Elegivel" : "Promoção Não Elegível"
}
print(verificarPromocao(idade: 34, tempoServico: 2))
print(verificarPromocao(idade: 34, tempoServico: 12))
print("--------------------")

//13 - Implemente uma função que receba a previsão de chuva (tipo Bool) e a temperatura (tipo Double). O evento ao ar livre deve ser cancelado se chover (true) ou se a temperatura for inferior a 15 graus. A função deve retornar "Evento Cancelado" se alguma das condições for verdadeira, e "Evento Confirmado" caso contrário.
print("Exercício 13")
func verificarTempo(chuva: Bool, temperatura: Double) -> String {
    return chuva || temperatura < 15 ? "Evento Cancelado" : "Evento Confirmado"
}
print(verificarTempo(chuva: true, temperatura: 20))
print(verificarTempo(chuva: false, temperatura: 12))
print(verificarTempo(chuva: false, temperatura: 20))
print("--------------------")

//14 - Desenvolva uma função que receba uma senha (tipo String) e a hora do dia (tipo Int, representando a hora). O acesso é permitido se a senha for "1234" e for entre as 9h e as 17h. A função deve retornar "Acesso Permitido" se ambas as condições forem verdadeiras, e "Acesso Negado" se qualquer uma das condições não for atendida.
print("Exercício 14")
func liberarAcesso(senha: String, hora: Int) -> String {
    if senha == "1234" && (hora >= 9 && hora <= 17) {
        return "Acesso Permitido"
    } else {
        return "Acesso Negado"
    }
}
print(liberarAcesso(senha: "1234", hora: 7))
print(liberarAcesso(senha: "12345", hora: 10))
print(liberarAcesso(senha: "1234", hora: 12))
print("--------------------")

