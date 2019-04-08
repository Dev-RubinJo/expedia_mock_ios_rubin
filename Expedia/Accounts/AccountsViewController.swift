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
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    var isLogin = false
    
    
    
    func updateUI(isLogin: Bool) {
        self.loginButton.layer.cornerRadius = 10.0
        self.logoutButton.layer.cornerRadius = 10.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(isLogin: self.isLogin)
    }

}
