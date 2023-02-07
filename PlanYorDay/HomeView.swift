//
//  HomeView.swift
//  PlanYorDay
//
//  Created by Volha Furs on 30.01.23.
//

import Foundation
import UIKit

class HomeView: UIView {
    weak var delegate1: AddNewBoardDelegate?
    
    private let helloLabel: UILabel
    private let orangeView: UIView
    
    private let addBoardButton: UIButton
    private let addBoardLabel: UILabel
    
    override init(frame: CGRect) {
 
        self.helloLabel = UILabel()
        self.orangeView = UIView()
      
        self.addBoardButton = UIButton()
        self.addBoardLabel = UILabel()
        
    
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        addBoardButton.translatesAutoresizingMaskIntoConstraints = false
        addBoardLabel.translatesAutoresizingMaskIntoConstraints = false
        
        orangeView.backgroundColor = #colorLiteral(red: 1, green: 0.606755513, blue: 0.3126914386, alpha: 0.8122325165)
        addSubview(orangeView)
        
        helloLabel.text = "Planner for dayly use to optimize the schedule"
        helloLabel.textColor = .white
        helloLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 22.0)
        helloLabel.lineBreakMode = .byWordWrapping
        helloLabel.numberOfLines = 2
        orangeView.addSubview(helloLabel)
        
        addBoardButton.setTitle("Add a new Board", for: .normal)
        addBoardButton.setTitleColor(.white, for: .normal)
        addBoardButton.titleLabel?.font = UIFont(name:"HelveticaNeue-Italic", size: 15.0)
        addBoardButton.backgroundColor = #colorLiteral(red: 0.5463457204, green: 0.3312081389, blue: 0.1725905054, alpha: 0.8122325165)
        addBoardButton.addTarget(self, action: #selector(onAddBordButton), for: .touchUpInside)
        addBoardButton.setImage(UIImage(systemName: "text.badge.plus"), for: .normal)
        addBoardButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        addBoardButton.tintColor = .white
        addSubview(addBoardButton)
        
        addBoardLabel.text = "Easy Boaed creation"
        addBoardLabel.textColor = .black
        addBoardLabel.font = UIFont(name:"HelveticaNeue-Italic", size: 15.0)
        addBoardLabel.backgroundColor = .yellow
        addBoardLabel.textAlignment = .center
        addSubview(addBoardLabel)
    }
    
    @objc func onAddBordButton() {
        print("In Menu Home View")
        self.delegate1?.onButtonClick()
    }
    
    override func layoutSubviews() {
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        addBoardButton.translatesAutoresizingMaskIntoConstraints = false
        addBoardLabel.translatesAutoresizingMaskIntoConstraints = false
        
        orangeView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        orangeView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        orangeView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        orangeView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        orangeView.layer.cornerRadius = 50
        
        helloLabel.centerXAnchor.constraint(equalTo: orangeView.centerXAnchor, constant: -25).isActive = true
        helloLabel.bottomAnchor.constraint(equalTo: orangeView.bottomAnchor, constant: -20).isActive = true
        helloLabel.widthAnchor.constraint(equalToConstant: 260).isActive = true
        helloLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        addBoardButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -25).isActive = true
        addBoardButton.widthAnchor.constraint(equalToConstant: 260).isActive = true
        addBoardButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addBoardButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        addBoardButton.layer.cornerRadius = 25
        
        addBoardLabel.centerXAnchor.constraint(equalTo: addBoardButton.centerXAnchor).isActive = true
        addBoardLabel.widthAnchor.constraint(equalToConstant: 260).isActive = true
        addBoardLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addBoardLabel.bottomAnchor.constraint(equalTo: addBoardButton.topAnchor, constant: -20).isActive = true
    }
    
}

