//: Estructuras

import UIKit

struct Automovil {
    let marca: String
    var precio: Double
    
    init (marca: String, precio: Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func obtenerDescripcion () -> String {
        return "Marca: \(marca) Precio: \(precio)"
    }
    
}


var auto = Automovil (marca: "MarcaAuta", precio: 19800.80)


auto.marca
auto.precio = 9890

auto.precio


auto.obtenerDescripcion()
