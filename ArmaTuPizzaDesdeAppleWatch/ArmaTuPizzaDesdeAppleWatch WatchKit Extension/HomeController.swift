//
//  HomeController.swift
//  ArmaTuPizzaDesdeAppleWatch
//
//  Created by Nicolás Narria on 1/14/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit
import Foundation


class HomeController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func irPrimerPaso() {
        let dPizza = DatosPizza (tamanno:"Chica", idxTamanno:0,  tipoMasa:"Delgada", idxTipoMasa:0,  tipoQueso:"Mozarela", idxTipoQueso:0, switchJamon: false, switchPepperoni: false, switchPavo: false, switchSalchicha: false, switchAceituna: false, switchCebolla: false, switchPimiento: false, switchPinna: false, switchAnchoa: false)
        
        pushControllerWithName("primerPaso", context: dPizza)
    }
}
