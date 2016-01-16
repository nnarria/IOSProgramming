//
//  ResumenController.swift
//  ArmaTuPizzaDesdeAppleWatch
//
//  Created by Nicolás Narria on 1/15/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit
import Foundation


class ResumenController: WKInterfaceController {

    var dPizza: DatosPizza!
    
    @IBOutlet var tamanno: WKInterfaceLabel!
    @IBOutlet var tipoMasa: WKInterfaceLabel!
    @IBOutlet var tipoQueso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        dPizza = context as! DatosPizza
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        tamanno.setText(dPizza.tamanno)
        tipoMasa.setText(dPizza.tipoMasa)
        tipoQueso.setText(dPizza.tipoQueso)
        

        var tmp:String = ""
        if (dPizza.switchJamon) {
            tmp = "Jamón, \n"
        }
        
        if (dPizza.switchPepperoni) {
            tmp += "Pepperoni, \n"
        }
        
        if (dPizza.switchPavo) {
            tmp += "Pavo, "
        }
        
        if (dPizza.switchSalchicha) {
            tmp += "Salchicha, "
        }
        
        if (dPizza.switchAceituna) {
            tmp += "Aceituna, "
        }
        
        if (dPizza.switchCebolla) {
            tmp += "Cebolla, "
        }
        
        if (dPizza.switchPimiento) {
            tmp += "Pimiento, "
        }
        
        if (dPizza.switchPinna) {
            tmp += "Piña, "
        }
        
        if (dPizza.switchAnchoa) {
            tmp += "Anchoa"
        }
        
        ingredientes.setText(tmp)
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
