//
//  AddNewBoardView.swift
//  PlanYorDay
//
//  Created by Volha Furs on 1.02.23.
//


import Foundation
import UIKit

class AddNewBoardView: UIView {
    
    weak var deledate: NewBoaedAddedDelegate?
    
    private let enterBoardNameLabel: UILabel
    private let boardNameTextField: UITextField

    private let saveButton: UIButton
    private let image: UIImage
    private var imageArray: Array<Any>


    
    override init(frame: CGRect) {
        self.enterBoardNameLabel = UILabel()
        self.boardNameTextField = UITextField()

        self.saveButton = UIButton()
        self.image = UIImage()
        self.imageArray = Array()
   
    
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        enterBoardNameLabel.translatesAutoresizingMaskIntoConstraints = false
        boardNameTextField.translatesAutoresizingMaskIntoConstraints = false
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        
        enterBoardNameLabel.text = "Please add the Board name below"
        enterBoardNameLabel.lineBreakMode = .byWordWrapping
        enterBoardNameLabel.numberOfLines = 2
        enterBoardNameLabel.textColor = #colorLiteral(red: 0.5463457204, green: 0.3312081389, blue: 0.1725905054, alpha: 0.8122325165)
        enterBoardNameLabel.textAlignment = .center
        enterBoardNameLabel.backgroundColor = .clear
        enterBoardNameLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 20.0)
        addSubview(enterBoardNameLabel)
        
        boardNameTextField.placeholder = "Board name"
        boardNameTextField.textAlignment = .center
        boardNameTextField.backgroundColor = .white
        
        addSubview(boardNameTextField)
        
        saveButton.setTitle("Add", for: .normal)
        saveButton.setTitleColor(.white, for: .normal)
        saveButton.titleLabel?.font = UIFont(name:"HelveticaNeue-Bold", size: 22.0)
        saveButton.backgroundColor = #colorLiteral(red: 0.5463457204, green: 0.3312081389, blue: 0.1725905054, alpha: 0.8122325165)
        saveButton.addTarget(self, action: #selector(onSaveButton), for: .touchUpInside)
        addSubview(saveButton)
        
        imageArray = [UIImage(named: "ic_1")!,UIImage(named: "ic_2")!,UIImage(named: "ic_3")!,UIImage(named: "ic_4")!,UIImage(named: "ic_5")!,UIImage(named: "ic_6")!,UIImage(named: "ic_7")!]
    }
    
    @objc func onSaveButton() {
        print("bla")
        self.deledate?.onAddButtonClick()
    }
    
    override func layoutSubviews() {
        enterBoardNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        enterBoardNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        enterBoardNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        enterBoardNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        
        boardNameTextField.leadingAnchor.constraint(equalTo: enterBoardNameLabel.leadingAnchor).isActive = true
        boardNameTextField.trailingAnchor.constraint(equalTo: enterBoardNameLabel.trailingAnchor).isActive = true
        boardNameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        boardNameTextField.topAnchor.constraint(equalTo: enterBoardNameLabel.bottomAnchor, constant: 20).isActive = true
        boardNameTextField.layer.cornerRadius = 25
    
        saveButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.4).isActive = true
        saveButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        saveButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        saveButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        saveButton.layer.cornerRadius = 20
    }
}


