//
//  ViewController.swift
//  RecruitmentApp
//
//  Created by Yuichiro Tsuji on 2018/05/16.
//  Copyright © 2018年 Yuichiro Tsuji. All rights reserved.
//

import UIKit
import VegaScroll
import Alamofire

class RecruitMentViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let apiURL = "https://www.wantedly.com/api/v1/projects?q="
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layout = VegaScrollFlowLayout()
        collectionView.collectionViewLayout = layout
        layout.minimumLineSpacing = 20
        layout.itemSize = CGSize(width: collectionView.frame.width, height: 87)
        layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        //TODO: CollectionViewCell内の要素に、jsonをperseしたデータを変換して表示
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath){
        print("User Tapped: \(indexPath.row)")
    }
    
    //TODO: jsonから表示するデータをperseするメソッド
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

