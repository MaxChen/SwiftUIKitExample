//
//  ViewController.swift
//  TextFieldExample
//
//  Created by Max Chen on 2015/6/1.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    var myTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 建立UITextField
        myTextField = UITextField(frame: CGRectMake(self.view.bounds.width/2 - 100, 100, 200, 30))

        // 初始化的文字
        myTextField.text = "Hey!"

        // Delegate設定
        myTextField.delegate = self

        // 外框設定
        myTextField.borderStyle = UITextBorderStyle.RoundedRect

        // 添加TextField到View上
        self.view.addSubview(myTextField)

    }


    // 當UITextField開始編輯時的動作

    func textFieldDidBeginEditing(textField: UITextField) {
        println("textFieldDidBeginEditing: \(textField.text)")
    }


    // 設定TextField

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        let maxLength: Int = 8

        // 取得原有字元和正在輸入的字元串接
        var str = textField.text + string

        // 字數判斷
        if count("\(str)") < maxLength {
            return true
        }
        println("超過8個字了！")
        return false
    }


    // 當UITextField編輯結束時的動作

    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        println("textFieldShouldEndEditing: \(textField.text)")
        return true
    }


    // 按下Return後的動作

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("textFieldShouldReturn: \(textField.text)")

        //解除TextField的選取狀態
        myTextField.resignFirstResponder()

        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

