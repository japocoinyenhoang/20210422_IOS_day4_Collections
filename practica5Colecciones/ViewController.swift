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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // aqui indico cada una una de las celdas
        let celda = UITableViewCell(style: .default, reuseIdentifier: "miCelda")
        
        //celda.textLabel?.font = UIFont.systemFont(ofSize: 30)
        
        //PREGUNTAR, no me sale el weight
        celda.textLabel?.font = UIFont.systemFont(ofSize: 40, weight: UIFont.Weight.medium)
        
        
        //icono de ka cekda
        celda.accessoryType = .disclosureIndicator
        
        //introducir los datos de mi celda
        celda.textLabel?.text = miColeccion [indexPath.row]
        return celda
    }
}

extension ViewController : UITableViewDelegate {
    //quiero la celda seleccionada
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //celda pulsada por el usuario x eso hemos elegido didSelectRowAt
        print(indexPath.row)
    }
}
