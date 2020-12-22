//
//  SwipingController.swift
//  SwipingControllerProgrammaticUI
//
//  Created by Sebastian Sciuba on 19/12/2020.
//

import UIKit

class SwipingController : UICollectionViewController,UICollectionViewDelegateFlowLayout {
   
    private let reuseIdentifier = "Cell"
    
    let previousBotton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(handlePreviousButton), for: .touchUpInside)
        return button
    }()
    
    @objc func handlePreviousButton() {
        print("Previous button pressed BC")
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

//    MARK: - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureBottomControllers()
        registerColectionView()
        
        collectionView.isPagingEnabled = true

    }
    
    func registerColectionView() {
        self.collectionView.register(PageCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
//    MARK: - Configure Buttons
    
    func configureBottomControllers() {
        let bottomControlStackView = UIStackView(arrangedSubviews: [previousBotton,pageControl,nextButton])
        view.addSubview(bottomControlStackView)
        
        bottomControlStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlStackView.distribution = .fillEqually
        bottomControlStackView.axis = .horizontal
        bottomControlStackView.backgroundColor = .systemGray
        
        NSLayoutConstraint.activate([
            bottomControlStackView.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor),
            bottomControlStackView.leadingAnchor.constraint(equalTo: collectionView.leadingAnchor),
            bottomControlStackView.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor),
            bottomControlStackView.heightAnchor.constraint(equalTo: collectionView.heightAnchor, multiplier: 0.1)
        ])
    }
//    MARK: - Collection View
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        collectionViewLayout.invalidateLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
}



//https://www.youtube.com/watch?v=WCECFfelSHk e3
// https://www.youtube.com/watch?v=TK0mxO469ok e6
// https://www.youtube.com/watch?v=1UQ-Y1-FNMQ e7
