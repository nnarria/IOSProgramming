//
//  IngredientesController.swift
//  ArmaTuPizzaDesdeAppleWatch
//
//  Created by Nicolás Narria on 1/15/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    
    @IBOutlet var ingJamon: WKInterfaceSwitch!
    @IBOutlet var ingPepperoni: WKInterfaceSwitch!
    @IBOutlet var ingPavo: WKInterfaceSwitch!
    @IBOutlet var ingSalchicha: WKInterfaceSwitch!
    @IBOutlet var ingAceituna: WKInterfaceSwitch!
    @IBOutlet var ingCebolla: WKInterfaceSwitch!
    @IBOutlet var ingPimiento: WKInterfaceSwitch!
    @IBOutlet var ingPinna: WKInterfaceSwitch!
    @IBOutlet var ingAnchoa: WKInterfaceSwitch!

    
    var cantidadIngrediente:Int = 0
    var dPizza: DatosPizza!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        dPizza = context as! DatosPizza
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        ingJamon.setOn(dPizza.switchJamon)
        ingPepperoni.setOn(dPizza.switchPepperoni)
        ingPavo.setOn(dPizza.switchPavo)
        ingSalchicha.setOn(dPizza.switchSalchicha)
        ingAceituna.setOn(dPizza.switchAceituna)

        ingCebolla.setOn(dPizza.switchCebolla)
        ingPimiento.setOn(dPizza.switchPimiento)
        ingPinna.setOn(dPizza.switchPinna)
        ingAnchoa.setOn(dPizza.switchAnchoa)
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func changeSwitchJamon(value: Bool) {
        if dPizza.switchJamon == false && value && dPizza.contarIngredientes() == 5 {
            ingJamon.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
            
        }
        else {
            dPizza.switchJamon = value
        }
    }
    
    
    @IBAction func changeSwitchPepperoni(value: Bool) {
        if dPizza.switchPepperoni == false && value && dPizza.contarIngredientes() == 5 {
            ingPepperoni.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchPepperoni = value
        }

    }
    
    @IBAction func changeSwitchPavo(value: Bool) {
        if dPizza.switchPavo == false && value && dPizza.contarIngredientes() == 5 {
            ingPavo.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchPavo = value
        }

    }
    
    
    @IBAction func changeSwitchSalchicha(value: Bool) {
        if dPizza.switchSalchicha == false && value && dPizza.contarIngredientes() == 5 {
            ingSalchicha.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchSalchicha = value
        }

    }
    
    
    @IBAction func changeSwitchAceituna(value: Bool) {
        if dPizza.switchAceituna == false && value && dPizza.contarIngredientes() == 5 {
            ingAceituna.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchAceituna = value
        }

    }
    
    
    
    @IBAction func changeSwitchCebolla(value: Bool) {
        if dPizza.switchCebolla == false && value && dPizza.contarIngredientes() == 5 {
            ingCebolla.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchCebolla = value
        }

        
    }
    
    
    @IBAction func changeSwitchPimiento(value: Bool) {
        if dPizza.switchPimiento == false && value && dPizza.contarIngredientes() == 5 {
            ingPimiento.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchPimiento = value
        }

    }
    
    
    // prepare Alert with setted style
    func showAlertWithStyle(style: WKAlertControllerStyle, titulo:String, mensaje:String) {
        let action = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Default, handler: { () -> Void in
            print("default action method..")
        })
        var actions = NSArray()
        actions = [action]
        
        self.presentAlertControllerWithTitle(titulo, message: mensaje, preferredStyle: style, actions: actions as! [WKAlertAction])
    }
    
    @IBAction func changeSwitchPinna(value: Bool) {
        if dPizza.switchPinna == false && value && dPizza.contarIngredientes() == 5 {
            ingPinna.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchPinna = value
        }

    }
    
    
    @IBAction func changeSwitchAnchoa(value: Bool) {
        if dPizza.switchAnchoa == false && value && dPizza.contarIngredientes() == 5 {
            ingAnchoa.setOn(false)
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Sólo se permite un máximo de 5 ingredientes")
        }
        else {
            dPizza.switchAnchoa = value
        }

    }
    
    
    @IBAction func irQuintoPaso() {
        
        if (dPizza.contarIngredientes() == 0) {
            self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "Debe escoger al menos 1 ingrediente")
        }
        else {
            pushControllerWithName("quintoPaso", context: dPizza)
        }
    }
}
