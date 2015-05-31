//
//  ViewController.swift
//  SegmentedControlExample
//
//  Created by Max Chen on 2015/6/1.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mySegLabel = UILabel(frame: CGRectMake(0,0,150,150))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let myArray: NSArray = ["Red","Blue","Green"]

        // SegmentedControl實作
        let mySegcon: UISegmentedControl = UISegmentedControl(items: myArray as [AnyObject])
        mySegcon.center = CGPoint(x: self.view.frame.width/2, y: 400)
        mySegcon.backgroundColor = UIColor.grayColor()
        mySegcon.tintColor = UIColor.whiteColor()

        // 添加動作
        mySegcon.addTarget(self, action: "segconChanged:", forControlEvents: UIControlEvents.ValueChanged)

        // 添加到View上
        self.view.addSubview(mySegcon)

        // Label設定
        mySegLabel.backgroundColor = UIColor.redColor()
        mySegLabel.layer.masksToBounds = true
        mySegLabel.layer.cornerRadius = 75.0
        mySegLabel.textColor = UIColor.whiteColor()
        mySegLabel.shadowColor = UIColor.grayColor()
        mySegLabel.font = UIFont.systemFontOfSize(CGFloat(30))
        mySegLabel.textAlignment = NSTextAlignment.Center
        mySegLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)

        // 添加到View上
        self.view.addSubview(mySegLabel);

    }

    // SegmentedControl發生變化時的方法實作

    func segconChanged(segcon: UISegmentedControl){

        switch segcon.selectedSegmentIndex {
        case 0:
            mySegLabel.backgroundColor = UIColor.redColor()

        case 1:
            mySegLabel.backgroundColor = UIColor.blueColor()

        case 2:
            mySegLabel.backgroundColor = UIColor.greenColor()

        default:
            println("Error")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

