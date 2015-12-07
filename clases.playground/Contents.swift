//: Playground - noun: a place where people can play

import UIKit

/*
struct Producto {
    let marca: String
    var precio: Double
    
    init (marca: String, precio: Double) {
        self.marca = marca
        self.precio = precio
    }
}
*/


class Producto {
    let marca: String
    var precio: Double = 0.0
    
    init (marca: String, precio: Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func calcularPrecioDeDescuento (porcentajeDeDescuento: Double) {
        precio = precio - (porcentajeDeDescuento * precio / 100)
    }
}


//var telefono = Producto (marca: "Americana", precio: 169.00)
//telefono.precio

var miTelefono = Producto (marca: "IPhone 6 Plus", precio: 199.56)
print (miTelefono.calcularPrecioDeDescuento(60.0))

miTelefono.precio


miTelefono.marca
miTelefono.precio




