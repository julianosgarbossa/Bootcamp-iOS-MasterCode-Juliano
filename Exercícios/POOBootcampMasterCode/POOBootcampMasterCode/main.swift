//
//  main.swift
//  POOBootcampMasterCode
//
//  Created by Juliano Sgarbossa on 26/01/26.
//

import Foundation

// MARK: - Exercícios de Classes

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
print("Exercício 03:")
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
let juliano: Aluno = Aluno(nome: "Juliano", notas: [8.5, 8.0, 9.0])
print("Média das notas de \(juliano.nome): \(juliano.calcularMedia())")
print("----------------------------")


// MARK: - Exercícios de Encapsulamento e Polimorfismo

//Desafio 1 – Sistema de Pagamento
//📌 Descrição
//Você está criando um sistema que processa diferentes formas de pagamento.
//Cada tipo de pagamento calcula a taxa de forma diferente.
// O que precisa ser feito
//Crie uma classe base chamada Pagamento
//Essa classe deve ter um método calcularValorFinal(valor: Double) -> Double
//Crie duas subclasses:
//CartaoCredito
//Pix
//Cada forma de pagamento deve calcular a taxa de forma diferente:
//Cartão de crédito: taxa de 5%
//Pix: sem taxa
//Crie um array do tipo [Pagamento]
//Percorra esse array e imprima o valor final de cada pagamento

// Regras
//Use override
//Não use if ou switch para decidir o tipo de pagamento

print("Desafio 01:")
class Pagamento {
    
    func calcularValorFinal(valor: Double) -> Double {
        return valor
    }
}

class CartaoCredito: Pagamento {
    override func calcularValorFinal(valor: Double) -> Double {
        return valor + (valor * 0.05)
    }
}

class Pix: Pagamento {
    
}

let pagamentos: [Pagamento] = [CartaoCredito(), Pix()]
for pagamento in pagamentos {
    print("Valor Final: R$ \(pagamento.calcularValorFinal(valor: 100))")
}
print("----------------------------")

//Desafio 2 – Notificações do App
// Descrição
//Um app envia notificações por diferentes canais.
//Cada canal envia a mensagem de uma forma diferente.
// O que precisa ser feito

//Crie uma classe base Notificacao
//Crie o método enviar(mensagem: String)
//Crie pelo menos duas subclasses:
//Email
//SMS
//Cada classe deve sobrescrever o método enviar
//Armazene as notificações em um array [Notificacao]
//Envie a mesma mensagem para todas

// Regras
//O código que envia a mensagem não pode saber qual é o tipo da notificação
print("Desafio 02:")
class Notificacao {
    func enviar(mensagem: String) {
        print("Enviando mensagem: \(mensagem)")
    }
}

class Email: Notificacao {
    override func enviar(mensagem: String) {
        print("Enviando email: \(mensagem)")
    }
}

class SMS: Notificacao {
    override func enviar(mensagem: String) {
        print("Enviar SMS: \(mensagem)")
    }
}
let mensagens: [Notificacao] = [Email(), SMS()]
for mensagem in mensagens {
    mensagem.enviar(mensagem: "Olá, tudo bem?")
}
print("----------------------------")

//Desafio 3 – Cofre Digital
// Descrição
//Você precisa criar um cofre digital que protege um valor armazenado.
//🎯 O que precisa ser feito
//Crie uma classe Cofre
//O valor armazenado deve ser private
//Crie métodos para:
//Depositar valor
//Sacar valor
//O saque só pode acontecer se houver saldo suficiente
//Crie um método para consultar o saldo

//⚠️ Regras
//O saldo não pode ser acessado diretamente
//Todo acesso deve passar pelos métodos da classe
print("Desafio 03:")
class Cofre {
    private var saldo: Double
    
    init(valor: Double) {
        saldo = valor
    }
    
    func depositarValor(valor: Double) {
        saldo += valor
    }
    
    func sacarValor(valor: Double) {
        if saldo >= valor {
            saldo -= valor
        }
    }
    
    func consultarSaldo() -> String {
        return "Seu saldo atual é: \(saldo)"
    }
}

let meuCofre: Cofre = Cofre(valor: 1000)
meuCofre.depositarValor(valor: 2000)
meuCofre.sacarValor(valor: 500)
print(meuCofre.consultarSaldo())
print("----------------------------")

//Desafio 4 – Usuário Seguro
// Descrição
//Você está criando um sistema de usuários onde a senha precisa ser protegida.
// O que precisa ser feito
//Crie uma classe Usuario
//A senha deve ser private
//A senha só pode ser alterada por um método
//A nova senha deve ter pelo menos 6 caracteres
//Se não for válida, a senha não deve ser alterada

// Regras
//Não permita acesso direto à senha
//A validação deve acontecer dentro da classe

print("Desafio 04:")
class Usuario {
    private var senha: String
    
    init(senha: String) {
        self.senha = senha
    }
    
    func alterarSenha(novaSenha: String) {
        if novaSenha.count >= 6 {
            senha = novaSenha
        }
    }
    
    func exibirSenha() -> String {
        return senha
    }
}
let usuario: Usuario = Usuario(senha: "123456")
usuario.alterarSenha(novaSenha: "123456789")
print(usuario.exibirSenha())
print("----------------------------")

//Desafio 5 – Funcionários da Empresa
// Descrição
//Uma empresa possui funcionários de tipos diferentes, e cada um tem uma forma distinta de cálculo salarial.
// O que precisa ser feito
//Crie uma classe base Funcionario
//Crie um método calcularSalario() -> Double
//Crie subclasses como:
//CLT
//PJ
//Cada tipo deve calcular o salário de forma diferente
//Armazene os funcionários em um array [Funcionario]
//Percorra o array imprimindo o salário de cada funcionário
//Regras
//Use polimorfismo
//Não use if ou switch
//O salário não pode ser um valor público e alterável diretamente

print("Desafio 05:")
class Funcionario {
    
    private var salario: Double = 3000
    
    func calcularSalario() -> Double {
        return salario
    }
}

class CLT: Funcionario {
    
    private var salario: Double = 4000
    
    override func calcularSalario() -> Double {
        return salario
    }
}

class PJ: Funcionario {
    
    private var salario: Double = 5000
    
    override func calcularSalario() -> Double {
        return salario
    }
}

let funcionarios: [Funcionario] = [CLT(), PJ()]
for funcionario in funcionarios {
    print(funcionario.calcularSalario())
}
print("----------------------------")
