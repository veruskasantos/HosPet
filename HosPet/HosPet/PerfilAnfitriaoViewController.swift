//
//  PerfilAnfitriaoViewController.swift
//  HosPet
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class PerfilAnfitriaoViewController: UIViewController {

    
    @IBOutlet weak var containerPerfil: UIView!
    
    @IBOutlet weak var containerAvaliacao: UIView!
    
    @IBOutlet weak var containerGaleria: UIView!
    
    @IBOutlet weak var containerLocal: UIView!
    
    //Alterando a exibicao dos containers do anfitriao
    @IBAction func opcoesPerfilBar(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            containerPerfil.isHidden = false
            containerAvaliacao.isHidden = true
            containerGaleria.isHidden = true
            containerLocal.isHidden = true
        case 1:
            
            containerPerfil.isHidden = true
            containerAvaliacao.isHidden = false
            containerGaleria.isHidden = true
            containerLocal.isHidden = true
        case 2:
            containerPerfil.isHidden = true
            containerAvaliacao.isHidden = true
            containerGaleria.isHidden = false
            containerLocal.isHidden = true
        case 3:
            containerPerfil.isHidden = true
            containerAvaliacao.isHidden = true
            containerGaleria.isHidden = true
            containerLocal.isHidden = false
        default:
            containerPerfil.isHidden = false
            containerAvaliacao.isHidden = true
            containerGaleria.isHidden = true
            containerLocal.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        containerPerfil.isHidden = false
        containerAvaliacao.isHidden = true
        containerGaleria.isHidden = true
        containerLocal.isHidden = true

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
