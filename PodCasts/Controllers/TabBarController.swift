//
//  TabBarController.swift
//  PodCasts
//
//  Created by Anna Guo on 4/29/19.
//  Copyright © 2019 Anna Guo. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().prefersLargeTitles = true
        tabBar.tintColor = .purple
        

        viewControllers = [
            generateNavControllers(with: PodcastCastController(), title: "Cast", image: UIImage(named: "cast")!),
            generateNavControllers(with: ViewController(), title: "About", image: UIImage(named: "favorites")!)
        ]
    }
    
    fileprivate func generateNavControllers(with rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        rootViewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
    
}
