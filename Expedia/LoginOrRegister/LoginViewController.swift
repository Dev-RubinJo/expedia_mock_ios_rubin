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
    
    
    @IBOutlet weak var numberLabel: UILabel!
    var childNumber: String = ""
    
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "\(childNumber)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.numberLabel.text = childNumber
        // Do any additional setup after loading the view.
    }
    
}
