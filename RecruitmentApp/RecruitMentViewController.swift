//
//  ViewController.swift
//  RecruitmentApp
//
//  Created by Yuichiro Tsuji on 2018/05/16.
//  Copyright © 2018年 Yuichiro Tsuji. All rights reserved.
//

import UIKit
import VegaScroll

class RecruitMentViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layout = VegaScrollFlowLayout()
        collectionView.collectionViewLayout = layout
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: collectionView.frame.width, height: 87)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

