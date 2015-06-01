//
//  ViewController.swift
//  ActionSheetExample
//
//  Created by Max Chen on 2015/6/2.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidAppear(animated: Bool) {

        // 建立ActionSheet的AlertController
        let myAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: UIAlertControllerStyle.ActionSheet)

        // ActionSheet內容組成
        let alertAction_1 = UIAlertAction(title: "Default", style: UIAlertActionStyle.Default, handler: {
            (action: UIAlertAction!) in
            println("Default")
        })

        let alertAction_2 = UIAlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive, handler: {
            (action: UIAlertAction!) in
            println("Destructive")
        })

        let alertAction_3 = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: {
            (action: UIAlertAction!) in
            println("Cancel")
        })

        // 將Action添加到AlertController上
        myAlert.addAction(alertAction_1)
        myAlert.addAction(alertAction_2)
        myAlert.addAction(alertAction_3)

        self.presentViewController(myAlert, animated: true, completion: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

