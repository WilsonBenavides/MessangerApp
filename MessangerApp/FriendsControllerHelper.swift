//
//  FriendsControllerHelper.swift
//  MessangerApp
//
//  Created by willix on 3/06/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit


//class Friend: NSObject {
//    
//    var name: String?
//    var profileImageName: String?
//}
//
//class Message: NSObject {
//    
//    var text: String?
//    var date: NSDate?
//    
//    var friend: Friend?
//}

import CoreData

extension FriendsController {    
    
    func setupData() {
        
        let delegate = UIApplication.sharedApplication().delegate as? AppDelegate
        
        if let context = delegate?.managedObjectContext {
            let mark = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: context) as! Friend
            
            mark.name = "Mark Zuckerberg"
            mark.profileImageName = "zuckprofile"
            
            let message = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: context) as! Message
            message.friend = mark
            message.text = "Hello, my name is Mark, Nice to meet you"
            message.date = NSDate()
            
            let steve = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: context) as! Friend
            steve.name = "Steve Jobs"
            steve.profileImageName = "steve_profile"
            
            let messageSteve = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: context) as! Message
            messageSteve.friend = steve
            messageSteve.text = "Apple create great iOs Devices for the world..."
            messageSteve.date = NSDate()
            
            do {
                try(context.save())
            } catch let err {
                print(err)
            }
            //messages = [message, messageSteve]
        }
        
        loadData()
    }
    
    func loadData() {
        
        let delegate = UIApplication.sharedApplication().delegate as? AppDelegate
        
        if let context = delegate?.managedObjectContext {
            
            let fetchRequest = NSFetchRequest(entityName: "Message")
            
            do {
                messages = try(context.executeFetchRequest(fetchRequest)) as? [Message]
            }catch let err {
                print(err)
            }
        }
    }
}
