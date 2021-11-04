//
//  SuggestionViewController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//

import UIKit

class SuggestionViewController: UIViewController {
    
    var parameters : [String] = []
    var activities = [Activity]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Aca va la activity sugerida"
        getActivityData()
    }
   
    private func getActivityData(){
        ActivitiesManager.shared.getActivities { activities in
            if !activities.isEmpty{
                self.activities.removeAll()
                self.activities.append(activities.first!)
            }
        }
    }
    
}
