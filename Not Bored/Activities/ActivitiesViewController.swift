//
//  ActivitiesViewController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//

import UIKit

class ActivitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let activities = ["Education", "Recreational", "Social","Diy",
                      "Charity", "Cooking", "Relaxation", "Music", "Busywork"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Activities"
    }

    

}

extension ActivitiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = activities[indexPath.row]
        return cell
    }
    
  
}

extension ActivitiesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // navigate to SuggestionViewController
        let suggestionVC = SuggestionViewController(nibName: "SuggestionViewController", bundle: nil)
        let selectedActivity = activities[indexPath.row]
        suggestionVC.activityType = selectedActivity.lowercased()
        
        navigationController?.pushViewController(suggestionVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
}
