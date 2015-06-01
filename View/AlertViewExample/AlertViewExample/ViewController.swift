//
//  ViewController.swift
//  AlertViewExample
//
//  Created by Max Chen on 2015/6/2.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Button設定跟建立
        let myButton: UIButton = UIButton()
        myButton.frame = CGRectMake(0,0,200,40)
        myButton.backgroundColor = UIColor.redColor()
        myButton.layer.masksToBounds = true
        myButton.setTitle("啟用AlertView", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)

        // 將Button加到View上
        self.view.addSubview(myButton)

    }

    func onClickMyButton(sender: UIButton){

        // UIAlertController實作
        let myAlert: UIAlertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .Alert)

        // 建立OK Action
        let myOkAction = UIAlertAction(title: "OK", style: .Default) { action in
            println("Action OK!!")
        }

        // 添加OK Action到AlertController上
        myAlert.addAction(myOkAction)

        // UIAlert動作啟動
        presentViewController(myAlert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

