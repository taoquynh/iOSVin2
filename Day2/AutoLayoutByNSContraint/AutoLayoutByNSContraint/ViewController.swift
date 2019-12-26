//
//  ViewController.swift
//  AutoLayoutByNSContraint
//
//  Created by Taof on 12/26/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        // thuộc tính translates... = false để tắt chế độ frame của đối tượng
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.cyan
        view.layer.borderColor = UIColor.green.cgColor
        view.layer.borderWidth = 5
        return view
    }()
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "giang-sinh")
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Họ và tên: "
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = UIColor.brown
        return label
    }()
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Nhập tên của bạn ở đây ..."
        textField.borderStyle = .roundedRect
        textField.textColor = .brown
        return textField
    }()
    
    let phoneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Số điện thoại: "
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.textColor = UIColor.brown
        return label
    }()
    
    let phoneTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Nhập số điện thoại của bạn ở đây ..."
        textField.borderStyle = .roundedRect
        textField.textColor = .brown
        textField.keyboardType = .decimalPad
        return textField
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Press", for: .normal)
        button.setTitle("Pressing", for: .highlighted)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        nameTextField.becomeFirstResponder()
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(tapHideKeyboard))
        containerView.addGestureRecognizer(gesture)
        
        
        let longPressPhoto = UILongPressGestureRecognizer(target: self, action: #selector(changeBackgroundColor))
        photoImageView.addGestureRecognizer(longPressPhoto)
        photoImageView.isUserInteractionEnabled = true
        
        button.addTarget(self, action: #selector(goToScreen), for: .touchUpInside)
    }
    
    @objc func goToScreen(){
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true, completion: nil)
    }
    
    @objc func changeBackgroundColor(){
        photoImageView.backgroundColor = .red
    }
    
    @objc func tapHideKeyboard(){
        self.view.endEditing(true)
    }
    
    func setupLayout(){
        self.view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        
        containerView.addSubview(photoImageView)
        
        let constraintPhoto = [
            photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            photoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            photoImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20),
            photoImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/3)
        ]
        
        NSLayoutConstraint.activate(constraintPhoto)
        
        containerView.addSubview(nameLabel)
        let constraintNameLabel = [
            nameLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 16),
            nameLabel.leftAnchor.constraint(equalTo: photoImageView.leftAnchor, constant: 0),
            nameLabel.rightAnchor.constraint(equalTo: photoImageView.rightAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintNameLabel)
        
        containerView.addSubview(nameTextField)
        let constraintNameTextField = [
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            nameTextField.leftAnchor.constraint(equalTo: nameLabel.leftAnchor, constant: 0),
            nameTextField.rightAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 0)
        ]
        NSLayoutConstraint.activate(constraintNameTextField)
        
        containerView.addSubview(phoneLabel)
        let constraintPhoneLabel = [
            phoneLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            phoneLabel.centerXAnchor.constraint(equalTo: nameTextField.centerXAnchor, constant: 0),
            phoneLabel.widthAnchor.constraint(equalTo: nameTextField.widthAnchor, multiplier: 1)
        ]
        NSLayoutConstraint.activate(constraintPhoneLabel)
        
        containerView.addSubview(phoneTextField)
        let constraintPhoneTextField = [
            phoneTextField.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 8),
            phoneTextField.centerXAnchor.constraint(equalTo: phoneLabel.centerXAnchor, constant: 0),
            phoneTextField.widthAnchor.constraint(equalTo: phoneLabel.widthAnchor, multiplier: 1),
            phoneTextField.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(constraintPhoneTextField)
        
        containerView.addSubview(button)
        button.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 32).isActive = true
        button.centerXAnchor.constraint(equalTo: phoneTextField.centerXAnchor, constant: 0).isActive = true
        button.widthAnchor.constraint(equalTo: phoneTextField.widthAnchor, multiplier: 1).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
}

