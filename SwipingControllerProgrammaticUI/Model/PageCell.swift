//
//  PageCell.swift
//  SwipingControllerProgrammaticUI
//
//  Created by Sebastian Sciuba on 19/12/2020.
//

import UIKit

class PageCell : UICollectionViewCell {
        
    let imageView : UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        return image
    }()
    
    let lableView : UILabel = {
        let label = UILabel()
        label.backgroundColor = .red
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //    MARK: - VIEW Constraint
    
    func configureViewConstraint() {
        let topContainerView = UIView()
        addSubview(topContainerView)
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        topContainerView.backgroundColor = .green
        
        topContainerView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: topContainerView.widthAnchor, multiplier: 0.9).isActive = true
        imageView.heightAnchor.constraint(equalTo: topContainerView.heightAnchor, multiplier: 0.7).isActive = true

        
        let centerContainerView = UIView()
        addSubview(centerContainerView)
        centerContainerView.translatesAutoresizingMaskIntoConstraints = false
        centerContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        centerContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        centerContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        centerContainerView.heightAnchor.constraint(equalTo: heightAnchor,multiplier: 0.4).isActive = true
        centerContainerView.backgroundColor = .cyan
        
        centerContainerView.addSubview(lableView)
        lableView.translatesAutoresizingMaskIntoConstraints = false
        lableView.centerXAnchor.constraint(equalTo: centerContainerView.centerXAnchor).isActive = true
        lableView.centerYAnchor.constraint(equalTo: centerContainerView.centerYAnchor).isActive = true
        lableView.widthAnchor.constraint(equalTo: centerContainerView.widthAnchor, multiplier: 0.9).isActive = true
        lableView.heightAnchor.constraint(equalTo: centerContainerView.heightAnchor, multiplier: 0.9).isActive = true
        
//        let bottomContainerView = UIView()
//        addSubview(bottomContainerView)
//        bottomContainerView.translatesAutoresizingMaskIntoConstraints = false
//        bottomContainerView.topAnchor.constraint(equalTo: centerContainerView.bottomAnchor).isActive = true
//        bottomContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        bottomContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        bottomContainerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
//        bottomContainerView.backgroundColor = .red

    }
    
}
