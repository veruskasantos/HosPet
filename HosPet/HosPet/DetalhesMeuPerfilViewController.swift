//
//  DetalhesMeuPerfilViewController.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class DetalhesMeuPerfilViewController: UIViewController {
    
    static var pets: [String] = []
    
    @IBOutlet weak var descricaoTextField: UITextField!
    
    @IBOutlet weak var petsTextField: UITextField!
    
    @IBOutlet weak var listaDePets: UITableView!
    
    @IBAction func adicionarNovoPetButton(_ sender: UIButton) {
        if(petsTextField.text != ""){
            DetalhesMeuPerfilViewController.pets.append(petsTextField.text!)
            petsTextField.text = ""
            
            listaDePets.reloadData()
        }
    }
    
    static func getAnimais()->[String] {
        return pets
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listaDePets.dataSource = self
        listaDePets.delegate = self
    }

}

extension DetalhesMeuPerfilViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DetalhesMeuPerfilViewController.pets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "petCellIdentifier", for: indexPath)
        
        let pet = DetalhesMeuPerfilViewController.pets[indexPath.row]
        
        cell.textLabel?.text = pet
        
        return cell
    }
    
}




