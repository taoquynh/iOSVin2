//
//  CellColection.swift
//  Custom
//
//  Created by Taof on 12/31/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class CellColection: UITableViewCell {
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
   
    var myParent = UIViewController()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        collectionView.backgroundColor = .white
        configCollectionView()
    }
    
    func configCollectionView(){
        self.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: "CollectionCell")
        
        let layout = UICollectionViewFlowLayout()
        collectionView.setCollectionViewLayout(layout, animated: true)
        layout.scrollDirection = .horizontal
    }
    
}

extension CellColection: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let heigt: CGFloat = self.bounds.height
        
        return CGSize(width: heigt, height: heigt)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let secondVC = SecondViewController()
        
        myParent.present(secondVC, animated: true, completion: nil)
    }
}
