//
//  ActivitiesViewController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//

import UIKit

class ActivitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        setupNavigationBar()
    }


    private func setupNavigationBar() {
        title = "Activities"
 
    }

    

}

extension ActivitiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
  
}

extension ActivitiesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped a row")
        // TODO: Navigate to selected activity
       
        // navigate to suggestion ViewController
        let suggestionVC = SuggestionViewController(nibName: "SuggestionViewController", bundle: nil)
        navigationController?.pushViewController(suggestionVC, animated: true)
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
}
