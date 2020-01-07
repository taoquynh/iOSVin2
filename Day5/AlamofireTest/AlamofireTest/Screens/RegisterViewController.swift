//
//  RegisterViewController.swift
//  AlamofireTest
//
//  Created by Taof on 1/7/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onRegister(_ sender: Any) {
        guard let phone = phoneTextField.text, !phone.isEmpty else { return }
        guard let password = passwordTextField.text, !password.isEmpty else { return }
        guard let username = usernameTextField.text, !username.isEmpty else { return }
        
        let params = [
            "name": username,
            "phone": phone,
            "password": password
        ]
        
        let url = "http://45.118.145.149:8100/register"
        Alamofire.request(url, method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).responseObject { [weak self] (response: DataResponse<ObjectResult>) in
            guard let _ = self, let res = response.result.value else { return }
            if res.code == 0 {
                guard let data = res.data as? DataResult else { return }
                let token = data.token
                UserDefaults.standard.set(token, forKey: "token")
                print(token)
            }else{
                print(res.message)
            }
        }
    }
    
    @IBAction func backLogin(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
