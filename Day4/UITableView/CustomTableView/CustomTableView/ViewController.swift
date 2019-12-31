//
//  ViewController.swift
//  CustomTableView
//
//  Created by Taof on 12/31/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.backgroundColor = UIColor.groupTableViewBackground
        configTableView()
    }
    
    func configTableView(){
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
        
        tableView.register(CellColection.self, forCellReuseIdentifier: "CellCollection")
        tableView.register(CellList.self, forCellReuseIdentifier: "CellList")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else{
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellCollection", for: indexPath) as! CellColection
            cell.myParent = self
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellList", for: indexPath) as! CellList
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 200
        } else {
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 80))
        view.backgroundColor = .clear
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: tableView.bounds.width - 30, height: 40))
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor.black
        label.center.y = view.center.y
        if section == 0 {
            label.text = "Tử vi bói toán"
        }else {
            label.text = "Sự kiện quan trọng"
        }
        view.addSubview(label)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
}

