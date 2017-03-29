//
//  MeuPerfilViewController.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class MeuPerfilViewController: UIViewController {
   
    @IBOutlet weak var detalhesPerfil: UIView!

    @IBOutlet weak var galeriaPerfil: UIView!
    
    @IBAction func opcoesMeuPerfil(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            detalhesPerfil.isHidden = false
            galeriaPerfil.isHidden = true
        case 1:
            detalhesPerfil.isHidden = true
            galeriaPerfil.isHidden = false
        default:
            detalhesPerfil.isHidden = false
            galeriaPerfil.isHidden = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
