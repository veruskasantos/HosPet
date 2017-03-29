//
//  Usuario+CoreDataClass.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


public class Usuario: NSManagedObject {

    convenience init() {
        
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Usuario", in: context)
        
        self.init(entity: entity!, insertInto: context)
    }
}
