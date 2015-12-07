//: Playground - noun: a place where people can play

import UIKit

var ciudades = ["Cancun", "Guadalajara", "DF", "Monterrey"]


enum Ciudad: Int {
    case Cancun = 450, Guadalajara = 10, DF = 78, Monterrey = 512, Mérida
}

func calcularDistancia (ciudad: Ciudad) -> Int {
    return Ciudad.Cancun.rawValue - ciudad.rawValue
}


calcularDistancia(Ciudad.Monterrey)


