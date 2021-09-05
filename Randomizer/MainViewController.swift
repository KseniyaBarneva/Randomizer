//
//  MainViewController.swift
//  Randomizer
//
//  Created by Ксения on 04.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    @IBOutlet weak var randomValueLabel: UILabel!
    @IBOutlet weak var getRandomNumberButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 15
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {
            return
        }
        settingsVC.minValue = minimumValueLabel.text
        settingsVC.maxValue = maximumValueLabel.text
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else {
            return }
        minimumValueLabel.text = settingsVC.minimumTextField.text
        maximumValueLabel.text = settingsVC.maximumTextField.text
    }
    
    @IBAction func getRandomNumberButtonTapped() {
        let minimunNumber = Int(String(minimumValueLabel.text ?? "")) ?? 0
        let maximumNumber = Int(String(maximumValueLabel.text ?? "")) ?? 100
        randomValueLabel.text = String(Int.random(in:minimunNumber...maximumNumber))
    }
    
}

