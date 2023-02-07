//
//  ImageBoardCollectionViewCell.swift
//  PlanYorDay
//
//  Created by Volha Furs on 1.02.23.
//

import UIKit

class ImageBoardCollectionViewCell: UICollectionViewCell {
    
    var backIcon = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView(){
        backIcon.translatesAutoresizingMaskIntoConstraints = false
        addSubview(backIcon)
        
        backIcon.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backIcon.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backIcon.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backIcon.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.green.cgColor
    }
}
