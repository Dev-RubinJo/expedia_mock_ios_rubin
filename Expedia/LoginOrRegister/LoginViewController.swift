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
import SwiftyJSON


class LoginViewController: UIViewController, IndicatorInfoProvider {
    
    let color = UIColor()
    let data = LoginInfoData()
    var token: String?
    
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
        
        loginButton.addTarget(self, action: #selector(pressLoginButton), for: .touchUpInside)

        
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        self.view.addSubview(forgetPassword)
        self.view.addSubview(loginButton)
    }
    
    @objc func pressLoginButton() {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        let headers = ["Content-Type": "application/json"]
        let body = ["Email": "\(email)", "Pw": "\(password)"]
        let loginAPIURL = URL(string: "http://www.kaca5.com/expedia/login")
        
        Alamofire.request(loginAPIURL!, method: .post, parameters: body, encoding: JSONEncoding.default, headers: headers).validate().responseJSON { response in
            switch response.result {
            case .success(let data):
                let json = JSON(data)
                if json["code"].intValue == 100 {
                    self.token = json["token"]["jwt"].stringValue
                    self.data.loginStatus()
                    self.data.save(self.token!)
                    self.data.saveLogin()
                    self.dismiss(animated: true, completion: nil)
                } else if json["code"].intValue == 503 {
                    let message = "회원정보가 존재하지 않습니다."
                    let alert = UIAlertController(title: "로그인 오류", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                } else if json["code"].intValue == 508 {
                    let message = "비밀번호가 일치하지 않습니다."
                    let alert = UIAlertController(title: "로그인 오류", message: message, preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                }
            case .failure(let error):
                print(error)
//                let message = "이메일 혹은 비밀번호가 잘못되었습니다."
//                let alert = UIAlertController(title: "로그인 오류", message: message, preferredStyle: .alert)
//                let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
//                alert.addAction(okAction)
//                self.present(alert, animated: true, completion: nil)
            }
        }
        
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
/*
 let request = Alamofire.request(movieAPI, method: .get, parameters: [:], encoding: URLEncoding.default, headers: headers).validate().responseJSON { response in
 switch response.result {
 case .success(let movieJSON):
 self.json = JSON(movieJSON)
 print(self.json!)
 case .failure(let error):
 print(error)
 }
 let storyboard = self.storyboard!
 let movieTableVC = storyboard.instantiateViewController(withIdentifier: "movieInfoVC") as! MovieInfoViewController
 movieTableVC.movieInfoJson = self.json!
 self.navigationController?.pushViewController(movieTableVC, animated: true)
 }
 }
 */
