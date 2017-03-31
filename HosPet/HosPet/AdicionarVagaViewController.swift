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
    
    @IBOutlet weak var latitudeTextField: UITextField!
    
    @IBOutlet weak var longitudeTextField: UITextField!
    
    @IBOutlet weak var criancasTextField: UITextField!
    
    @IBOutlet weak var ambienteTextField: UITextField!
    
    
    @IBOutlet weak var descricaoTextField: UITextField!
    
    var anfitriao = Anfitriao()
    
    
    @IBAction func adicionarVaga(_ sender: Any) {
    
        let nome = nomeTextField.text
        let preco = Float(precoTextField.text!)
        let latitude = latitudeTextField.text
        let longitude = longitudeTextField.text
        let qntCriancas = Int16(criancasTextField.text!)
        let ambiente = ambienteTextField.text
        let distancia = Float(5.0)
        let classificacao = Float(0.0)
        let foto = "imagem-perfil-default"
        let descricao = descricaoTextField.text
        
        anfitriao.nome = nome
        anfitriao.preco = preco!
        anfitriao.latitude = latitude
        anfitriao.longitude = longitude
        anfitriao.criancas = qntCriancas!
        anfitriao.ambiente = ambiente
        //anfitriao.animais
        anfitriao.distancia = distancia
        anfitriao.foto = foto
        anfitriao.descricao = descricao
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
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segueTeste"{
//            if let perfilAnfitriaoContainer = segue.destination as? PerfilAnfitriaoContanierViewController{
//                // perfilAnfitriaoContainer.animais = anfitriao.animais
//                perfilAnfitriaoContainer.tipoAmbiente = anfitriao.ambiente!
//                perfilAnfitriaoContainer.qntCriancas = anfitriao.criancas
//                perfilAnfitriaoContainer.descricao = anfitriao.descricao!
//
//            }
//        }
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
