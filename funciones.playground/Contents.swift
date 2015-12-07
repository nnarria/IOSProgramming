//: Funciones

import UIKit


//para exigir que al llamar la funcion se tenga que poner
//el nombre del primer argumento hay que repetir el nombre

func calcularIMC (pesoIntegral peso: Double, altura: Double) -> (imcCalculado: Double,
    mensajeDeSalud: String) {

    
    let imc: Double = peso / (altura * altura)
    var mensaje = ""
    
    if (imc > 18.50 && imc < 25.00) {
        mensaje = "Peso Normal"
    }
    else {
        mensaje = "Debes de acudir con tu médico";
    }
    
    let resultado = (imc, mensaje)
    
    
    return resultado
}


let imc = calcularIMC(pesoIntegral: 66.0, altura: 1.60)
print (imc)

//para acceder a un valor de la tupla
imc.0
imc.1


//guardar el resultado de una tupla como solo un valor
let (imc2, _) = calcularIMC(pesoIntegral: 66.0, altura: 1.60)
imc2

let (_, imc_str) = calcularIMC(pesoIntegral: 66.0, altura: 1.60)
imc_str

let (imc3, imc_mensaje3) = calcularIMC(pesoIntegral: 66.0, altura: 1.60)
imc3
imc_mensaje3


//imctupla
let imcTupla = calcularIMC(pesoIntegral: 66.0, altura: 1.60)
imcTupla.imcCalculado
imcTupla.mensajeDeSalud





print (calcularIMC(pesoIntegral: 70.0, altura: 1.60))
calcularIMC(pesoIntegral: 75.0, altura: 1.60)



var pelicula : (nombre: String, añoDeSalida: Int, calificacion: Double) = ("Tigre", 1990, 100.00)
pelicula




