//
//  Friend+CoreDataProperties.swift
//  MessangerApp
//
//  Created by willix on 3/06/18.
//  Copyright © 2018 willix. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Friend {

    @NSManaged var name: String?
    @NSManaged var profileImageName: String?
    @NSManaged var messages: NSSet?

}
