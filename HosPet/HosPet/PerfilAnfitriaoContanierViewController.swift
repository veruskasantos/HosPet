//
//  PerfilAnfitriaoContanierViewController.swift
//  HosPet
//
//  Created by Student on 3/30/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class PerfilAnfitriaoContanierViewController: UIViewController {

    @IBOutlet weak var animaisLabel: UILabel!
    @IBOutlet weak var ambienteLabel: UILabel!
    @IBOutlet weak var qntCriancasLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UITextView!
    
    var animais =  String()
    var tipoAmbiente = String()
    var qntCriancas = Int16()
    var descricao = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animaisLabel.text = "Cachorro Gato"
        ambienteLabel.text = tipoAmbiente
        qntCriancasLabel.text = String(qntCriancas)
        descricaoLabel.text = descricao
        print(qntCriancas)
       // print(ambienteLabel.text)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.reloadInputViews()
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
