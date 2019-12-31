//
//  DefaultDynamicViewController.swift
//  TutorialTableView
//
//  Created by Tào Quỳnh on 5/9/19.
//  Copyright © 2019 Tào Quỳnh. All rights reserved.
//

import UIKit

class DefaultDynamicViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var animals: [Animal]?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .cyan
        setupTableView()
        setupData()
    }
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupData(){
        animals = [
            Animal(animal: "Chó", feeds: "4 feeds", imageName: "cho"),
            Animal(animal: "Mèo", feeds: "4 feeds", imageName: "meo"),
            Animal(animal: "Chó", feeds: "4 feeds", imageName: "cho"),
            Animal(animal: "Mèo", feeds: "4 feeds", imageName: "meo"),
            Animal(animal: "Chó", feeds: "4 feeds", imageName: "cho"),
            Animal(animal: "", feeds: "", imageName: "")
            
        ]
    }
}

extension DefaultDynamicViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell?
        
        cell = tableView.dequeueReusableCell(withIdentifier: "id")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "id")
        }
        print(animals![indexPath.row].animal)
        cell!.textLabel?.text = animals![indexPath.row].animal
        cell!.detailTextLabel?.text = animals![indexPath.row].feeds
        cell!.imageView?.image = UIImage(named: animals![indexPath.row].imageName)
        return cell!
    }
    
}
