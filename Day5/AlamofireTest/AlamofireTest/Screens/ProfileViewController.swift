//
//  ProfileViewController.swift
//  AlamofireTest
//
//  Created by Taof on 1/7/20.
//  Copyright © 2020 Taof. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire
import ObjectMapper

class ProfileViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
     var userProfile: UserProfile?

    let headers: HTTPHeaders = ["Authorization": UserDefaults.standard.string(forKey: "token") ?? ""]
    override func viewDidLoad() {
        super.viewDidLoad()

        getProfile()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard let profile = userProfile else { return }
        userTextField.text = profile.name
        phoneTextField.text = profile.phone
        addressTextField.text = profile.address
    }
    
    func getProfile(){
        let url = "http://45.118.145.149:8100/profile"
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: headers).responseObject { [weak self] (response: DataResponse<ObjectResult1>) in
            guard let strongSelf = self, let res = response.result.value else { return }
            if res.code == 0 {
                guard let data = res.data else { return }
                print(data.name)
                strongSelf.userProfile = data
            }else{
                print(res.message)
            }
        }
    }
    
    @IBAction func pressUpdate(_ sender: Any) {
        guard let phone = phoneTextField.text, !phone.isEmpty else { return }
        guard let address = addressTextField.text, !address.isEmpty else { return }
        guard let username = userTextField.text, !username.isEmpty else { return }
        
        let params = [
            "name": username,
            "address": address,
            "phone": phone,
            "avatar": ""
        ]
        
        let url = "http://45.118.145.149:8100/update-profile"
        Alamofire.request(url, method: .put, parameters: params, encoding: JSONEncoding.default, headers: headers).responseObject { [weak self] (response: DataResponse<ObjectResult>) in
            guard let _ = self, let res = response.result.value else { return }
            if res.code == 0 {
                print("update thanh cong")
            }else{
                print(res.message)
            }
        }
    }
}
