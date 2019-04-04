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
    let passwardTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 210.0, width: UIScreen.main.bounds.width - 20, height: 45))
    
    let forgetPassward = UIButton(frame: CGRect(x: 90.0, y: 285.0, width: 180, height: 30))
    
    
    func updateUI() {
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwardTextField)
        self.view.addSubview(forgetPassward)
        
        emailTextField.placeholder = " 이메일 주소"
        emailTextField.placeholderFontScale = 0.77
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholderColor = .darkGray
        
        passwardTextField.placeholder = " 비밀번호"
        passwardTextField.placeholderFontScale = 0.77
        passwardTextField.borderStyle = .roundedRect
        passwardTextField.placeholderColor = .darkGray
        
        forgetPassward.setTitle("비밀번호를 잊으셨나요?", for: UIControl.State.normal)
        forgetPassward.setTitleColor(.blue, for: UIControl.State.normal)
        
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
