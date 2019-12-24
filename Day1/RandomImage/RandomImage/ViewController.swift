//
//  ViewController.swift
//  RandomImage
//
//  Created by Taof on 12/24/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    var random: String? = ""
    let nameImage: [String] = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        change()
    }
    
    @IBAction func randomPress(_ sender: Any) {
        change()
    }
    
    func change(){
        let newName = nameImage.filter { $0 != random }
        random = newName.randomElement()
        photoImageView.image = UIImage(named: random ?? "")
    }
}

