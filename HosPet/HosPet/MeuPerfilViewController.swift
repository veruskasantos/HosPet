//
//  MeuPerfilViewController.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import UIKit

class MeuPerfilViewController: UIViewController {
   
    @IBAction func selecionarFotoButton(_ sender: UIButton) {
        getImageFromPictureLibrary()
    }
    
    @IBOutlet weak var nomeUsuarioLabel: UILabel!
   
    @IBOutlet weak var qtdVagasLabel: UILabel!
    
    @IBOutlet weak var emailUsuarioLabel: UILabel!
    
    @IBOutlet weak var minhaFotoImageView: UIImageView!
    
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
            galeriaPerfil.isHidden = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detalhesPerfil.isHidden = false
        galeriaPerfil.isHidden = true
        nomeUsuarioLabel.text = "Leonardo Cordeiro"
        emailUsuarioLabel.text = "leonardo@gmail.com"
        qtdVagasLabel.text = "0"
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let imagePicker = UIImagePickerController()
    
    var imagePickedByUser: UIImage? {
        get {
            return minhaFotoImageView.image
        }
        
        set {
            minhaFotoImageView.image = newValue
        }
    }
}


extension MeuPerfilViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func getImageFromPictureLibrary() {
        
        imagePicker.delegate = self             // Definimos onde estão os métodos delegados
        imagePicker.sourceType = .photoLibrary  // Definimos a origem das imagens
        
        // Definimos os tipos de media a serem utilizados
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        
        // 3.2 Definimos se o usuário poderá editar a foto após escolhe-lá
        imagePicker.allowsEditing = false
        
        // 3.3 Apresentamos o ImagePicker para o usuário escolher a imagem
        present(imagePicker, animated: true, completion: nil)
    }
    
    // 4. Devemos implementar o método a seguir para definir o que fazer quando o usuário terminar de escolher a imagem
    // Esse método é chamado após o usuário confirmar a imagem escolhida
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // 4.1 Definimos a forma como a imagem vai renderizar dentro da ImageView
        minhaFotoImageView.contentMode = .scaleAspectFit
        
        // 4.2 Pegamos a imagem da camera e aplicamos na ImageView
        imagePickedByUser = info[UIImagePickerControllerOriginalImage] as! UIImage?
        
        // 4,3 Saimos do modo camera
        dismiss(animated: true, completion: nil)
    }
    
    // 5. Este método implementa o que acontece quando o usuário aperta o botão de Cancelar
    // Ele serve tanto para pegar imagem da biblioteca quanto para tirar foto com a camera
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Vamos apenas dispensar a tela de seleção de imagem ou de tirar foto
        dismiss(animated: true, completion: nil)
    }
    
    // 6. Pegando imagens utilizando a Camera
    func getImageFromCamera() {
        // 6.1 Conferimos se a camera está disponivel no device
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            // 6.2 Configuramos o imagePicker
            imagePicker.delegate = self         // Definimos onde estão os métodos delegados
            imagePicker.sourceType = .camera    // Definimos a origem das imagens
            
            // Definimos os tipos de media a serem utilizados
            imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .camera)!
            
            // 6.3 Definimos que não queremos editar a foto após tira-la
            imagePicker.allowsEditing = false
            
            // 6.4 Apresentamos o Image Picker para o usuário, vindo de baixo pra cima
            present(imagePicker, animated: true, completion: nil)
        } else {
            showNoCameraMessage()
        }
    }
    
    // EXTRA: Exibindo um alerta (pop-up)
    func showNoCameraMessage() {
        // Definimos o conteudo do alerta
        let title = "No Camera"
        let message = "Você não possui acesso a camera"
        
        // Criamos uma nova Alert Controller
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Criamos uma ação para nossa Alert Controller
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        // Adicionamos a ação na nossa Alert Controller
        alertVC.addAction(okAction)
        
        // Exibimos a Alert Controller
        present(alertVC, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
