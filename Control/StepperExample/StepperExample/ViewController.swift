//
//  ViewController.swift
//  StepperExample
//
//  Created by Max Chen on 2015/6/1.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myStepLabel = UILabel(frame: CGRectMake(0,0,150,150))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 建立Stepper
        let myStepper = UIStepper()
        myStepper.center = CGPointMake(self.view.frame.width/2, 400)
        myStepper.backgroundColor = UIColor.grayColor()
        myStepper.tintColor = UIColor.whiteColor()
        myStepper.addTarget(self, action: "stepperOneChanged:", forControlEvents: UIControlEvents.ValueChanged)

        // 設定最小値, 最大値, 規定値
        myStepper.minimumValue = 0
        myStepper.maximumValue = 100
        myStepper.value = 50

        // 一次變動值的範圍
        myStepper.stepValue = 10

        // 添加到View上
        self.view.addSubview(myStepper)

        // Label的設定
        myStepLabel.backgroundColor = UIColor.redColor()
        myStepLabel.layer.masksToBounds = true
        myStepLabel.layer.cornerRadius = 75.0
        myStepLabel.textColor = UIColor.whiteColor()
        myStepLabel.shadowColor = UIColor.grayColor()
        myStepLabel.font = UIFont.systemFontOfSize(CGFloat(30))
        myStepLabel.textAlignment = NSTextAlignment.Center
        myStepLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        myStepLabel.text = "\(myStepper.value)"


        // 添加Label到View上
        self.view.addSubview(myStepLabel)

    }

    // 當Stepper變化時的方法實作
    func stepperOneChanged(stepper: UIStepper){
        myStepLabel.text = "\(stepper.value)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

