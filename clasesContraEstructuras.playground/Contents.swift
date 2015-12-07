//: Playground - noun: a place where people can play

import UIKit

class ProductoClass {
    var marca: String
    var precio: Double = 0.0
    
    init (marca: String, precio: Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func calcularPrecioDescuento (porcentajeDeDescuento: Double) -> Double {
        return precio - (precio * porcentajeDeDescuento/100)
    }
}


var telefonoBasico = ProductoClass(marca: "IPhone", precio:150.00)
var telefonoTe = telefonoBasico


telefonoBasico.marca
telefonoTe.marca = "IPhone 6 Plus"

telefonoBasico.marca




struct ProductoStruct {
    var marca: String
    var precio: Double = 0.0
    
    init (marca: String, precio: Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func calcularPrecioDescuento (porcentajeDeDescuento: Double) -> Double {
        return precio - (precio * porcentajeDeDescuento/100)
    }
    
}

var telefonoStruct = ProductoStruct(marca: "Sam", precio: 50.00)
var telefonoPequeño = telefonoStruct

telefonoStruct.marca
telefonoPequeño.marca = "New"
telefonoPequeño.marca
telefonoStruct.marca




