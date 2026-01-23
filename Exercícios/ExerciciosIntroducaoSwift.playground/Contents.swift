import UIKit

print("Exercício 01:")
let produto: String = "Notebook"
let preco: Double = 3999.99
print("O produto \(produto) custa R$ \(preco)")
print("-------------------------")

print("Exercício 02:")
let primeiroNumero: Int = 10
let segundoNumero: Int = 7
let terceiroNumero: Int = 6
let variavel: Int = (primeiroNumero + segundoNumero + terceiroNumero) / 3
print("A média dos três números é \(variavel)")
print("-------------------------")

print("Exercício 03:")
let nome: String = "Juliano"
let sobrenome: String = "Sgarbossa"
let nomeCompleto: String = nome + " " + sobrenome
print("Nome completo: \(nomeCompleto)")
print("-------------------------")

print("Exercício 04:")
let idadeString: String = "25"
let idadeInt: Int = Int(idadeString) ?? 0
let alturaString: String = "1.70"
let alturaDouble: Double = Double(alturaString) ?? 0.00
print("Idade: \(idadeInt)")
print("Altura: \(alturaDouble)")
print("-------------------------")

print("Exercício 05:")
let numeroA: Float = 5.00
let numeroB: Float = 2.00
let somaNumeros: Float = numeroA + numeroB
let subtraiNumeros: Float = numeroA - numeroB
let multiplicaNumeros: Float = numeroA * numeroB
let divideNumeros: Float = numeroA / numeroB
print("Soma: \(somaNumeros)")
print("Subtração: \(subtraiNumeros)")
print("Multiplicação: \(multiplicaNumeros)")
print("Divisão: \(divideNumeros)")
print("-------------------------")

print("Exercício 06:")
let pesoFloat: Float = 70.5
let pesoInt: Int = Int(pesoFloat)
print("O peso como Int: \(pesoInt)")
print("-------------------------")

print("Exercício 07:")
let totalConta: Double = 100.00
let numeroDePessoas: Int = 4
let divisaoDaConta: Double = totalConta / Double(numeroDePessoas)
print("Cada pessoa deve pagar R$ \(divisaoDaConta)")
print("-------------------------")

print("Exercício 08:")
let peso: Double = 84.0
let altura: Double = 1.76
let calcularIMC: Double = peso / (altura * altura)
print("O IMC é: \(calcularIMC)")
print("-------------------------")

print("Exercício 09:")
let ano: Int = 365
let segundosNoAno: Int = ano * 24 * 60 * 60
print("O número de segundos em um ano é de: \(segundosNoAno)")
print("-------------------------")

print("Exercício 10:")
let firstNumber: Int = 20
let secondNumber: Int = 15
let eMaior: Bool = firstNumber > secondNumber
print("O primeiro número é maior que o segundo número? \(eMaior)")
print("-------------------------")
