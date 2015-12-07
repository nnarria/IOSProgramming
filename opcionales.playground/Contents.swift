//: Playground - noun: a place where people can play

import UIKit

var numero: Int = 90


//indica que no hay presencia opcional
// para almacenar valores nulos y sus valores
var numero2: Int? = nil

numero2 = 5

numero2 = 6

if numero2 != nil {
    //operador de bang ! para acceder a valores de un opcional
    let numeroString: String = String(numero2!)
    print(numeroString)
    numeroString
}





func profesores (id: String) -> String? {
    let diccionarioDeProfesores = ["007": "David",
        "008": "Martín",
        "009": "Rafa",
        "010": "Víctor"]
    
    let nombre = diccionarioDeProfesores[id]
    
    return nombre
}


if let nombre = profesores ("012") {
    nombre
}
else {
    print ("no hay profesores")
}

let nombreDos = profesores("013")

if nombreDos != nil {
    nombreDos
}
else {
    print ("No hay profesor")
}
