//
//  Message+CoreDataProperties.swift
//  MessangerApp
//
//  Created by willix on 22/06/18.
//  Copyright © 2018 willix. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Message {

    @NSManaged var date: NSDate?
    @NSManaged var text: String?
    @NSManaged var isSender: NSNumber?
    @NSManaged var friend: Friend?

}
