//
//  LoginViewController.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBAction func autenticarCredenciais(_ sender: Any) {
        
        // Recuperar valores
        let email = emailTextField.text
        let senha = senhaTextField.text
        
        // Recuperar usuário do banco
        var result = Usuario()
        
        let request: NSFetchRequest<Usuario> = Usuario.fetchRequest()
        
        // Busca específica precisa definir predicate na request
        request.predicate = NSPredicate(format: "email == %@", email!)
        
        do {
            
            var results = try CoreDataManager.getContext().fetch(request)
            
            if let firstResult = results.first {
                
                // Validar credenciais
                if senha == firstResult.senha{
                    // Voltar para listagem
                    navigationController?.popViewController(animated: true)
                    
                } else {
                    
                    // alert
                    let alertController = UIAlertController(title: "Erro ao Entrar", message: "Senha Incorreta! \n Tente Novamente", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "Voltar", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                }
            } else {
                
                let alertController = UIAlertController(title: "Erro ao Entrar", message: "Usuário não encontrado, por favor cadastre-se!", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Voltar", style: UIAlertActionStyle.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            }
        } catch let error {
            
            // alertas
            
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
