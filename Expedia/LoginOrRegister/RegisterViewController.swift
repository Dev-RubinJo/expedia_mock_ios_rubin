//
//  RegisterViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 03/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class RegisterViewController: UIViewController, IndicatorInfoProvider {
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "회원 가입")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textLabel.text = "회원 가입"
        // Do any additional setup after loading the view.
    }
    


}
