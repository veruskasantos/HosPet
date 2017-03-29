//
//  AdicionarVagaViewController.swift
//  HosPet
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class AdicionarVagaViewController: UIViewController {

    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var precoTextField: UITextField!
    
    @IBAction func adicionarVaga(_ sender: Any) {
    
        let nome = nomeTextField.text
        let preco = Float(precoTextField.text!)
        let distancia = Float(5.0)
        let classificacao = Float(0.0)
        let foto = "imagem-perfil-default"
        
        var anfitriao = Anfitriao()
        anfitriao.nome = nome
        anfitriao.preco = preco!
        anfitriao.distancia = distancia
        anfitriao.foto = foto
        anfitriao.classificacao = classificacao
        AnfitriaoDAO.adicionar(anfitriao)
        navigationController?.popViewController(animated: true)
        
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
