//
//  InterfaceController.swift
//  ArmaTuPizzaDesdeAppleWatch WatchKit Extension
//
//  Created by Nicolás Narria on 1/13/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var itemPicker: WKInterfacePicker!
    var dPizza: DatosPizza!
    
    var lstTamanno: [(String, String)] = [
        ("Chica", "Chica"),
        ("Mediana", "Mediana"),
        ("Grande", "Grande")]
    
    var tamannoSelected: String = "Chica"
    var idxTamannoSelected: Int = 0
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        dPizza = context as! DatosPizza
    }
    
    @IBAction func irSegundoPaso() {
        //init (tamanno:String, tipoMasa:String, tipoQueso:String, ingredientes:[String])
        dPizza.tamanno = self.tamannoSelected
        dPizza.idxTamanno = self.idxTamannoSelected
        
        //let dPizza = DatosPizza (tamanno:"", tipoMasa:"", tipoQueso:"", ingredientes: ing)
        
        pushControllerWithName("segundoPaso", context: dPizza)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        
        let pickerItems: [WKPickerItem] = lstTamanno.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
        itemPicker.setSelectedItemIndex(dPizza.idxTamanno)
    }
    
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        self.tamannoSelected = lstTamanno[value].0
        self.idxTamannoSelected = value
        
        NSLog("List Picker: \(lstTamanno[value].0) selected")
    }
    
    

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
