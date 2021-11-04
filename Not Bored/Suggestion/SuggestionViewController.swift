//
//  SuggestionViewController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//

import UIKit

class SuggestionViewController: UIViewController {
    
    var activityType: String!
    
    
    @IBOutlet weak var activityTitleLabel: UILabel!
    @IBOutlet weak var participantsNumberLabel: UILabel!
    @IBOutlet weak var priceTypeLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        title = activityType.capitalized
        getActivity()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = false

    }
    
   
    private func getActivity(){
        ActivitiesManager.shared.getActivity(type: activityType) { [weak self] activity in
            guard let self = self, let activity = activity else {
                print("Error getting activity in SuggestionViewController")
                return
            }
            
            print(activity)
            self.activityTitleLabel.text = activity.activity
            self.participantsNumberLabel.text = String(activity.participants)
            self.priceTypeLabel.text = String(activity.price)
          
        }
    }
    
}
