//
//  ViewController.swift
//  RandomizerApp
//
//  Created by MikhaiL on 02.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    @IBAction func getRandomNumberButtonTapped() {
        
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(minimumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
    
}

