//
//  SettingsViewController.swift
//  PlanYorDay
//
//  Created by Volha Furs on 26.01.23.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
        
    }
    
    private func setUpUI() {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "mainBackground_ic")
        backgroundImage.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        view.addSubview(backgroundImage)
        backgroundImage.isUserInteractionEnabled = true
        
    }

}
