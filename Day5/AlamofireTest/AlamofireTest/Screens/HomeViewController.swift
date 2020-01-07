//
//  HomeViewController.swift
//  AlamofireTest
//
//  Created by Taof on 1/7/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }

    @IBAction func goProfile(_ sender: Any) {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
}
