//
//  VCDetalle.swift
//  practica5Colecciones
//
//  Created by Tardes on 22/4/21.
//

import UIKit

class VCDetalle: UIViewController {
    var elementoNumero: Int?
    var elementoTexto: String?
    @IBOutlet weak var text_celda: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if elementoNumero != nil {
            text_celda.text = String(elementoNumero!) + "  " + String (elementoTexto!)
        }
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
