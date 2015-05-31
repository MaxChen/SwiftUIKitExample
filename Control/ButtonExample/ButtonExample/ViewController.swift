//
//  ViewController.swift
//  ButtonExample
//
//  Created by Max Chen on 2015/6/1.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 按鈕位置大小設定
        myButton.frame = CGRectMake(self.view.frame.width/2 - 100, 200, 200, 40)

        // 背景色設定.
        myButton.backgroundColor = UIColor.redColor()

        // 一般狀態標題文字顏色設定.
        myButton.setTitle("按鈕(一般)", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)

        // 按壓時狀態標題文字顏色設定.
        myButton.setTitle("按鈕(按下時)", forState: UIControlState.Highlighted)
        myButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)

        // 標籤設定.
        myButton.tag = 1

        // 添加按鈕動作.
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)

        // 新增到View上.
        self.view.addSubview(myButton)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 按鈕操作時設置的方法

    func onClickMyButton(sender: UIButton){
        println("onClickMyButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag:\(sender.tag)")

    }




}

