//
//  SwipingController.swift
//  SwipingControllerProgrammaticUI
//
//  Created by Sebastian Sciuba on 19/12/2020.
//

import UIKit

class SwipingController : UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    let bottomContainer: BottomCell = {
        let view = BottomCell()
        return view
    }()
    
    private let reuseIdentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureBottomControllers()
        registerColectionView()
        
        collectionView.isPagingEnabled = true

    }
    func registerColectionView() {
        self.collectionView.register(PageCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    
    func configureBottomControllers() {
        view.addSubview(bottomContainer)
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        
    }
    
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
        
//        cell.backgroundColor = .blue
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
}
