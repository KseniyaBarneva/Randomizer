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
    
    @IBAction func getRandomNumberButtonTapped() {
        let minimunNumber = Int(String(minimumValueLabel.text ?? "")) ?? 0
        let maximumNumber = Int(String(maximumValueLabel.text ?? "")) ?? 100
        randomValueLabel.text = String(Int.random(in:minimunNumber...maximumNumber))
    }
}

