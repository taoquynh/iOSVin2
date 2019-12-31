//
//  CellList.swift
//  Custom
//
//  Created by Taof on 12/31/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class CellList: UITableViewCell {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "tu-vi")
        return imageView
    }()
    
    let dateTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thứ 4, 1 Tháng 1"
        return label
    }()
    
    let subjectLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Tết Dương lịch"
        label.font = UIFont.systemFont(ofSize: 28)
        return label
    }()
    
    func setupLayout(){
        self.addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(dateTimeLabel)
        containerView.addSubview(subjectLabel)
        
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 4).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -4).isActive = true
        
        photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        photoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: photoImageView.heightAnchor, multiplier: 1).isActive = true
        
        dateTimeLabel.topAnchor.constraint(equalTo: photoImageView.topAnchor, constant: 16).isActive = true
        dateTimeLabel.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 16).isActive = true
        
        subjectLabel.topAnchor.constraint(equalTo: dateTimeLabel.bottomAnchor, constant: 8).isActive = true
        subjectLabel.leadingAnchor.constraint(equalTo: dateTimeLabel.leadingAnchor, constant: 0).isActive = true
        subjectLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16).isActive = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setupLayout()
    }
    
}
