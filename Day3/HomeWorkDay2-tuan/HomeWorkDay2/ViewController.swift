//
//  ViewController.swift
//  HomeWorkDay2
//
//  Created by th on 12/27/19.
//  Copyright © 2019 th. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let containerView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    let kungpaoImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "kungpao")
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    let kungpaonameLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Kung Pao Potato"
        label.textColor = .black
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    let kungpaoRestaurantLabel :UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lunch Box"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    let introduceLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mildly spiced indian buttermik with mint flavor"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    let starIcon :UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "star")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    let starLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4.6"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    let timeLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "20-30 mins"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    let deliveringLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Delivering Food to"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    let locationLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Home(B 701, sunder nagar, malad ...)"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    let changeButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CHANGE", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.backgroundColor = .white
        return button
    }()
    let addButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ADD", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.backgroundColor = .green
        button.layer.cornerRadius = 25
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    func setupLayout() {
        //setup container
        view.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        //setup kung pao image
        containerView.addSubview(kungpaoImageView)
        kungpaoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        kungpaoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        kungpaoImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        kungpaoImageView.heightAnchor.constraint(equalTo: containerView.heightAnchor, multiplier: 1/3).isActive = true
        
        //setup kung pao name
        containerView.addSubview(kungpaonameLabel)
        kungpaonameLabel.topAnchor.constraint(equalTo: kungpaoImageView.bottomAnchor, constant: 30).isActive = true
        kungpaonameLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        
        //setup kungpao restaurant
        containerView.addSubview(kungpaoRestaurantLabel)
        kungpaoRestaurantLabel.topAnchor.constraint(equalTo: kungpaonameLabel.bottomAnchor, constant: 7).isActive = true
        kungpaoRestaurantLabel.leadingAnchor.constraint(equalTo:kungpaonameLabel.leadingAnchor , constant: 0).isActive = true
        
        //setup introduce label
        containerView.addSubview(introduceLabel)
        introduceLabel.topAnchor.constraint(equalTo: kungpaoRestaurantLabel.bottomAnchor, constant: 7).isActive = true
        introduceLabel.leadingAnchor.constraint(equalTo: kungpaoRestaurantLabel.leadingAnchor, constant: 0).isActive = true
        introduceLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 40).isActive = true
        
        //setup information
        containerView.addSubview(starIcon)
        starIcon.topAnchor.constraint(equalTo: introduceLabel.bottomAnchor, constant: 40).isActive = true
        starIcon.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        starIcon.widthAnchor.constraint(equalToConstant: 15).isActive = true
        starIcon.heightAnchor.constraint(equalTo: starIcon.widthAnchor, multiplier: 1).isActive = true
        
        containerView.addSubview(starLabel)
        starLabel.leftAnchor.constraint(equalTo: starIcon.rightAnchor, constant: 10).isActive = true
        starLabel.centerYAnchor.constraint(equalTo: starIcon.centerYAnchor, constant: 0).isActive = true
        
        containerView.addSubview(timeLabel)
        timeLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        timeLabel.centerYAnchor.constraint(equalTo: starIcon.centerYAnchor, constant: 0).isActive = true
        
        //set delivery
        containerView.addSubview(deliveringLabel)
        deliveringLabel.topAnchor.constraint(equalTo: starIcon.bottomAnchor, constant: 40).isActive = true
        deliveringLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        
        //set location
        containerView.addSubview(locationLabel)
        locationLabel.topAnchor.constraint(equalTo: deliveringLabel.bottomAnchor, constant: 10).isActive = true
        locationLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        //set button
        containerView.addSubview(changeButton)
        changeButton.centerYAnchor.constraint(equalTo: locationLabel.centerYAnchor, constant: 0).isActive = true
        changeButton.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        
        //set add button
        containerView.addSubview(addButton)
        addButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
        addButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -40).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addButton.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        
    }
    
    
    
}

