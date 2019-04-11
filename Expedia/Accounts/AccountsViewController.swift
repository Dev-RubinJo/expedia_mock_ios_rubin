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
    @IBOutlet weak var editAccountInfo: UIButton!
    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    
    func updateUI(isLogin: Bool) {
        
        
        
        if isLogin == false {
            self.navigationTitle.title = "계정"
            self.loginButton.isHidden = false
            self.loginButton.layer.cornerRadius = 10.0
            self.logoutButton.isHidden = true
            self.editAccountInfo.isHidden = true
        } else if isLogin == true {
            self.navigationTitle.title = "\(self.data.loadName())님! 환영합니다!"
            self.loginButton.isHidden = true
            self.logoutButton.isHidden = false
            self.logoutButton.layer.cornerRadius = 10.0
            self.logoutButton.addTarget(self, action: #selector(pressLogoutButton), for: .touchUpInside)
            self.editAccountInfo.isHidden = false
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
        updateUI(isLogin: self.data.loadLogin())
    }

}
