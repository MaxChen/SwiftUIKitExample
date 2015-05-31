//
//  ViewController.swift
//  PageControlExample
//
//  Created by Max Chen on 2015/6/1.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var pageControl = UIPageControl()
    var scrollView = UIScrollView()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 取得螢幕最大的長寬
        let width = self.view.frame.maxX, height = self.view.frame.maxY

        // 建立ScrollView
        scrollView = UIScrollView(frame: self.view.frame)

        // 設定頁面數
        let pageSize = 4

        // 隱藏水平和垂直的方向
        scrollView.showsHorizontalScrollIndicator = false;
        scrollView.showsVerticalScrollIndicator = false

        // 啟用分頁
        scrollView.pagingEnabled = true

        // ScrollView的委派
        scrollView.delegate = self

        // ScrollView的屏幕大小
        scrollView.contentSize = CGSizeMake(CGFloat(pageSize) * width, 0)

        // 添加ScrollView到View上
        self.view.addSubview(scrollView)

        // 分頁的生成
        for var i = 0; i < pageSize; i++ {

            // 分頁內容的建立
            let myLabel:UILabel = UILabel(frame: CGRectMake(CGFloat(i) * width + width/2 - 40, height/2 - 80 , 80, 80))
            myLabel.backgroundColor = UIColor.redColor()
            myLabel.textColor = UIColor.whiteColor()
            myLabel.textAlignment = NSTextAlignment.Center
            myLabel.layer.masksToBounds = true
            myLabel.text = "Page\(i+1)"
            myLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())

            scrollView.addSubview(myLabel)
        }

        // 建立PageControl
        pageControl = UIPageControl(frame: CGRectMake(0, self.view.frame.maxY - 100, width, 50))
        pageControl.backgroundColor = UIColor.redColor()

        // PageControl的分頁數
        pageControl.numberOfPages = pageSize

        // 設定當前頁面
        pageControl.currentPage = 0
        pageControl.userInteractionEnabled = false

        self.view.addSubview(pageControl)
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {

        // 滾動分頁
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            // 切換頁面位置
            pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        }
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

