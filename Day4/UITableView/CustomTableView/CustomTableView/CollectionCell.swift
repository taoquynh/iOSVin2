//
//  CollectionCell.swift
//  Custom
//
//  Created by Taof on 12/31/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
    // khởi tạo containerView
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor.blue
        return view
    }()
    
    // khởi tạo imageView
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "tu-vi")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // khởi tạo title
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tử Vi Hằng Ngày"
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    func setupLayout(){
        addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(titleLabel)
        
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 4).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -4).isActive = true
        
        titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -4).isActive = true
        
        photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 0).isActive = true
        photoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        photoImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
    }
    
    
    
    // khởi tạo cell
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
