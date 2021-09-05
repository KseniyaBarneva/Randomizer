//
//   SettingsViewController.swift
//  Randomizer
//
//  Created by Ксения on 04.09.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var minimumTextField: UITextField!
    @IBOutlet weak var maximumTextField: UITextField!
    
    var minValue: String!
    var maxValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumTextField.text = minValue
        maximumTextField.text = maxValue
    }
    @IBAction func tappedCancelButton() {
        dismiss(animated: true)
    }
}
