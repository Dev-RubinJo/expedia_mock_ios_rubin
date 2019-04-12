//
//  ScheduleViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 01/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    let data = LoginInfoData()

    
    @IBOutlet weak var topLabelView: UIView!
    @IBOutlet weak var URLAndCountryView: UIView!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var countryButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var afterLoginView: UIView!
    @IBOutlet weak var afterLoginLabel: UILabel!
    
    func updateUI() {
        if self.data.loadLogin() == false {
            self.afterLoginView.isHidden = true
            self.topLabelView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
            self.URLAndCountryView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
            self.loginButton.layer.cornerRadius = 10.0
            self.loginButton.layer.masksToBounds = true
        } else if self.data.loadLogin() == true {
            self.afterLoginView.isHidden = false
            self.afterLoginLabel.text = "\(self.data.loadName())님 환영합니다!"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        updateUI()
    }
    

}
