//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by Max Chen on 2015/6/2.
//  Copyright (c) 2015年 Max Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var myCollectionView : UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // 建立CollectionView布局
        let layout = UICollectionViewFlowLayout()

        // Cell的大小設定
        layout.itemSize = CGSizeMake(50, 50)

        // Cell的邊距
        layout.sectionInset = UIEdgeInsetsMake(16, 16, 32, 16)

        // 每一個部分頭部的大小
        layout.headerReferenceSize = CGSizeMake(100,30)

        // 建立CollectionView
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)

        // Cell註冊連結到CollectionView
        myCollectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")

        myCollectionView.delegate = self
        myCollectionView.dataSource = self

        self.view.addSubview(myCollectionView)

    }


    // Cell選中時的動作

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

        println("Num: \(indexPath.row)")
        println("Value:\(collectionView)")

    }


    // Cell總數量

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }


    // Cell的設定值

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

        let cell : UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell",
            forIndexPath: indexPath) as! UICollectionViewCell

        cell.backgroundColor = UIColor.redColor()
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

