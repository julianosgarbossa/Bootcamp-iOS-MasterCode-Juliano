//
//  main.swift
//  POOBootcampMasterCode
//
//  Created by Juliano Sgarbossa on 26/01/26.
//

import Foundation

// Exercício 1: Conta Poupança
// Objetivo: Desenvolver uma classe chamada 'ContaPoupanca' para gerenciar os depósitos em uma conta poupança de banco.
//
// Descrição:
// Propriedades:
// - saldo (Double): O saldo atual na conta.
// Construtor:
// - Inicialize o saldo.
// Métodos:
// - depositar(valor: Double): Adiciona(+) o valor especificado ao saldo atual. (saldo = saldo + valor especificado)
// - consultarSaldo() -> Double: Retorna o saldo atual da conta.

//   Para usar este método, você deve criar uma instância da classe, chamar este método e armazenar o valor retornado em uma variável. Em seguida, você pode imprimir esse valor.
// print("Saldo atual: R$\(saldoAtual)")
print("Exercício 01:")
class ContaPoupanca {
    var saldo: Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    func depositar(valor: Double) {
        saldo += valor
    }
    
    func consultarSaldo() -> Double {
        return saldo
    }
}
let minhaConta = ContaPoupanca(saldo: 1000)
minhaConta.depositar(valor: 500)
print("Saldo atual: R$\(minhaConta.consultarSaldo())")
print("----------------------------")


// Exercício 2: Gerenciador de Filmes
// Objetivo: Desenvolver uma classe chamada 'Filme' para gerenciar informações sobre filmes em um acervo pessoal.
//
// Descrição:
// Propriedades:
// - titulo (String): O título do filme.
// - diretor (String): O diretor do filme.
// - ano (Int): O ano de lançamento do filme.
// Construtor:
// - Inicialize titulo, diretor e ano.
// Métodos:
// - exibirInfo() -> String: Retorna uma string com todas as informações do filme formatadas.

//   Para usar este método, crie uma instância da classe, chame o método e armazene a informação retornada em uma variável. Em seguida, imprima essa variável para visualizar os detalhes do filme.
print("Exercício 02:")
class Filme {
    let titulo: String
    let diretor: String
    let ano: Int
    
    init(titulo: String, diretor: String, ano: Int) {
        self.titulo = titulo
        self.diretor = diretor
        self.ano = ano
    }
    
    func exibirInfo() -> String {
        return "Filme: \(titulo)\nDireto: \(diretor)\nAno: \(ano)"
    }
}
let meuFilme: Filme = Filme(titulo: "O Senhor dos Anéis: As Duas Torres", diretor: "Peter Jackson", ano: 2002)
print(meuFilme.exibirInfo())
print("----------------------------")

// Exercício 3: Sistema de Registro de Alunos
// Objetivo: Criar uma classe chamada 'Aluno' para armazenar dados e calcular a média de notas de alunos em uma escola.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do aluno.
// - notas (Array<Double>): Uma lista de notas do aluno.
// Construtor:
// - Inicialize nome e notas.
// Métodos:
// - calcularMedia() -> Double: Calcula e retorna a média das notas do aluno utilizando um laço de repetição para somar as notas.

//   Para utilizar este método, crie uma instância da classe, invoque o método para calcular a média, armazene esse valor em uma variável e imprima a média para visualizar.
// print("Média das notas de \(aluno.nome): \(media)")
class Aluno {
    let nome: String
    let notas: [Double]
    
    init(nome: String, notas: [Double]) {
        self.nome = nome
        self.notas = notas
    }
    
    func calcularMedia() -> Double {
        var somarNotas: Double = 0
        for nota in notas {
            somarNotas += nota
        }
        return somarNotas / Double(notas.count)
    }
}
print("Exercício 03:")
let juliano: Aluno = Aluno(nome: "Juliano", notas: [8.5, 8.0, 9.0])
print("Média das notas de \(juliano.nome): \(juliano.calcularMedia())")
print("----------------------------")
