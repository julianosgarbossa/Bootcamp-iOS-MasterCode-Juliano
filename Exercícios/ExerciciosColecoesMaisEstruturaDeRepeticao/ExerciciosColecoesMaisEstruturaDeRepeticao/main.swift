//
//  main.swift
//  ExerciciosColecoesMaisEstruturaDeRepeticao
//
//  Created by Juliano Sgarbossa on 15/01/26.
//

import Foundation

//Exercício 1: Arrays
//Crie um array contendo os nomes de três aplicativos iOS populares. Imprima o nome do segundo aplicativo na lista.
print("Exercício 01:")
var aplicativos: [String] = ["iFood", "99", "Instagram"]
for (index, aplicativo) in aplicativos.enumerated() {
    if index == 1 {
        print(aplicativo)
    }
}
print("----------------")

//Exercício 2: Dicionários
//Crie um dicionário com os nomes de três pessoas como chaves e seus sobrenomes como valores. Imprima um de seus valores.
print("Exercício 02:")
var nomesPessoas: [String : String] = ["Juliano" : "Sgarbossa", "Janile" : "Moura", "Paula" : "Oliveira"]
for nome in nomesPessoas {
    print(nome.value)
}
print("----------------")

//Exercício 3: Manipulação de Arrays
//Crie um array contendo 10 números inteiros. Adicione um número inteiro à lista e, em seguida, remova o segundo elemento. Imprima array.
print("Exercício 03:")
var numerosInteiros: [Int] = [1,2,3,4,5,6,7,8,9,10]
numerosInteiros.append(11)
numerosInteiros.remove(at: 1)
print(numerosInteiros)
print("----------------")

//Exercício 4: Acesso a Valores
//Crie um dicionário com os nomes de três frutas e a quantidade que você possui de cada uma. Imprima quantas unidades de uma fruta de sua escolha você possui.
print("Exercício 04:")
var frutas: [String : Int] = ["Laranja" : 10, "Maça" : 2, "Uva" : 5]
for fruta in frutas {
    if fruta.key == "Laranja" {
        print(fruta.value)
    }
}
print("----------------")

// Exercício 5: Crie uma lista vazia e depois adicione 3 itens. Por fim, utilize o for para printar esses elementos
print("Exercício 05:")
var nomes: [String] = []

nomes.append("Juliano")
nomes.append("Gabriel")
nomes.append("Caio")

for nome in nomes {
    print(nome)
}
print("----------------")

// Exercício 6: Crie um dicionario String:String com 3 itens. Imprima utilizando o for a chave de cada um deles.
print("Exercício 06:")
var anotacoes: [String : String] = ["Juliano" : "Jogar Futebol", "Gabriel" : "Jogar Video Game", "Caio" : "Ensinar Desenvolvimento iOS"]
for anotacao in anotacoes {
    print(anotacao.key)
}
print("----------------")

// Exercício 7: Adicionar chave e valor em um dicionário e imprimir ambos utilizando o for print("\(chave): \(valor)")
print("Exercício 07:")
for anotacao in anotacoes {
    print("Anotações de \(anotacao.key): \(anotacao.value)")
}
print("----------------")

// Exercício 8: Crie um array com 3 itens. Percorra o array utilizando o for, e realize o print de cada item. Realize o reverso do array que você criou.
print("Exercício 08:")
var idades: [Int] = [18, 34, 38]
for idade in idades {
    print(idade)
}

idades.reverse()
print(idades)
print("----------------")

// Exercício 9: Crie um array de números inteiros. Utilizando o for, percorra o array e soma cada valor. Por fim, imprima o valor total de todos os números
print("Exercício 09:")
var numeros: [Int] = [10, 20, 30, 40, 50]
var somarValores: Int = 0
for numero in numeros {
    somarValores += numero
}
print(somarValores)
print("----------------")
