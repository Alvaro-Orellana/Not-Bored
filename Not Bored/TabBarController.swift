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
        // random ViewController
        let randomActivityVC = RandomActivityViewController()
        randomActivityVC.tabBarItem = UITabBarItem(title: "Random",
                                               image: UIImage(systemName: "shuffle"),
                                               tag: 1)
        
        //Navigation controllers
        let activitiesNC = UINavigationController(rootViewController: activitiesVC)
        let randomNC = UINavigationController(rootViewController: randomActivityVC)
        
        //Present
        self.viewControllers = [activitiesNC, randomNC]
        
        
    }
    
    
    
    
}
