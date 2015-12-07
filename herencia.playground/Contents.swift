//: Playground - noun: a place where people can play

import UIKit

class Producto {
    let marca: String
    var precio: Double = 0.0
    
    init (marca: String, precio: Double) {
        self.marca = marca
        self.precio = precio
    }
    
    func calcularPrecioDeDescuento (porcentajeDeDescuento: Double) -> Double {
        return precio - (porcentajeDeDescuento * precio / 100)
    }
}

enum Seccion {
    case Introduccion, Indice, Conclusiones
    init () {
        self = .Introduccion
    }
}

class Libro: Producto {
    var seccion = Seccion ()
    var añoDePublicacion: Int
    var contieneFormatoDigital: Bool?
    
    
    var paginas: Int = 1000
    var palabrasPorPagina: Int = 60
    
    var numeroDePalabrasDelLibro: Int {
        get {
            return paginas * palabrasPorPagina
        }
        set {
            paginas = newValue
            palabrasPorPagina = newValue / 100
        }
    }
    
    init (marca: String, precio: Double, añoDePublicacion: Int) {
        self.añoDePublicacion = añoDePublicacion
        super.init(marca: marca, precio: precio)
        
    }
    
    
    convenience init (marca: String) {
        self.init(marca: marca, precio: 0.0, añoDePublicacion: 2011)
    }
    
    override func calcularPrecioDeDescuento (porcentajeDeDescuento: Double) -> Double {
        //return porcentajeDeDescuento * precio / 100
        return super.calcularPrecioDeDescuento (porcentajeDeDescuento)
    }
    
    
}

var libro = Libro (marca: "MG", precio: 190.50, añoDePublicacion: 1990)
var nuevoLibro = Libro (marca: "BB")
nuevoLibro.marca
nuevoLibro.precio
nuevoLibro.añoDePublicacion

nuevoLibro.numeroDePalabrasDelLibro = 1000
nuevoLibro.numeroDePalabrasDelLibro
nuevoLibro.palabrasPorPagina
nuevoLibro.paginas

nuevoLibro.contieneFormatoDigital = true


if let formatoDigital = nuevoLibro.contieneFormatoDigital {
    if formatoDigital {
        print ("También es digital")
    }
}


libro.marca
libro.precio
libro.seccion
libro.calcularPrecioDeDescuento(20)



