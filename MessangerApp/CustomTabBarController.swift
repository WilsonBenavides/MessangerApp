//
//  CustomTabBarController.swift
//  MessangerApp
//
//  Created by willix on 21/06/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup our custom view controllers
        let layout = UICollectionViewFlowLayout()
        let friendsController = FriendsController(collectionViewLayout: layout)
        let recentMessagesNavController = UINavigationController(rootViewController: friendsController)
        recentMessagesNavController.tabBarItem.title = "Recent"
        recentMessagesNavController.tabBarItem.image = UIImage(named: "recent")
        
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = "Calls"
        navController.tabBarItem.image = UIImage(named: "calls")
        
        
        
        viewControllers = [recentMessagesNavController, navController]
    }
}
