//
//  Animal+CoreDataProperties.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


extension Animal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Animal> {
        return NSFetchRequest<Animal>(entityName: "Animal");
    }

    @NSManaged public var nome: String?
    @NSManaged public var cuidadoPor: Anfitriao?

}
