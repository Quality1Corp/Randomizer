//
//  MainViewController.swift
//  RandomizerApp
//
//  Created by MikhaiL on 02.04.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet private var minimumValueLabel: UILabel!
    @IBOutlet private var maximumValueLabel: UILabel!
    @IBOutlet private var randomValueLabel: UILabel!
    @IBOutlet private var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.minimumValue = minimumValueLabel.text
        settingVC.maximumValue = maximumValueLabel.text
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        guard let settingVC = segue.source as? SettingViewController else { return }
        minimumValueLabel.text = settingVC.minimumValueTF.text
        maximumValueLabel.text = settingVC.maximumValueTF.text
    }
    
    @IBAction private func getRandomNumberButtonTapped() {
        
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }
}
