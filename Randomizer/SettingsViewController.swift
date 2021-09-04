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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tappedCancelButton() {
        dismiss(animated: true)
    }
}
