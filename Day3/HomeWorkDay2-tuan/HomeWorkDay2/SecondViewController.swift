//
//  SecondViewController.swift
//  HomeWorkDay2
//
//  Created by th on 12/27/19.
//  Copyright © 2019 th. All rights reserved.
//

import UIKit
import SnapKit
class SecondViewController: UIViewController {
    let containerView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let avatarImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "avatar")
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    let changeAvatarButton :UIButton = {
        let button = UIButton()
        button.setTitle("Đổi ảnh đại diện", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Họ và tên"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    let nameTextField : UITextField = {
        let textField = UITextField()
        textField.text = "Hàn Duy"
        textField.textColor = .black
        textField.layer.borderWidth = 1
        return textField
    }()
    let phoneLabel : UILabel = {
        let label = UILabel()
        label.text = "Số điện thoại"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    let phoneTextField : UITextField = {
        let textField = UITextField()
        textField.text = "0981043037"
        textField.textColor = .black
        textField.layer.borderWidth = 1
        return textField
    }()
    
    let locationLabel : UILabel = {
        let label = UILabel()
        label.text = "Địa chỉ"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    let locationTextField : UITextField = {
        let textField = UITextField()
        textField.text = "386 Lê Duẩn Đống Đa Hà Nội"
        textField.textColor = .black
        textField.layer.borderWidth = 1
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height / 2
        avatarImageView.clipsToBounds = true
    }
    func setupLayout() {
        //setup container view
        view.addSubview(containerView)
        containerView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(0)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(0)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(0)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(0)
        }
        
        
        //setup avatar
        containerView.addSubview(avatarImageView)
        avatarImageView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(containerView).offset(70)
            make.centerX.equalTo(containerView).offset(0)
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
        
        //setup change avatar
        containerView.addSubview(changeAvatarButton)
        changeAvatarButton.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(avatarImageView.snp.bottom).offset(20)
            make.centerX.equalTo(avatarImageView).offset(0)
        }
        //setup name label and text field
        containerView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(changeAvatarButton.snp.bottom).offset(30)
            make.centerX.equalTo(changeAvatarButton).offset(0)
            make.left.equalTo(containerView).offset(40)
        }
        
        containerView.addSubview(nameTextField)
        nameTextField.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.left.equalTo(containerView).offset(40)
            make.height.equalTo(40)
            make.centerX.equalTo(containerView)
        }
        //setup phone label and text field
        containerView.addSubview(phoneLabel)
        phoneLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(nameTextField.snp.bottom).offset(30)
            make.centerX.equalTo(nameTextField).offset(0)
            make.left.equalTo(containerView).offset(40)
        }
        
        containerView.addSubview(phoneTextField)
        phoneTextField.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(phoneLabel.snp.bottom).offset(10)
            make.left.equalTo(containerView).offset(40)
            make.height.equalTo(40)
            make.centerX.equalTo(containerView)
        }
        //setup location label and text field
        containerView.addSubview(locationLabel)
        locationLabel.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(phoneTextField.snp.bottom).offset(30)
            make.centerX.equalTo(phoneTextField).offset(0)
            make.left.equalTo(containerView).offset(40)
        }
        
        containerView.addSubview(locationTextField)
        locationTextField.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(locationLabel.snp.bottom).offset(10)
            make.left.equalTo(containerView).offset(40)
            make.height.equalTo(40)
            make.centerX.equalTo(containerView)
        }
    }
}


/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
