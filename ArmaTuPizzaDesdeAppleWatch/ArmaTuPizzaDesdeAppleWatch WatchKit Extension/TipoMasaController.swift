//
//  TipoMasaController.swift
//  ArmaTuPizzaDesdeAppleWatch
//
//  Created by Nicolás Narria on 1/15/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasaController: WKInterfaceController {

    @IBOutlet var itemPicker: WKInterfacePicker!
    
    var dPizza: DatosPizza!
    var tipoMasaSelected: String = "Delgada"
    var idxTipoMasaSelected:Int = 0
    
    var lstTipoMasa: [(String, String)] = [
        ("Delgada", "Delgada"),
        ("Crujiente", "Crujiente"),
        ("Gruesa", "Gruesa")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        dPizza = context as! DatosPizza
        
        print ("Tamaño de pizza: \(dPizza.tamanno)")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = lstTipoMasa.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        itemPicker.setItems(pickerItems)
        
        
        itemPicker.setSelectedItemIndex(dPizza.idxTipoMasa)
        
        
    }

    @IBAction func itemSelected(value: Int) {
        self.tipoMasaSelected = lstTipoMasa[value].0
        self.idxTipoMasaSelected = value
        
        NSLog("List Picker: \(lstTipoMasa[value].0) selected")
    }
    
    @IBAction func irTercerPaso() {
        dPizza.tipoMasa = self.tipoMasaSelected
        dPizza.idxTipoMasa = self.idxTipoMasaSelected
        
        pushControllerWithName("tercerPaso", context: dPizza)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
