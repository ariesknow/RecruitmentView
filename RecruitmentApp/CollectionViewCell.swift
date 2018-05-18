//
//  CollectionViewCell.swift
//  RecruitmentApp
//
//  Created by Yuichiro Tsuji on 2018/05/18.
//  Copyright © 2018年 Yuichiro Tsuji. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //TODO: Cell内の要素を定義
        //Title,CompanyImage,CompanyName...
        // cellの枠の太さ
        self.layer.borderWidth = 1.0
        // cellの枠の色
        self.layer.borderColor = UIColor.black.cgColor
        // cellを丸くする
        self.layer.cornerRadius = 8.0
    }
}
