//
//  Anfitriao+CoreDataClass.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


public class Anfitriao: NSManagedObject {

    convenience init() {
        
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Anfitriao", in: context)
        
        self.init(entity: entity!, insertInto: context)
    }
}
