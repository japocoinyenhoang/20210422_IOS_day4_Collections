//
//  ViewController.swift
//  practica5Colecciones
//
//  Created by Tardes on 22/4/21.
//VOY A LLAMAR A MIS VARIABLES EN ESPAÑOL PARA DIFERENCIAR QUE ES MIO Y QUE ES DE XCODE

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    private let miColeccion = ["Chaqueta", "Abrigo", "Pantalon"]
    private let miColeccion2 = ["Zapatos", "Chanclas", "Deportivas"]
    private let miColeccion3 = ["Gorro", "Gorra", "Sombrero"]
    var elementoTablaNumero: Int?
    var elementoTablaTexto: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // tableView.backgroundColor = .gray
        //nos ayuda a cargar los elementos
        tableView.dataSource = self
        
        //Rescatar datos de la tabla realizados por el usuario
        tableView.delegate = self
        
        //borrra las lineas del footer
        tableView.tableFooterView = UIView ()
    }

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // este método es para indicar el número de celdas
        return miColeccion.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
   /* Asi nos devuelve el array que le hemos pasado tres veces, en la lista
     func numberOfSections(in tableView: UITableView) -> Int {
        // indicamos el numero de secciones;
        return 3
    }
 */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // aqui indico cada una una de las celdas
        let celda = UITableViewCell(style: .default, reuseIdentifier: "miCelda")
        
        //celda.textLabel?.font = UIFont.systemFont(ofSize: 30)
        
        //PREGUNTAR, no me sale el weight
        celda.textLabel?.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.medium)
        
        
        //icono de la celda
        celda.accessoryType = .disclosureIndicator
        
        //introducir los datos de mi celda
        //celda.textLabel?.text = miColeccion [indexPath.row]
        return celda
        
        if indexPath.section == 0 {celda.textLabel?.text = miColeccion [indexPath.row]}
        if indexPath.section == 1 {celda.textLabel?.text = miColeccion2 [indexPath.row]}
        if indexPath.section == 2 {celda.textLabel?.text = miColeccion3 [indexPath.row]}
    }
}

extension ViewController : UITableViewDelegate {
    //quiero la celda seleccionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //celda pulsada por el usuario x eso hemos elegido didSelectRowAt y guardada en la variable elemento Tabla para poder mandarlo a otra view
        
        elementoTablaNumero = indexPath.row
        elementoTablaTexto = miColeccion[indexPath.row]
        performSegue(withIdentifier: "sVCDetalle", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sVCDetalle" {
            if let destino = segue.destination as?
                VCDetalle{
                destino.elementoNumero = elementoTablaNumero
                destino.elementoTexto = elementoTablaTexto
                
            }
        }
    }
}
