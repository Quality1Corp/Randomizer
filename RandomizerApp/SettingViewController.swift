//
//  SettingViewController.swift
//  RandomizerApp
//
//  Created by MikhaiL on 02.04.2023.
//

import UIKit

final class SettingViewController: UIViewController {
    
    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    
    @IBAction private func cancelButton() {
        dismiss(animated: true)
    }
}
