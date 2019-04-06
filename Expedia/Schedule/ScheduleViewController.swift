//
//  ScheduleViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 01/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {

    
    @IBOutlet weak var topLabelView: UIView!
    @IBOutlet weak var URLAndCountryView: UIView!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var countryButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    func updateUI() {
        topLabelView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
        URLAndCountryView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
        loginButton.layer.cornerRadius = 10.0
        loginButton.layer.masksToBounds = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        // Do any additional setup after loading the view.
    }
//    override func viewDidAppear(_ animated: Bool) {
////        <#code#>
//    }
    

}
