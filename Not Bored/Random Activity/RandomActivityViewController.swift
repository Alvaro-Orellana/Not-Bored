//
//  RandomActivityViewController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 04/11/2021.
//

import UIKit

class RandomActivityViewController: UIViewController {

    @IBOutlet weak var activityTitle: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var participantsQtyLabel: UILabel!
    @IBOutlet weak var priceTypeLabel: UILabel!
    @IBOutlet weak var activityTypeLabel: UILabel!
    @IBOutlet weak var activityIcon: UIImageView!
    
    //var parameters: [String] = []
    //var activity: Activity?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Random"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getRandomActivity()
    }
    
  
   
    private func getRandomActivity() {
        ActivitiesManager.shared.getRandomActivity() { [weak self] activity in
            guard let self = self else {return}
            
            if let activity = activity {
                
                self.activityTitle.text = activity.activity
                self.participantsQtyLabel.text = String(activity.participants)
                self.priceTypeLabel.text = self.calculatePriceTypeBy(priceRange: activity.price)
                self.activityTypeLabel.text = activity.activity
                self.activityIcon.image = UIImage(systemName: "list") // Make dinamic
                self.containerView.isHidden = false
            }
        }
        
     
        
    }
    
    
    
    private func calculatePriceTypeBy(priceRange:Double) -> String{
        "High"
    }



}
