//
//  Usuario.swift
//  Hospet
//
//  Created by Student on 3/24/17.
//  Copyright © 2017 Enio Abrantes. All rights reserved.
//

import Foundation


class Usuario{
    
    let nome: String
    let imagemPerfil: String
    
    
    init(nome: String, imagemPerfil: String) {
        self.nome = nome
        
        
        if(imagemPerfil.isEmpty){
            self.imagemPerfil = "imagem-perfil-default"
        }else{
            self.imagemPerfil = imagemPerfil
        }
    }
}

class UsuarioDAOTESTE{
    
    static func getUsuarios() -> [Usuario]{
        return [Usuario(nome: "Francisco da Silva", imagemPerfil: ""),
                Usuario(nome: "Jose Santos",imagemPerfil: ""),
                Usuario(nome: "Joana D'Arc",imagemPerfil: "")
        ]
    }
    
}
