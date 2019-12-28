//
//  FruitView.swift
//  DemoScrollView
//
//  Created by Taof on 12/28/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class FruitView: UIView {
    
    var imageView = UIImageView()
    var nameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.frame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        nameLabel.frame = CGRect(x: 0, y: self.bounds.height - 200, width: self.bounds.size.width, height: 50)
        
        self.addSubview(imageView)
        self.addSubview(nameLabel)
        
        imageView.contentMode = .scaleAspectFit
        nameLabel.textAlignment = .center
        nameLabel.font = .boldSystemFont(ofSize: 40)
        nameLabel.textColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
