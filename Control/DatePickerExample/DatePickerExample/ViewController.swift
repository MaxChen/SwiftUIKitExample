//
//  ViewController.swift
//  DatePickerExample
//
//  Created by Max Chen on 2015/6/1.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        let myDatePicker = UIDatePicker()

        // DatePicker的設置
        myDatePicker.frame = CGRectMake(0, self.view.bounds.height/4, 0, 0)
        myDatePicker.timeZone = NSTimeZone.localTimeZone()
        myDatePicker.backgroundColor = UIColor.redColor()
        myDatePicker.layer.cornerRadius = 5.0
        myDatePicker.layer.shadowOpacity = 0.5

        // 當值改變時，新增一個動作目標
        myDatePicker.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)

        // 添加DataPicker到View上
        self.view.addSubview(myDatePicker)

        // UITextField設定
        myTextField = UITextField(frame: CGRectMake(0,0,200,30))
        myTextField.text = ""
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        myTextField.layer.position = CGPoint(x: self.view.bounds.width/2,y: self.view.bounds.height - 100);

        // 添加UITextField到View上
        self.view.addSubview(myTextField)



    }

    // DataPicker值改變時設置的方法

    func onDidChangeDate(sender: UIDatePicker){

        // 日期格式建立
        let myDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "yyyy/MM/dd hh:mm"

        // 取得日期並設定到UITextField
        let mySelectedDate: NSString = myDateFormatter.stringFromDate(sender.date)
        myTextField.text = mySelectedDate as String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

