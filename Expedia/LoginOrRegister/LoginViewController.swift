//
//  LoginViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 03/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class LoginViewController: UIViewController, IndicatorInfoProvider {

    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "로그인")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
