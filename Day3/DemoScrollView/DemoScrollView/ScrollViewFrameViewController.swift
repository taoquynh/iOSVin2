//
//  ScrollViewFrameViewController.swift
//  DemoScrollView
//
//  Created by Taof on 12/28/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit

class ScrollViewFrameViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var images: [UIImage] = []
    var texts: [String] = []
    var pageControl: UIPageControl!
    var fruitViews = [FruitView]()
    var fruits: [Fruit] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        
        scrollView.contentSize = CGSize(width: 800, height: 1500)
        scrollView.backgroundColor = .white
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        view.addSubview(scrollView)
        
        createDataFruit()
        // set toạ độ và các thuộc tính của pageCotrol
        pageControl = UIPageControl(frame: CGRect(x: 0, y: view.frame.maxY - 50, width: 100, height: 20))
        view.addSubview(pageControl)
        pageControl.center.x = view.center.x
        pageControl.pageIndicatorTintColor = .cyan
        pageControl.currentPageIndicatorTintColor = .blue
        pageControl.numberOfPages = fruits.count
        pageControl.currentPage = 0
        
        // mang pageControl lên mặt trên cùng
        view.bringSubviewToFront(pageControl)
        data1()
        addContentScroll3(fruits)
    }
    
    func data1(){
        
        
        
        texts = [
            "Quả táo",
            "Quả chuối",
            "Quả dừa",
            "Quả sầu riêng",
            "Quả nho",
            "Quả chanh",
            "Quả xoài",
            "Quả cam",
            "Quả dâu"
        ]
        
        images = [
        UIImage(named: "apple"),
        UIImage(named: "banana"),
        UIImage(named: "coconut"),
        UIImage(named: "durian"),
        UIImage(named: "grape"),
        UIImage(named: "lemon"),
        UIImage(named: "mango"),
        UIImage(named: "orange"),
        UIImage(named: "strawberry"),
        
        ] as! [UIImage]
    }
    
    func createDataFruit(){
        let fruit1 = Fruit(nameImage: "apple", titleName: "apple")
        let fruit2 = Fruit(nameImage: "banana", titleName: "banana")
        let fruit3 = Fruit(nameImage: "coconut", titleName: "coconut")
        let fruit4 = Fruit(nameImage: "durian", titleName: "durian")
        let fruit5 = Fruit(nameImage: "grape", titleName: "grape")
        let fruit6 = Fruit(nameImage: "lemon", titleName: "lemon")
        let fruit7 = Fruit(nameImage: "mango", titleName: "mango")
        let fruit8 = Fruit(nameImage: "orange", titleName: "orange")
        let fruit9 = Fruit(nameImage: "strawberry", titleName: "strawberry")
        
        fruits = [fruit1, fruit2, fruit3, fruit4, fruit5, fruit6, fruit7, fruit8, fruit9]
    }
    
    func addContentScroll1(_ arrs: [UIImage], _ brrs: [String]){
        // tính kích thước màn hình
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        //duyệt mảng để addSubview các ảnh con vào trong scrollView
        for i in 0..<arrs.count{
            let imageView = UIImageView(frame: CGRect(x: 0,
                                                      y: height * CGFloat(i),
                                                      width: width,
                                                      height: height))
            let title = UILabel(frame: CGRect(x: 0,
                                              y: height * CGFloat(i+1) - 200,
                                              width: width,
                                              height: 30))
            imageView.contentMode = .scaleAspectFit
            imageView.image = arrs[i]
            
            title.text = brrs[i]
            title.textColor = .black
            title.font = UIFont.boldSystemFont(ofSize: 64)
            title.textAlignment = .center
            title.center.x = imageView.center.x
            
            scrollView.addSubview(imageView)
            scrollView.addSubview(title)
        }
        
        
        // tính kích thước contentSize của ScrollView
        scrollView.contentSize = CGSize(width: width,
                                        height: scrollView.frame.height * CGFloat(arrs.count))
    }
    
    func addContentScroll2(_ arrs: [UIImage], _ brrs: [String]){
        // tính kích thước màn hình
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        //duyệt mảng để addSubview các ảnh con vào trong scrollView
        for i in 0..<arrs.count{
            let imageView = UIImageView(frame: CGRect(x: width * CGFloat(i),
                                                      y: 0,
                                                      width: width,
                                                      height: height))
            let title = UILabel(frame: CGRect(x: width * CGFloat(i),
                                              y: height - 200,
                                              width: width,
                                              height: 30))
            imageView.contentMode = .scaleAspectFit
            imageView.image = arrs[i]
            
            title.text = brrs[i]
            title.textColor = .black
            title.font = UIFont.boldSystemFont(ofSize: 64)
            title.textAlignment = .center
            title.center.x = imageView.center.x
            
            scrollView.addSubview(imageView)
            scrollView.addSubview(title)
        }
        
        
        // tính kích thước contentSize của ScrollView
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(arrs.count),
                                        height: height)
    }
    
    func addContentScroll3(_ arrs: [Fruit]){
        // tính kích thước màn hình
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        //duyệt mảng để addSubview các ảnh con vào trong scrollView
        for i in 0..<arrs.count{
            let itemView = FruitView(frame: CGRect(x: width * CGFloat(i),
                                                      y: 0,
                                                      width: width,
                                                      height: height))
            itemView.imageView.image = UIImage(named: arrs[i].nameImage)
            itemView.nameLabel.text = arrs[i].titleName
            scrollView.addSubview(itemView)
            fruitViews.append(itemView)
        }
        
        // tính kích thước contentSize của ScrollView
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(arrs.count),
                                        height: height)
    }
}

extension ScrollViewFrameViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset)
        let pageIndex = round(scrollView.contentOffset.x / view.bounds.width)
        pageControl.currentPage = Int(pageIndex)
        
        // MARK: Tạo animate khi trượt các thành phần trong scrollView
        let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
        let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x
        
        let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
        let currentVerticalOffset: CGFloat = scrollView.contentOffset.y
        
        let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
        let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
        
        let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
        
        if(percentOffset.x > 0 && percentOffset.x <= 0.25) {
            fruitViews[0].imageView.transform = CGAffineTransform(scaleX: (0.25-percentOffset.x)/0.25, y: (0.25-percentOffset.x)/0.25)
            fruitViews[1].imageView.transform = CGAffineTransform(scaleX: percentOffset.x/0.25, y: percentOffset.x/0.25)
        }
    }
}
