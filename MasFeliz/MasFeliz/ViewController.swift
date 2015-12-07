//
//  ViewController.swift
//  MasFeliz
//
//  Created by Nicolás Narria on 12/2/15.
//  Copyright © 2015 Nicolás Narria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //es un objeto Interface Business Oulet
    //weak significa que cuando dejemos de ocupar el objeto
    //dejemos de ocupar memoria
    @IBOutlet weak var mensajePositivo: UILabel!
    
    let colores: Colores = Colores ()
    let frases: Datos = Datos()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() {
        mensajePositivo.text = frases.regresaFraseFeliz()
        let colorAleatorio = colores.regresaColorAleatorio()
        
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
        
        
        
    }

}

