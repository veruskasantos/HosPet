//
//  TelaInicialTableViewController.swift
//  Hospet
//
//  Created by Student on 3/24/17.
//  Copyright © 2017 Enio Abrantes. All rights reserved.
//

import UIKit

class TelaInicialTableViewController: UITableViewController {
    
    var anfitrioes =  [Anfitriao]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.anfitrioes = AnfitriaoDAO.getAnfitriao()

        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.anfitrioes = AnfitriaoDAO.getAnfitriao()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return anfitrioes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "anfitriaoIdentifier", for: indexPath)

        if let userCell = cell as? UsuarioTableViewCell{
            let i = indexPath.row
            
            userCell.fotoImageView.layer.masksToBounds = true
            userCell.fotoImageView.image = UIImage(named: anfitrioes[i].foto!)
            userCell.nomeLabel.text = anfitrioes[i].nome
            userCell.distanciaLabel.text = "\(String(anfitrioes[i].distancia)) Km"
            userCell.precoLabel.text = "R$: \(String(format: "%.2f" , anfitrioes[i].preco))"
            userCell.classificacaoView.settings.updateOnTouch = false
            userCell.classificacaoView.rating = Double(anfitrioes[i].classificacao)
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPerfil" {
            if let novaView = segue.destination as? PerfilAnfitriaoViewController {
                if let index = tableView.indexPathForSelectedRow {
                    let anfitriao = self.anfitrioes[index.row]
                    novaView.nome = anfitriao.nome!
                    novaView.preco = "R$: \(String(format: "%.2f" , anfitriao.preco))"
                    novaView.distancia = "\(String(anfitriao.distancia)) Km"
                    novaView.classificacao = Double(anfitriao.classificacao)
                    novaView.foto = anfitriao.foto!
                }
            }
        }
        
    }

}
