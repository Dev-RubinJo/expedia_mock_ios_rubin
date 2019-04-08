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
    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    
    func updateUI(isLogin: Bool) {
        if isLogin == false {
            self.loginButton.isHidden = false
            self.loginButton.layer.cornerRadius = 10.0
            self.logoutButton.isHidden = true
        } else if isLogin == true {
            self.loginButton.isHidden = true
            self.logoutButton.isHidden = false
            self.logoutButton.layer.cornerRadius = 10.0
            self.logoutButton.addTarget(self, action: #selector(pressLogoutButton), for: .touchUpInside)
        }
    }
    
    @objc func pressLogoutButton() {
        self.data.logoutStatus()
        self.data.saveLogin()
        updateUI(isLogin: self.data.loadLogin())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        print("a")
        updateUI(isLogin: self.data.loadLogin())
    }

}
