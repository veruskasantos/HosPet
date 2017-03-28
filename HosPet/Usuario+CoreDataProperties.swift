//
//  Usuario+CoreDataProperties.swift
//  HosPet
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario");
    }

    @NSManaged public var nome: String?
    @NSManaged public var preco: Float
    @NSManaged public var distancia: Float
    @NSManaged public var classificacao: Float
    @NSManaged public var foto: String?

}
