//
//  ViewController.swift
//  practica5Colecciones
//
//  Created by Tardes on 22/4/21.
//

import UIKit

class ViewController: UIViewController {

    private let myCollection = ["Chaqueta", "Abrigo", "Pantalon"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // tableView.backgroundColor = .gray
        //nos ayuda a cargar los elementos
        tableView.dataSource = self
    }

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // este método es para indicar el número de celdas
        return myCollection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // aqui indico cada una una de las celdas
        let cell = UITableViewCell(style: .default, reuseIdentifier: "myCell")
        //introducir los datos de mi celda
        cell.textLabel?.text = myCollection [indexPath.row]
        return cell
    }
    
    
}
