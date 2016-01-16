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
    
    @IBOutlet var ing1: WKInterfaceLabel!
    @IBOutlet var ing2: WKInterfaceLabel!
    @IBOutlet var ing3: WKInterfaceLabel!
    @IBOutlet var ing4: WKInterfaceLabel!
    @IBOutlet var ing5: WKInterfaceLabel!
    
    
    @IBOutlet var tamanno: WKInterfaceLabel!
    @IBOutlet var tipoMasa: WKInterfaceLabel!
    @IBOutlet var tipoQueso: WKInterfaceLabel!
    
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
        

        var tmps:[String] = [String]()
        
        
        if (dPizza.switchJamon) {
            tmps.append("Jamón")
        }
        
        if (dPizza.switchPepperoni) {
            tmps.append("Pepperoni")
        }
        
        if (dPizza.switchPavo) {
            tmps.append("Pavo")
        }
        
        if (dPizza.switchSalchicha) {
            tmps.append("Salchicha")
        }
        
        if (dPizza.switchAceituna) {
            tmps.append("Aceituna")
        }
        
        if (dPizza.switchCebolla) {
            tmps.append("Cebolla")
        }
        
        if (dPizza.switchPimiento) {
            tmps.append("Pimiento")
        }
        
        if (dPizza.switchPinna) {
            tmps.append("Piña")
        }
        
        if (dPizza.switchAnchoa) {
            tmps.append("Anchoa")
        }
        
        
        for i in 1...tmps.count {
            if (i == 1) {
                ing1.setText(tmps[i-1])
            }
            else if (i == 2) {
                ing2.setText(tmps[i-1])
            }
            else if (i == 3) {
                ing3.setText(tmps[i-1])
            }
            else if (i == 4) {
                ing4.setText(tmps[i-1])
            }
            else {
                ing5.setText(tmps[i-1])
            }
            
        }
        
        //ingredientes.setText(tmp)
        
    }

    @IBAction func solicitarPedido() {
        self.showAlertWithStyle(WKAlertControllerStyle.Alert, titulo:"Información", mensaje: "La pizza ha sido enviada para su preparación!!!")
    }
    
    
    func showAlertWithStyle(style: WKAlertControllerStyle, titulo:String, mensaje:String) {
        let action = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Default, handler: { () -> Void in
            print("default action method..")
        })

        var actions = NSArray()
        actions = [action]
        self.presentAlertControllerWithTitle(titulo, message: mensaje, preferredStyle: style, actions: actions as! [WKAlertAction])
    }


    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
