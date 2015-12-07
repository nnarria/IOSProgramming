//: Playground - noun: a place where people can play

import UIKit

var ciudades = ["Cancun", "Guadalajara", "DF", "Monterrey"]


enum Ciudad {
    case Cancun
    case Guadalajara
    case DF
    case Monterrey
}


enum Ciudad2 {case Cancun, Guadalajara, DF, Monterrey}

func obtenerCiudad (ciudad: Ciudad) -> String {
    switch ciudad {
        case .Cancun:
            return "Ciudad de playa"
        case .Guadalajara, .DF, .Monterrey:
            return "Ciudad sin playa"
        default:
            return "Opción inválida"
    }
}


obtenerCiudad(Ciudad.Cancun)


