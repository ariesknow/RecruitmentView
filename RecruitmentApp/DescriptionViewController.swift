//
//  PopUpViewController.swift
//  RecruitmentApp
//
//  Created by Yuichiro Tsuji on 2018/05/21.
//  Copyright © 2018年 Yuichiro Tsuji. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var companyDescriptionView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        companyNameLabel.text = UserDefaults.standard.string(forKey: "name")
        companyDescriptionView.text = UserDefaults.standard.string(forKey: "description")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        for touch: UITouch in touches {
            let tag = touch.view!.tag
            if tag == 1 {
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func tapClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tapApply(_ sender: UIButton) {
        print("応募")
        //TODO: 応募画面へ
    }
    
}
