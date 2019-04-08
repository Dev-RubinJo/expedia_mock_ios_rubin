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
import Alamofire


class LoginViewController: UIViewController, IndicatorInfoProvider {
    
    let color = UIColor()
    let data = LoginInfoData()
    
    let emailTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 145.0, width: UIScreen.main.bounds.width - 20, height: 45.0))
    let passwordTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 210.0, width: UIScreen.main.bounds.width - 20, height: 45))
    
    let forgetPassword = UIButton(frame: CGRect(x: 10.0, y: 275.0, width: UIScreen.main.bounds.width - 20, height: 30))
    let loginButton = UIButton(frame: CGRect(x: 10.0, y: 305, width: UIScreen.main.bounds.width - 20, height: 45))
    
    
    func updateUI() {
        emailTextField.placeholder = "  이메일 주소"
        emailTextField.placeholderFontScale = 0.77
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholderColor = .darkGray
        
        
        passwordTextField.placeholder = "  비밀번호"
        passwordTextField.placeholderFontScale = 0.77
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholderColor = .darkGray
        passwordTextField.isSecureTextEntry = true
        
        
        let passwordTitle: UIFont! = UIFont(name: "HelveticaNeue", size: 15)
        forgetPassword.setTitle("비밀번호를 잊으셨나요?", for: UIControl.State.normal)
        forgetPassword.titleLabel?.font = passwordTitle
        forgetPassword.setTitleColor(.blue, for: UIControl.State.normal)
        
        
        let loginTitle: UIFont! = UIFont(name: "HelveticaNeue-bold", size: 15)
        loginButton.setTitle("로그인", for: UIControl.State.normal)
        loginButton.titleLabel?.font = loginTitle
        loginButton.setTitleColor(.white, for: UIControl.State.normal)
        loginButton.backgroundColor = .blue
        loginButton.layer.cornerRadius = 10
        loginButton.layer.masksToBounds = true
        
//        loginButton.addTarget(self, action: #selector(loginButtonTest), for: .touchUpInside)

        
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(forgetPassword)
        self.view.addSubview(loginButton)
    }
//    @objc func loginButtonTest() {
//        dismiss(animated: true, completion: nil)
//    }
    
    // 상단 탭의 이름 설정.
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "로그인")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
}
