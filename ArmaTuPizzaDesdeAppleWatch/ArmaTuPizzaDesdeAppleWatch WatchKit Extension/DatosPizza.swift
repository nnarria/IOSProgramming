//
//  DatosPizza.swift
//  ArmaTuPizzaDesdeAppleWatch
//
//  Created by Nicolás Narria on 1/14/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit

class DatosPizza: NSObject {
    var tamanno:String = ""
    var idxTamanno:Int = 0
    
    var tipoMasa:String = ""
    var idxTipoMasa:Int = 0
    
    var tipoQueso:String = ""
    var idxTipoQueso:Int = 0
    
    var switchJamon:Bool = false
    var switchPepperoni = false
    var switchPavo:Bool = false
    var switchSalchicha:Bool = false
    var switchAceituna:Bool = false
    var switchCebolla:Bool = false
    var switchPimiento:Bool = false
    var switchPinna:Bool = false
    var switchAnchoa:Bool = false
    
    
    init (tamanno:String, idxTamanno:Int, tipoMasa:String, idxTipoMasa:Int, tipoQueso:String, idxTipoQueso:Int, switchJamon:Bool, switchPepperoni:Bool, switchPavo:Bool, switchSalchicha:Bool, switchAceituna:Bool, switchCebolla:Bool, switchPimiento:Bool, switchPinna:Bool, switchAnchoa:Bool) {
        self.tamanno = tamanno
        self.tipoMasa = tipoMasa
        self.tipoQueso = tipoQueso
        
        self.switchJamon = switchJamon
        self.switchPepperoni = switchPepperoni
        self.switchPavo = switchPavo
        self.switchSalchicha = switchSalchicha
        self.switchAceituna = switchAceituna
        self.switchCebolla = switchCebolla
        self.switchPimiento = switchPimiento
        self.switchPinna = switchPinna
        self.switchAnchoa = switchAnchoa
        
    }
    
    func contarIngredientes () -> Int {
        var n:Int = 0
        if (self.switchJamon){ n++ }
        if (self.switchPepperoni){ n++ }
        if (self.switchPavo){ n++ }
        if (self.switchSalchicha){ n++ }
        if (self.switchAceituna){ n++ }
        if (self.switchCebolla){ n++ }
        if (self.switchPimiento){ n++ }
        if (self.switchPinna){ n++ }
        if (self.switchAnchoa){ n++ }
        
        
        return n
    }

}
