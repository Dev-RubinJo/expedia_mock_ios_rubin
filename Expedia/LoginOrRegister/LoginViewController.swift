//
//  LoginViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 03/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import TextFieldEffects

class LoginViewController: UIViewController, IndicatorInfoProvider {
    
    let emailTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 145.0, width: UIScreen.main.bounds.width - 20, height: 45.0))
    let passwordTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 210.0, width: UIScreen.main.bounds.width - 20, height: 45))
    
    let forgetPassword = UIButton(frame: CGRect(x: 90.0, y: 285.0, width: 180, height: 30))
    let loginButton = UIButton(frame: CGRect(x: 10.0, y: 305, width: UIScreen.main.bounds.width - 20, height: 45))
    
    
    func updateUI() {
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(forgetPassword)
        self.view.addSubview(loginButton)
        
        emailTextField.placeholder = " 이메일 주소"
        emailTextField.placeholderFontScale = 0.77
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholderColor = .darkGray
        
        passwordTextField.placeholder = " 비밀번호"
        passwordTextField.placeholderFontScale = 0.77
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholderColor = .darkGray
        
        let passwordTitle: UIFont! = UIFont(name: "비밀번호를 잊으셨나요?", size: 15)
        
        forgetPassword.titleLabel?.font = passwordTitle
        
        forgetPassword.setTitleColor(.blue, for: UIControl.State.normal)
        
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "로그인")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
}
