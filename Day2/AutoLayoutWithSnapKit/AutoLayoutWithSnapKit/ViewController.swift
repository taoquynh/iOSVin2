//
//  ViewController.swift
//  AutoLayoutWithSnapKit
//
//  Created by Taof on 12/26/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    let whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
    }

    func setupLayout(){
        view.addSubview(containerView)
        containerView.addSubview(blackView)
        containerView.addSubview(greenView)
        containerView.addSubview(yellowView)
        containerView.addSubview(purpleView)
        containerView.addSubview(whiteView)
        
        containerView.snp.makeConstraints { (maker) in
            maker.top.equalTo(view).inset(64)
            maker.left.equalTo(view).inset(0)
            maker.right.equalTo(view).inset(0)
            maker.bottom.equalTo(view).inset(20)
        }
        
        blackView.snp.makeConstraints { (maker) in
            maker.center.equalTo(containerView)
            maker.size.equalTo(CGSize(width: 100, height: 100))
        }
        
        yellowView.snp.makeConstraints { (maker) in
            maker.top.equalTo(blackView.snp.bottom).offset(20)
            maker.right.equalTo(blackView.snp.left).offset(-20)
            maker.size.equalTo(CGSize(width: 100, height: 100))
        }
    }

}

