//
//  CadastroUsuarioViewController.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class CadastroUsuarioViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var confirmarSenhaTextField: UITextField!
    
    @IBAction func cadastrarUsuario(_ sender: Any) {
        
        // Recuperar dados
        let nome = nomeTextField.text
        let email = emailTextField.text
        let senha = senhaTextField.text
        let confirmarSenha = confirmarSenhaTextField.text
        
        // Validar senha
        if senha == confirmarSenha {
            
            // Montar objeto
            let usuario = Usuario()
            usuario.nome = nome
            usuario.email = email
            usuario.foto = "imagem-perfil-default"
            usuario.senha = senha
            
            // salvar objeto
            UsuarioDAO.adicionar(usuario)
            
            // voltar para listagem
            navigationController?.popViewController(animated: true)
            navigationController?.popViewController(animated: true)
            
            // Remover vaga da lista
        } else {
        
            //alert
            let alertController = UIAlertController(title: "Erro ao Cadastrar", message: "As Senhas não conferem!", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Voltar", style: UIAlertActionStyle.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
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
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
