//
//  main.swift
//  ExerciciosFuncoes
//
//  Created by Juliano Sgarbossa on 15/01/26.
//

import Foundation

// 1 - Criar função onde ela mostre na area de debug a frase: "Olá mundo, estou aprendendo a criar minhas primeiras funções".
print("Exercício 01:")
func exebirFraseDebug() {
    print("Olá mundo, estou aprendendo a criar minhas primeiras funções")
}
exebirFraseDebug()
print("------------------")

// 2 - Criar função com nome soma que tenha 3 parametros (valor1: Int, valor2: Double, valor3: Int) e que ela faça uma soma entre os valores e retorno sobre valor total.
print("Exercício 02:")
func somarValores(valor1: Int, valor2: Double, valor3: Int) -> Int {
    let valorTotal: Int = valor1 + Int(valor2) + valor3
    return valorTotal
}
print("A soma dos valores é: \(somarValores(valor1: 10, valor2: 10, valor3: 10))")
print("------------------")

// 3 - Crie uma funcao com um parametro e com o tipo de retorno diferente do parametro
print("Exercício 03:")
func exibirIdade(idade: Int) -> String {
    return "A idade é: \(idade)"
}
print(exibirIdade(idade: 34))
print("------------------")

// 4 - Crie uma função que receba uma idade e retorne true se for maior de idade.
print("Exercício 04:")
func verificarIdade(idade: Int) -> Bool {
    if idade >= 18 {
        return true
    } else {
        return false
    }
}
print(verificarIdade(idade: 34))
print(verificarIdade(idade: 17))
print("------------------")

// 5 - Crie uma função que receba um valor e imprima: O valor informado foi X
print("Exercício 05:")
func imprimirValor(valor: Int) {
    print("O valor informado foi: \(valor)")
}
imprimirValor(valor: 100)
print("------------------")

// 6 - Crie uma função que receba um número e imprima o dobro dele.
print("Exercício 06:")
func imprimirDobroDoNumero(numero: Int) {
    let dobrarNumero = numero * 2
    print(dobrarNumero)
}
imprimirDobroDoNumero(numero: 10)
print("------------------")

// 7 - Crie uma função que receba um nome. Se nenhum nome for passado, imprima seu nome.
print("Exercício 07:")
func exibirNome(nome: String = "Juliano") {
    print(nome)
}
exibirNome()
exibirNome(nome: "Angela")
print("------------------")

// 8 - Crie uma função que receba nome, idade e cidade e imprima tudo em uma frase.
print("Exercício 08:")
func exibirDadosDaPessoa(nome: String, idade: Int, cidade: String) {
    print("Meu nome é: \(nome), minha idade é: \(idade) e moro em \(cidade)")
}
exibirDadosDaPessoa(nome: "Juliano", idade: 34, cidade: "Passo Fundo")
print("------------------")

// 9 - Crie uma função que receba um valor e retorne o valor com 10% de desconto.
print("Exercício 09:")
func exibirDesconto(valor: Double) -> Int {
    return Int(valor * 0.10)
}
print("O valor do desconto é: R$ \(exibirDesconto(valor: 200))")
print("------------------")

// 10 - Crie uma função que receba uma nota e retorne: "Aprovado" ou "Reprovado".
print("Exercício 10:")
func aprovarAluno(nota: Int) -> String {
    if nota >= 7 {
        return "Aluno Aprovado Com Nota: \(nota)"
    } else {
        return "Aluno reprovado Com Nota: \(nota)"
    }
}
print(aprovarAluno(nota: 8))
print(aprovarAluno(nota: 6))
print("------------------")
