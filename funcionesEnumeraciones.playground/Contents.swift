//: Playground - noun: a place where people can play

import UIKit

enum Ciudad: Int {
    case Cancun = 450, Guadalajara = 10, DF = 78, Monterrey = 512, Merida
    
    func calcularDistancia () -> Int {
        return Ciudad.Cancun.rawValue - self.rawValue
    }
    
    init () {
        self = .Cancun
    }
}

var cc = Ciudad()

cc.calcularDistancia()



