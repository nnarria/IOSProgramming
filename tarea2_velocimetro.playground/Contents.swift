//: Tarea 2
/*
 * Velocimetro
 */


import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
}


class Auto {
    var velocidad: Velocidades
    var velocidadEnCadena: String {
        switch self.velocidad {
        case .Apagado:
            return "Apagado"
        case .VelocidadAlta:
            return "Velocidad Alta"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadBaja:
            return "Velocidad Baja"
        }
    }
    
    init () {
        self.velocidad = Velocidades (velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String) {
        switch self.velocidad {
        case .Apagado:
            self.velocidad = Velocidades (velocidadInicial: Velocidades.VelocidadBaja)
        case .VelocidadBaja:
            self.velocidad = Velocidades (velocidadInicial: Velocidades.VelocidadMedia)
        case .VelocidadMedia:
            self.velocidad = Velocidades (velocidadInicial: Velocidades.VelocidadAlta)
        case .VelocidadAlta:
            self.velocidad = Velocidades (velocidadInicial: Velocidades.VelocidadMedia)
        }
        
        return (actual: self.velocidad.rawValue, velocidadEnCadena: self.velocidadEnCadena)
    }
    
}


var auto1: Auto = Auto ()

print ("\(auto1.velocidad.rawValue), \(auto1.velocidadEnCadena)")
for var i = 0; i < 20; i++ {
    var ttupla: (actual: Int, velocidadEnCadena: String) = auto1.cambioDeVelocidad()
    print ("\(ttupla.actual), \(ttupla.velocidadEnCadena)")
    
}

