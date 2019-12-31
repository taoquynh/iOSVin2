//
//  TableViewCell.swift
//  iOSControl
//
//  Created by Taof on 4/19/19.
//  Copyright © 2019 Tào Quỳnh . All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var checkImageView: UIImageView!
    
    // B1: Khai báo một closure
    // B2: dòng 42
    // B3: Trong cellForRow At Indexpath file TableViewController
    var checkAction: (() -> Void)?
    var truyenFoodName: ((String) -> Void)?
    
    var food: Food?{
        didSet{
            print("Gán food")
            if let food = food{
                photoImageView.image = UIImage(named: food.imageName)
                titleLabel.text = food.name
                descriptionLabel.text = food.description
//                if food.isSelected{
//                    checkImageView.image = UIImage(named: "checked")
//                }else{
//                    checkImageView.image = UIImage(named: "unchecked")
//                }

                // if else rut gon
                checkImageView.image = UIImage(named: food.isSelected ? "checked" : "unchecked")
            }
        }
    }
    
    @objc func tapAction(){
        // B2: gọi closure
        // ? để nếu không có chỗ nào đăng kí closure này thì thôi không gọi đến closure
        checkAction?()
        
        // ?? neu food.name nil thi lay gia tri mac dinh
        truyenFoodName?(food?.name ?? "Khong co ten")
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()

        photoImageView.layer.masksToBounds = true
        photoImageView.layer.cornerRadius = 10
//        photoImageView.layer.cornerRadius = photoImageView.frame.size.height/2
        
        // check isUserInteractionEnabled = true de xay ra su kien Tap
        checkImageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        checkImageView.addGestureRecognizer(tapGesture)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
