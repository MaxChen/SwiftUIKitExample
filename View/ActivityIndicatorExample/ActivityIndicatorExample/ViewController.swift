//
//  ViewController.swift
//  ActivityIndicatorExample
//
//  Created by Max Chen on 2015/6/2.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myActivityIndicator = UIActivityIndicatorView()
    var myButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 將背景設定成黑色
        self.view.backgroundColor = UIColor.blackColor()

        // ActivityIndicator設定
        myActivityIndicator.frame = CGRectMake(0, 0, 50, 50)
        myActivityIndicator.center = self.view.center

        // 取消ActivityIndicator停止時隱藏，風格設定白色
        myActivityIndicator.hidesWhenStopped = false
        myActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.White

        // ActivityIndicator動畫開始
        myActivityIndicator.startAnimating()

        // 將ActivityIndicator加到View上
        self.view.addSubview(myActivityIndicator)

        // 按鈕建立與設定
        myButton = UIButton(frame: CGRectMake(0, 0, 60, 60))
        myButton.backgroundColor = UIColor.redColor()
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 30.0
        myButton.setTitle("Stop", forState: .Normal)
        myButton.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-50)
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)

        // 將按鈕加到View上
        self.view.addSubview(myButton)

    }


    // 按鈕的動作實作

    func onClickMyButton(sender: UIButton){

        if myActivityIndicator.isAnimating() {
            myActivityIndicator.stopAnimating()
            myButton.setTitle("Start", forState: .Normal)
            myButton.backgroundColor = UIColor.blueColor()
        }
        else {
            myActivityIndicator.startAnimating()
            myButton.setTitle("Stop", forState: .Normal)
            myButton.backgroundColor = UIColor.redColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

