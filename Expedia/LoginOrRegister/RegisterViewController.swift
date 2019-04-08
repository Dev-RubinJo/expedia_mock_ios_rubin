//
//  RegisterViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 03/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import TextFieldEffects
import Alamofire

class RegisterViewController: UIViewController, IndicatorInfoProvider {
    
    let lastNameTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 145.0, width: ((UIScreen.main.bounds.width - 20) / 2) - 10, height: 45))
    let firstNameTextField = HoshiTextField(frame: CGRect(x: ((UIScreen.main.bounds.width - 20) / 2) + 15, y: 145.0, width: ((UIScreen.main.bounds.width - 20) / 2) - 10, height: 45))
    let emailTextField = HoshiTextField(frame: CGRect(x: 10, y: 200, width: UIScreen.main.bounds.width - 20, height: 45))
    let passwordTextField = HoshiTextField(frame: CGRect(x: 10, y: 255, width: UIScreen.main.bounds.width - 20, height: 45))
    
    

    func updateUI() {
        self.view.addSubview(lastNameTextField)
        self.view.addSubview(firstNameTextField)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        
        lastNameTextField.placeholder = "  이름(영문)"
        lastNameTextField.placeholderFontScale = 0.77
        lastNameTextField.borderStyle = .roundedRect
        lastNameTextField.placeholderColor = .darkGray
        
        firstNameTextField.placeholder = "  성(영문)"
        firstNameTextField.placeholderFontScale = 0.77
        firstNameTextField.borderStyle = .roundedRect
        firstNameTextField.placeholderColor = .darkGray
        
        emailTextField.placeholder = "  이메일 주소"
        emailTextField.placeholderFontScale = 0.77
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholderColor = .darkGray
        
        passwordTextField.placeholder = "  비밀번호"
        passwordTextField.placeholderFontScale = 0.77
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholderColor = .darkGray
        passwordTextField.isSecureTextEntry = true
        
        
        
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "회원 가입")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    


}
