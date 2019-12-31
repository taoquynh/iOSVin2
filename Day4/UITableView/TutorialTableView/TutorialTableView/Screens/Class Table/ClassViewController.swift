//
//  ClassViewController.swift
//  TutorialTableView
//
//  Created by Taof on 5/13/19.
//  Copyright © 2019 Tào Quỳnh. All rights reserved.
//

import UIKit

class ClassViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var classes: [Class] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTable()
        setupData()
    }
    
    func setupTable(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.bounces = false
        tableView.showsVerticalScrollIndicator = false
        tableView.register(UINib(nibName: "ClassTableViewCell", bundle: nil), forCellReuseIdentifier: "id")
    }
    
    func setupData(){
        let classes1 = Class(series: "1", name: "Tào Thuý Quỳnh", point: "3")
        let classes2 = Class(series: "2", name: "Trịnh Minh Thuý", point: "8")
        let classes3 = Class(series: "3", name: "Nguyễn Thành Long", point: "10")
        let classes4 = Class(series: "4", name: "Nguyễn Công Anh", point: "5")
        let classes5 = Class(series: "5", name: "Nguyễn Hàn Duy", point: "7")
        let classes6 = Class(series: "6", name: "Lê Viết Hưng", point: "7")
        let classes7 = Class(series: "7", name: "Ngô Tiến Huy", point: "5")
        let classes8 = Class(series: "8", name: "Nguyễn Thạch Lựu", point: "4")
        let classes9 = Class(series: "9", name: "Lê Hồng Hà", point: "9")
        let classes10 = Class(series: "10", name: "Tomboy Loi Choi", point: "6")
        let classes11 = Class(series: "11", name: "Hoàng Thị Nguyệt", point: "9")
        let classes12 = Class(series: "12", name: "Đặng Tiến Đông", point: "7")
        let classes13 = Class(series: "13", name: "Huỳnh Chi Diễm", point: "5")
        let classes14 = Class(series: "14", name: "Cao Bá Sâm", point: "4")
        let classes15 = Class(series: "15", name: "Trương Minh Thuý", point: "9")
        let classes16 = Class(series: "16", name: "Lã Trâm Anh", point: "6")
        let classes17 = Class(series: "17", name: "Nguyễn Văn Độ", point: "9")
        
        classes = [classes1, classes2, classes3, classes4, classes5, classes6, classes7, classes8, classes9, classes10, classes11, classes12, classes13, classes14, classes15, classes16, classes17 ]
    }
    
}

extension ClassViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! ClassTableViewCell
        cell.serialLabel.text = classes[indexPath.row].series
        cell.nameLabel.text = classes[indexPath.row].name
        cell.pointLabel.text = classes[indexPath.row].point
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 30))
        view.backgroundColor = .gray
        let seriLabel = UILabel(frame: CGRect(x: 8, y: 8, width: 30, height: 21))
        seriLabel.font = UIFont.boldSystemFont(ofSize: 15)
        seriLabel.textColor = UIColor.white
        seriLabel.text = "Seri"
        
        let nameLabel = UILabel(frame: CGRect(x: 54, y: 8, width: tableView.bounds.size.width/2, height: 21))
        nameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        nameLabel.textColor = UIColor.white
        nameLabel.text = "Name"
        
        let pointLabel = UILabel(frame: CGRect(x: tableView.bounds.size.width/2 + 70, y: 8, width: 50, height: 21))
        pointLabel.font = UIFont.boldSystemFont(ofSize: 15)
        pointLabel.textColor = UIColor.white
        pointLabel.text = "Point"
        
        view.addSubview(seriLabel)
        view.addSubview(nameLabel)
        view.addSubview(pointLabel)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 40))
        footerView.backgroundColor = UIColor.gray
        let footLabel = UILabel(frame: CGRect(x: 8, y: 8, width: 100, height: 21))
        footLabel.font = UIFont.boldSystemFont(ofSize: 15)
        footLabel.textColor = UIColor.white
        footLabel.text = "@CopyRight"
        footerView.addSubview(footLabel)
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
