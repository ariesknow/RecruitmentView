//
//  CollectionViewCell.swift
//  RecruitmentApp
//
//  Created by Yuichiro Tsuji on 2018/05/18.
//  Copyright © 2018年 Yuichiro Tsuji. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var companyImage: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var LookingForLabel: UILabel!
    
    func setCell(imageURL: String, companyNameText: String, lookingForText: String) {
        companyNameLabel.text! = companyNameText
        LookingForLabel.text! = "募集人員 : " + lookingForText
        let url = URL(string: imageURL)!
        companyImage.af_setImage(withURL: url)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

