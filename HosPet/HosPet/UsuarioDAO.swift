//
//  UsuarioDAO.swift
//  HosPet
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


class UsuarioDAO {
    
    // 1 Adicionar
    static func adicionar (_ usuario: Usuario) -> Bool {
        
        return CoreDataManager.inserir(usuario)
    }
    // 2 Remover
    static func remover (_ usuario: Usuario) -> Bool {
        
        return CoreDataManager.delete(usuario)
    }
    
    // 3 Buscar
    static func buscarTodos() -> [Usuario] {
        
        var results = [Usuario]()
        
        let request: NSFetchRequest<Usuario> = Usuario.fetchRequest()
        
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "nome", ascending: true)
        ]
        
        // Busca específica precisa definir predicate na request
        
        
        do {
            
            try results = CoreDataManager.getContext().fetch(request)
            
        } catch let error {
            
            print("Não foi possível realizar a busca por Usuario. Erro: \(error)")
        }
        
        return results
    }
    
    // Listagem
    static func getUsuarios() -> [Usuario]{
        return self.buscarTodos()
    }
}
















