//
//  MainViewController.swift
//  RandomizerApp
//
//  Created by MikhaiL on 02.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setValue(for randomNumber: RandomNumber)
}

final class MainViewController: UIViewController {
    
    @IBOutlet private var minimumValueLabel: UILabel!
    @IBOutlet private var maximumValueLabel: UILabel!
    @IBOutlet private var randomValueLabel: UILabel!
    @IBOutlet private var getRandomNumberButton: UIButton!
    
    private var randomNumber = RandomNumber(minimumValue: 0, maximumValue: 100) {
        didSet {
            minimumValueLabel.text = randomNumber.minimumValue.formatted()
            maximumValueLabel.text = randomNumber.maximumValue.formatted()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {
            return
        }
        guard let settingVC = navigationVC.topViewController as? SettingViewController else {
            return
        }
        settingVC.randomNumber = randomNumber
        settingVC.delegate = self
    }
    
    @IBAction private func getRandomNumberButtonTapped() {
        randomValueLabel.text = randomNumber.getRandom.formatted()
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setValue(for randomNumber: RandomNumber) {
        self.randomNumber = randomNumber
    }
}
