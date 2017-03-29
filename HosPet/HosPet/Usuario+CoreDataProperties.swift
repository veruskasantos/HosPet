//
//  Usuario+CoreDataProperties.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario");
    }

    @NSManaged public var email: String?
    @NSManaged public var foto: String?
    @NSManaged public var senha: String?
    @NSManaged public var nome: String?

}
