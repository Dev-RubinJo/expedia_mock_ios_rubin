//
//  AccountsViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 04/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import SnapKit

class AccountsViewController: UIViewController {
    
    var data = LoginInfoData()
    var isLogin = false
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    
    func updateUI(isLogin: Bool) {
        if isLogin == false {
            self.loginButton.layer.cornerRadius = 10.0
            self.logoutButton.isHidden = true
        } else if isLogin == true {
            self.loginButton.isHidden = true
            self.logoutButton.layer.cornerRadius = 10.0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(isLogin: self.isLogin)
    }

}
