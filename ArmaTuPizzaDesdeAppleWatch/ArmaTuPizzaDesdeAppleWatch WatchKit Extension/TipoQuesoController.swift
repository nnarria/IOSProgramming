//
//  TipoQuesoController.swift
//  ArmaTuPizzaDesdeAppleWatch
//
//  Created by Nicolás Narria on 1/15/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoController: WKInterfaceController {

    @IBOutlet var itemPicker: WKInterfacePicker!
    
    var dPizza: DatosPizza!
    var tipoQuesoSelected: String = "Mozarela"
    var idxTipoQuesoSelected:Int = 0
    
    
    //mozarela, cheddar, parmesano, sin queso
    var lstTipoQueso: [(String, String)] = [
        ("Mozarela", "Mozarela"),
        ("Cheddar", "Cheddar"),
        ("Parmesano", "Parmesano"),
        ("Sin queso", "Sin queso")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        // Configure interface objects here.
        dPizza = context as! DatosPizza
        
        print ("Tamaño: \(dPizza.tamanno)")
        print ("TipoMasa: \(dPizza.tipoMasa)")
    }
    
    
    @IBAction func quesoSelected(value: Int) {
        self.tipoQuesoSelected = lstTipoQueso[value].0
        self.idxTipoQuesoSelected = value
        
        NSLog("List Picker: \(lstTipoQueso[value].0) selected")
    }
    
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        let pickerItems: [WKPickerItem] = lstTipoQueso.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
        
        itemPicker.setSelectedItemIndex(dPizza.idxTipoQueso)
    }

    @IBAction func irCuartoPaso() {
        dPizza.tipoQueso = self.tipoQuesoSelected
        dPizza.idxTipoQueso = self.idxTipoQuesoSelected
        
        pushControllerWithName("cuartoPaso", context: dPizza)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
