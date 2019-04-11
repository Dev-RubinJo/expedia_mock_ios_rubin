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
import SwiftyJSON

class RegisterViewController: UIViewController, IndicatorInfoProvider, UITextFieldDelegate {
    
    var data = LoginInfoData()
    
    let lastNameTextField = HoshiTextField(frame: CGRect(x: 10.0, y: 80, width: ((UIScreen.main.bounds.width - 20) / 2) - 10, height: 45))
    let firstNameTextField = HoshiTextField(frame: CGRect(x: ((UIScreen.main.bounds.width - 20) / 2) + 15, y: 80, width: ((UIScreen.main.bounds.width - 20) / 2) - 10, height: 45))
    let emailTextField = HoshiTextField(frame: CGRect(x: 10, y: 135, width: UIScreen.main.bounds.width - 20, height: 45))
    let passwordTextField = HoshiTextField(frame: CGRect(x: 10, y: 190, width: UIScreen.main.bounds.width - 20, height: 45))
    
    @IBOutlet weak var registerButton: UIButton!
    

    func updateUI() {
        self.view.addSubview(lastNameTextField)
        self.view.addSubview(firstNameTextField)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        
        lastNameTextField.placeholder = "  이름(영문)"
        lastNameTextField.placeholderFontScale = 0.77
        lastNameTextField.borderStyle = .roundedRect
        lastNameTextField.placeholderColor = .darkGray
        lastNameTextField.keyboardType = .asciiCapable
        
        
        firstNameTextField.placeholder = "  성(영문)"
        firstNameTextField.placeholderFontScale = 0.77
        firstNameTextField.borderStyle = .roundedRect
        firstNameTextField.placeholderColor = .darkGray
        firstNameTextField.keyboardType = .asciiCapable
        
        emailTextField.placeholder = "  이메일 주소"
        emailTextField.placeholderFontScale = 0.77
        emailTextField.borderStyle = .roundedRect
        emailTextField.placeholderColor = .darkGray
        emailTextField.autocapitalizationType = .none
        emailTextField.keyboardType = .emailAddress
        
        passwordTextField.placeholder = "  비밀번호"
        passwordTextField.placeholderFontScale = 0.77
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholderColor = .darkGray
        passwordTextField.isSecureTextEntry = true
        
        
        registerButton.layer.cornerRadius = 10.0
        registerButton.addTarget(self, action: #selector(register), for: .touchUpInside)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.isEqual(self.lastNameTextField)) {
            self.firstNameTextField.becomeFirstResponder()
        } else if (textField.isEqual(self.firstNameTextField)) {
            self.emailTextField.becomeFirstResponder()
        } else if (textField.isEqual(self.emailTextField)) {
            self.passwordTextField.becomeFirstResponder()
        }
        return true
    }
    func endEdit() {
        self.passwordTextField.resignFirstResponder()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "회원 가입")
    }
    

    @objc func register() {
        let lastName = lastNameTextField.text!
        let firstName = firstNameTextField.text!
        let email = emailTextField.text!
        let password = passwordTextField.text!
        let headers = ["Content-Type": "application/json"]
        let body = ["Email": "\(email)", "Pw": "\(password)", "Name": "\(lastName)\(firstName)"]
        let registerAPIURL = URL(string: "http://www.kaca5.com/expedia/user")
        
        Alamofire.request(registerAPIURL!, method: .post, parameters: body, encoding: JSONEncoding.default, headers: headers).validate().responseJSON { response in
            switch response.result {
            case .success(let data):
                let test = JSON(data)
                print(test["code"])
                if test["code"].intValue == 502 {
                    let message = "중복된 이메일입니다."
                    let alert = UIAlertController(title: "중복된 이메일", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else if test["code"].intValue == 500 {
                    let message = "빈 칸을 채워주세요."
                    let alert = UIAlertController(title: "이름과 비밀번호", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else if test["code"].intValue == 501 {
                    let message = "잘못된 이메일 형식입니다."
                    let alert = UIAlertController(title: "잘못된 이메일 형식", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    let message = "로그인 해주세요."
                    let alert = UIAlertController(title: "회원가입 성공", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
//                    let storyboard = self.storyboard!
//                    let lrNVC = storyboard.instantiateViewController(withIdentifier: "loginOrRegister") as! LoginOrRegisterViewController
//                    self.present(lrNVC, animated: true, completion: nil)
                }
            case .failure(let error):
                print(error)
            }
        }
//        dismiss(animated: true, completion: nil)
    }
//      화면을 터치했을 때 키보드가 내려가는 것 구현
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lastNameTextField.delegate = self
        self.firstNameTextField.delegate = self
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        updateUI()

        // Do any additional setup after loading the view.
    }
}
