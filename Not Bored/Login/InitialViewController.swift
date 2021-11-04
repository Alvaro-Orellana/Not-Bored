//
//  InitialViewController.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//

import UIKit

class InitialViewController: UIViewController {
    
    
    
    

    @IBOutlet weak var participantsTextField: UITextField!
    var inputNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        participantsTextField.delegate = self
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        let tabBarController = TabBarController()
        self.present(tabBarController, animated: true)

    }
    
    @IBAction func termsAndConditionsPressed(_ sender: UIButton) {
        let termsAndConditionsVC = TermsAndConditionsViewController(nibName: "TermsAndConditionsViewController", bundle: nil)
        self.show(termsAndConditionsVC, sender: self)
    }
  

}


extension InitialViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.endEditing(true)
//        print("textFieldShouldReturn called")
//        return true
//    }
//    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing called")

        if textField.text != "" {
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text, let input = Int(text) {
            
        }
    }
}
