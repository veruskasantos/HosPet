//
//  Anfitriao+CoreDataProperties.swift
//  HosPet
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 Veruska. All rights reserved.
//

import Foundation
import CoreData


extension Anfitriao {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Anfitriao> {
        return NSFetchRequest<Anfitriao>(entityName: "Anfitriao");
    }

    @NSManaged public var classificacao: Float
    @NSManaged public var distancia: Float
    @NSManaged public var foto: String?
    @NSManaged public var nome: String?
    @NSManaged public var preco: Float
    @NSManaged public var criancas: Int16
    @NSManaged public var descricao: String?
    @NSManaged public var ambiente: String?
    @NSManaged public var latitude: String?
    @NSManaged public var longitude: String?
    @NSManaged public var recebe: NSSet?

}

// MARK: Generated accessors for recebe
extension Anfitriao {

    @objc(addRecebeObject:)
    @NSManaged public func addToRecebe(_ value: Animal)

    @objc(removeRecebeObject:)
    @NSManaged public func removeFromRecebe(_ value: Animal)

    @objc(addRecebe:)
    @NSManaged public func addToRecebe(_ values: NSSet)

    @objc(removeRecebe:)
    @NSManaged public func removeFromRecebe(_ values: NSSet)

}
