//
//  BoardViewController.swift
//  PlanYorDay
//
//  Created by Volha Furs on 26.01.23.
//

import UIKit

protocol AddNewBoardDelegate: AnyObject {
    func onButtonClick()
}
protocol NewBoaedAddedDelegate: AnyObject {
    func onAddButtonClick()
}

class HomeViewController: UIViewController {
    var blurEffect = UIBlurEffect()
    var blurEffectView = UIVisualEffectView()
    let backgroundImage = UIImageView()
    var homeView = HomeView()
    var addNewBoardView = AddNewBoardView()

    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.delegate1 = self
        addNewBoardView.deledate = self
        setUpUI()
        setUpAnchors()
        generateMenuView()
        
    }
    
    private func setUpUI() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.image = UIImage(named: "mainBackground_ic")
        backgroundImage.contentMode = .scaleAspectFill
        view.addSubview(backgroundImage)
    }
    
    private func setUpAnchors() {
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImage.isUserInteractionEnabled = true
    }
    
    private func generateMenuView() {
        view.addSubview(homeView)
        homeView.translatesAutoresizingMaskIntoConstraints = false
        homeView.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 0).isActive = true
        homeView.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: 50).isActive = true
        homeView.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: -10).isActive = true
        homeView.heightAnchor.constraint(equalTo: backgroundImage.heightAnchor, multiplier: 0.4).isActive = true
        homeView.layer.cornerRadius = 50
        homeView.backgroundColor = .white
    }
    
    private func generateNewBoardView() {
        blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(blurEffectView)
        
        addNewBoardView.backgroundColor = #colorLiteral(red: 1, green: 0.7994181957, blue: 0.5626861472, alpha: 0.9382635457)
        view.addSubview(addNewBoardView)
        addNewBoardView.translatesAutoresizingMaskIntoConstraints = false
       
        addNewBoardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        addNewBoardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        addNewBoardView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        addNewBoardView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        addNewBoardView.layer.cornerRadius = 30
//        addNewBoardView.layer.borderColor = #colorLiteral(red: 0.8435930571, green: 0.5595294355, blue: 0.1108231033, alpha: 1)
//        addNewBoardView.layer.borderWidth = 3
    }
}

extension HomeViewController: AddNewBoardDelegate, NewBoaedAddedDelegate {
    func onAddButtonClick() {
        addNewBoardView.removeFromSuperview()
        blurEffectView.removeFromSuperview()
    }
    
    func onButtonClick() {
        generateNewBoardView()
        print("test3")
    }
}
