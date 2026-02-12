//
//  main.swift
//  Desafios
//
//  Created by Juliano Sgarbossa on 11/02/26.
//

import Foundation

// Desafio 01 - Cadastro de Funcionário com Promoção
print("Desafio 01")
struct FuncionarioDados {
    let nome: String
    let idade: Int
    var cargo: String
}

class Funcionario {
    private(set) var dados: FuncionarioDados
    private(set) var salario: Double
    
    init(dados: FuncionarioDados, salario: Double) {
        self.dados = dados
        self.salario = salario
    }
    
    func promover(novoCargo: String, aumento: Double) {
        dados.cargo = novoCargo
        aumentarSalario(valor: aumento)
    }
    
    private func aumentarSalario(valor: Double) {
        salario += valor
    }
}

let funcionario = Funcionario(dados: FuncionarioDados(nome: "Juliano", idade: 34, cargo: "Desenvolvedor iOS"), salario: 3600)
funcionario.promover(novoCargo: "Desenvolvedor iOS Júnior", aumento: 400)
print(funcionario.dados)
print(funcionario.salario)
print("------------------------------------------")

// Desafio 02 - Carrinho de Compras
print("Desafio 02")
struct Produto {
    var nome: String
    var preco: Double
}

class Carrinho {
    var listaProdutos: [Produto] = []
    var total: Double {
        var soma: Double = 0
        
        for produto in listaProdutos {
            soma += produto.preco
        }
        
        return soma
    }
    
    func adicionarProduto(produto: Produto) {
        listaProdutos.append(produto)
    }
    
    func removerProduto(nome: String) {
        listaProdutos.removeAll { $0.nome == nome }
    }
}
let produtoX = Produto(nome: "Camiseta", preco: 29.90)
let produtoY = Produto(nome: "Mouse", preco: 120.00)
let produtoZ = Produto(nome: "Notebook", preco: 1200.00)
let carrinho = Carrinho()
carrinho.adicionarProduto(produto: produtoX)
carrinho.adicionarProduto(produto: produtoY)
carrinho.adicionarProduto(produto: produtoZ)
print(carrinho.listaProdutos)
print(carrinho.total)
carrinho.removerProduto(nome: "Mouse")
print(carrinho.listaProdutos)
print(carrinho.total)
print("------------------------------------------")

// Desafio 03 - Conta Bancária
print("Desafio 03")
struct Cliente {
    let nome: String
    let cpf: String
}

class ContaBancaria {
    private let cliente: Cliente
    private var saldo: Double = 0
    
    init(cliente: Cliente) {
        self.cliente = cliente
    }
    
    func depositar(valor: Double) {
        guard valor > 0 else {
            print("Valor inválido para depósito.")
            return
        }
        
        saldo += valor
        print("Depósito de R$\(valor) realizado com sucesso.")
    }
    
    func sacar(valor: Double) {
        guard valor <= saldo else {
            print("Saldo insuficiente.")
            return
        }
        
        saldo -= valor
        print("Saque de R$\(valor) realizado com sucesso.")
    }
    
    func verSaldo() {
        print("Saldo atual: R$\(saldo)")
    }
}

let clienteJuliano = Cliente(nome: "Juliano", cpf: "012.672.120-16")
let contaJuliano = ContaBancaria(cliente: clienteJuliano)
contaJuliano.depositar(valor: 1000)
contaJuliano.sacar(valor: 200)
contaJuliano.verSaldo()
print("------------------------------------------")

// Desafio 04 - Sistema Escolar
print("Desafio 04")
struct Aluno {
    let nome: String
    let matricula: Int
}

class Matricula {
    private let notas: [Double]
    
    init(notas: [Double]) {
        self.notas = notas
    }
    
    func mostrarSituacao() -> String {
        if calcularMedia() >= 7 {
            return "Aprovado"
        } else {
            return "Reprovado"
        }
    }
    
    private func calcularMedia() -> Double {
        var total: Double = 0.0
        
        for nota in notas {
            total += nota
        }

        return total / Double(notas.count)
    }
}
let alunoJuliano = Aluno(nome: "Juliano", matricula: 12345)
let matriculaJuliano = Matricula(notas: [7.0, 8.5, 6.5, 6.0])
print(matriculaJuliano.mostrarSituacao())
print("------------------------------------------")

// Desafio 05 - Frota de Veículos
print("Desafio 05")
struct Veiculo {
    let modelo: String
    let placa: String
}

class Frota {
    private var listaVeiculos: [Veiculo]
    
    init(listaVeiculos: [Veiculo]) {
        self.listaVeiculos = listaVeiculos
    }
    
    func adicionarVeiculo(veiculo: Veiculo) {
        listaVeiculos.append(veiculo)
    }
    
    func listarVeiculos() {
        for veiculo in listaVeiculos {
            print("Modelo: \(veiculo.modelo), Placa: \(veiculo.placa)")
        }
    }
}
let veiculoX = Veiculo(modelo: "X10", placa: "ABC-1234")
let veiculoY = Veiculo(modelo: "Civic", placa: "JKL-9087")
let veiculoZ = Veiculo(modelo: "Onix", placa: "MNO-4567")
let frota = Frota(listaVeiculos: [veiculoX, veiculoY])
frota.listarVeiculos()
print("-----------------")
frota.adicionarVeiculo(veiculo: veiculoZ)
frota.listarVeiculos()
print("------------------------------------------")

// Desafio 06 - Sistema de Animais
print("Desafio 06")
class Animal {
    
    func emitirSom() {
        print("Som genérico")
    }
}

class Cachorro: Animal {
    override func emitirSom() {
        print("Au au")
    }
}

class Gato: Animal {
    override func emitirSom() {
        print("Miau miau")
    }
}

let animal = Animal()
let cachorro = Cachorro()
let gato = Gato()

animal.emitirSom()
cachorro.emitirSom()
gato.emitirSom()
print("------------------------------------------")

// Desafio 07 - Funcionários e Bônus
print("Desafio 07")
class Funcionario2 {
    let salario: Double
    
    init(salario: Double) {
        self.salario = salario
    }
    
    func bonus() -> Double {
        return 0
    }
}

class Gerente: Funcionario2 {
    override func bonus() -> Double {
        return salario * 0.20
    }
}

class Dev: Funcionario2 {
    override func bonus() -> Double {
        return salario * 0.10
    }
}

let funcionarios: [Funcionario2] = [
    Gerente(salario: 1000),
    Dev(salario: 800)
]

for funcionario in funcionarios {
    print(funcionario.bonus())
}
print("------------------------------------------")

// Desafio 08 - Formas Geométricas
print("Desafio 08")
class Forma {
    
    func area() -> Double {
        return 0.0
    }
}

class Quadrado: Forma {
    
    let lado: Double
    
    init(lado: Double) {
        self.lado = lado
    }
    
    override func area() -> Double {
        return lado * lado
    }
}

class Circulo: Forma {
    
    let raio: Double
    
    init(raio: Double) {
        self.raio = raio
    }
    
    override func area() -> Double {
        return Double.pi * raio * raio
    }
}

let formas: [Forma] = [Quadrado(lado: 4), Circulo(raio: 3)]

for forma in formas {
    print("Área:", forma.area())
}
print("------------------------------------------")

// Desafio 09 - Pagamentos
print("Desafio 09")
class Pagamento {
    let valor: Double
    
    init(valor: Double) {
        self.valor = valor
    }
    
    func processar() {
        
    }
}

class Cartao: Pagamento {
    
    override func processar() {
        print("Processando pagamento no cartão no valor de \(valor)")
    }
}

class Boleto: Pagamento {
    
    override func processar() {
        print("Gerando boleto no valor de \(valor)")
    }
}

class Pix: Pagamento {
    
    override func processar() {
        print("Processando Pix no valor de \(valor)")
    }
}

func fazerPagamento(pagamento: Pagamento) {
    pagamento.processar()
}

fazerPagamento(pagamento: Cartao(valor: 1000))
fazerPagamento(pagamento: Boleto(valor: 2000))
fazerPagamento(pagamento: Pix(valor: 3000))
print("------------------------------------------")

// Desafio 10 - Veículos
print("Desafio 10")
class Veiculo2 {
    
    func mover() {
        
    }
}

class Carro: Veiculo2 {
    
    override func mover() {
        print("O carro está se movendo na estrada")
    }
}

class Moto: Veiculo2 {
    override func mover() {
        print("A moto está se movendo na estrada")
    }
}

func iniciarSimulacao(veiculos: [Veiculo2]) {
    for veiculo in veiculos {
        veiculo.mover()
    }
}

let carro = Carro()
let moto = Moto()

iniciarSimulacao(veiculos: [carro, moto])
print("------------------------------------------")

// Desafio 11 - Números Pares
print("Desafio 11")

for numero in 1...100 {
    if numero % 2 == 0 {
        print(numero)
    }
}
print("------------------------------------------")

// Desafio 12 - Soma de Compras
print("Desafio 12")

let compras: [Double] = [25.50, 10.00, 7.75, 40.20]

var total: Double = 0.0

for valor in compras {
    total += valor
}

print("Total das compras: R$\(total)")
print("------------------------------------------")

// Desafio 13 - Tabuada
print("Desafio 13")

for numero in 1...10 {
    print("Tabuada do \(numero):")
    
    for multiplicador in 1...10 {
        let resultado = numero * multiplicador
        print("\(numero) x \(multiplicador) = \(resultado)")
    }
    
    print("-----------------")
}
print("------------------------------------------")

// Desafio 14 - Contagem Regressiva
print("Desafio 14")

for numero in stride(from: 10, through: 0, by: -1) {
    print(numero)
}
print("------------------------------------------")

// Desafio 15 - Média de Notas
print("Desafio 15")

let notas: [Double] = [7.5, 8.0, 6.5, 9.0]

var soma: Double = 0.0

for nota in notas {
    soma += nota
}

let media = soma / Double(notas.count)

print("Média final: \(media)")
print("------------------------------------------")
