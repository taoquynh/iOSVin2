//
//  SecondViewController.swift
//  AutoLayoutByNSContraint
//
//  Created by Taof on 12/26/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.setTitle("Dismiss", for: .normal)
        button.setTitle("Dimissing", for: .highlighted)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
        
        view.addSubview(button)
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button.addTarget(self, action: #selector(onDismiss), for: .touchUpInside)
    }
    
    @objc func onDismiss(){
        dismiss(animated: true, completion: nil)
    }
}
