//
//  TabBarController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 04/11/2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modalPresentationStyle = .fullScreen
        
        // activities ViewController
        let activitiesVC = ActivitiesViewController()
        activitiesVC.tabBarItem = UITabBarItem(title: "Activities",
                                               image: UIImage(systemName: "list.bullet.indent"),
                                               tag: 0)
        // suggestion ViewController
        let randomActivityVC = RandomActivityViewController()
        randomActivityVC.tabBarItem = UITabBarItem(title: "Random",
                                               image: UIImage(systemName: "shuffle"),
                                               tag: 1)
        
        //Navigation controller
        let activitiesNC = UINavigationController(rootViewController: activitiesVC)
        let suggestionNC = UINavigationController(rootViewController: randomActivityVC)
        
        //Present…
        self.viewControllers = [activitiesNC, suggestionNC]
        
        
    }
    
    
    
    
}
