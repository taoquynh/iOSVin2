//
//  ViewController.swift
//  CuocTaxi
//
//  Created by Taof on 12/24/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tinhTien(_ sender: Any) {
        guard let km = kmTextField.text, let kmConvert = Float(km) else { return }
        
        if kmConvert >= 0 && kmConvert < 1 {
            resultLabel.text = "5000 VND"
        } else if kmConvert <= 31 {
            resultLabel.text = "\((kmConvert - 1) * 4000 + 5000) VND"
        } else {
            resultLabel.text = "\((kmConvert - 31) * 3000 + 30 * 4000 + 5000) VND"
        }
   }
    
}

