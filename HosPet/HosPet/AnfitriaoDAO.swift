//
//  AnfitriaoDAO.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


class AnfitriaoDAO {
    
    // 1 Adicionar
    static func adicionar (_ anfitriao: Anfitriao) -> Bool {
        
        return CoreDataManager.inserir(anfitriao)
    }
    // 2 Remover
    static func remover (_ anfitriao: Anfitriao) -> Bool {
        
        return CoreDataManager.delete(anfitriao)
    }
    
    // 3 Buscar
    static func buscarTodos() -> [Anfitriao] {
        
        var results = [Anfitriao]()
        
        let request: NSFetchRequest<Anfitriao> = Anfitriao.fetchRequest()
        
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "distancia", ascending: true),
            NSSortDescriptor(key: "classificacao", ascending: false)
        ]
        
        // Busca específica precisa definir predicate na request
        
        
        do {
            
            try results = CoreDataManager.getContext().fetch(request)
            
        } catch let error {
            
            print("Não foi possível realizar a busca por Anfitrião. Erro: \(error)")
        }
        
        return results
    }
    
    // Listagem
    static func getAnfitriao() -> [Anfitriao]{
        return self.buscarTodos()
    }
}
