//
//  BottomCell.swift
//  SwipingControllerProgrammaticUI
//
//  Created by Sebastian Sciuba on 19/12/2020.
//

import UIKit

class BottomCell : UICollectionViewCell {
    
    let previousBotton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handlePreviousButton), for: .touchUpInside)
        return button
    }()
    
    @objc func handlePreviousButton() {
        print("Previous Botton Pressed")
    }
    
    lazy var pageControl : UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.currentPageIndicatorTintColor = .white
        pc.pageIndicatorTintColor = .black
        return pc
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handleNextButton), for: .touchUpInside)

        return button
    }()
    @objc func handleNextButton() {
        print("Next Botton Pressed")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray
        
        configureViewComponents()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViewComponents() {
        let bottomControlStackView = UIStackView(arrangedSubviews: [previousBotton,pageControl,nextButton])
        addSubview(bottomControlStackView)
        
        bottomControlStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlStackView.distribution = .fillEqually
        bottomControlStackView.axis = .horizontal
        
        NSLayoutConstraint.activate([
            bottomControlStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomControlStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomControlStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            bottomControlStackView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
