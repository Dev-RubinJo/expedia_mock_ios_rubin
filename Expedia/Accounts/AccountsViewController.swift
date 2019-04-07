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
    
    
    let data = AccountsData()
    var isLogin = false
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    //(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
    let topViewLabel: UILabel = {
        
        let label = UILabel()
        label.text = "계정"
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let mainScrollView: UIScrollView = {
        let color = UIColor()
        let scrollView = UIScrollView()
        scrollView.backgroundColor = color.UIColorFromRGB(rgbValue: 0xF1EFF6)
        return scrollView
    }()
    
    let loginButton: UIButton = {
        let color = UIColor()

        let button = UIButton(type: .custom)
        button.backgroundColor = color.UIColorFromRGB(rgbValue: 0x015AEB)
        button.setTitle("익스피디아에 로그인", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.regular)
        button.setImage(UIImage(named: "LoginToExpedia"), for: UIControl.State.normal)
        button.imageEdgeInsets.left = -40
        button.layer.cornerRadius = 10.0
        return button
    }()
    
    let accountLabel: UILabel = {
        let label = UILabel()
        label.text = "계정"
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let currencyCell: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    let currencyLabel: UILabel = {
        let label = UILabel()
        label.text = "통화"
        label.font = UIFont.systemFont(ofSize: 15, weight: .ultraLight)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let currencyUnitLabel: UILabel = {
        let label = UILabel()
        label.text = "KRW"
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let countryLabel: UILabel = {
        let label = UILabel()
        label.text = "국가"
        label.font = UIFont.systemFont(ofSize: 15, weight: .ultraLight)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let chooseCountryButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    let modifyAccountView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    let modifyAccountButton: UIButton = {
        let button = UIButton()
        return button
    }()
    let supportLabel: UILabel = {
        let label = UILabel()
        label.text = "고객 지원"
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let expediaWebView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    let expediaWebButton: UIButton = {
        let button = UIButton()
        button.setTitle("익스피디아 웹사이트", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.imageEdgeInsets.right = 10
        return button
    }()
    
    func updateUI(isLogin: Bool) {
        
        self.view.addSubview(topView)
        self.topView.addSubview(topViewLabel)
        self.view.addSubview(mainScrollView)
        
        topView.snp.makeConstraints { make in
            make.top.equalTo(37)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.height.equalTo(50)
        }
        topViewLabel.snp.makeConstraints{ make in
            make.top.equalTo(topView.snp_top).offset(5)
            make.leading.equalTo(topView.snp_leading).offset(10)
            make.trailing.equalTo(topView.snp_trailing).offset(-10)
            make.bottom.equalTo(topView.snp_bottom).offset(5)
        }
        
        mainScrollView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(0)
            make.height.equalTo(1140)
            make.width.equalTo(UIScreen.main.bounds.width)
        }
        
        
        if isLogin == false {
            self.mainScrollView.addSubview(loginButton)
            loginButton.snp.makeConstraints { make in
                make.top.equalTo(15)
                make.leading.equalTo(10)
                make.trailing.equalTo(10)
                make.width.equalTo(UIScreen.main.bounds.width - 20)
                make.height.equalTo(60)
            }
            self.mainScrollView.addSubview(accountLabel)
            accountLabel.snp.makeConstraints { make in
                make.top.equalTo(loginButton.snp.bottom).offset(10)
                make.leading.equalTo(10)
                make.height.equalTo(40)
            }
            self.mainScrollView.addSubview(currencyCell)
            currencyCell.snp.makeConstraints { make in
                make.top.equalTo(accountLabel.snp.bottom).offset(1)
                make.leading.equalTo(0)
                make.trailing.equalTo(0)
                make.height.equalTo(60)
            }
            self.currencyCell.addSubview(currencyLabel)
            currencyLabel.snp.makeConstraints { make in
                make.top.equalTo(10)
                make.leading.equalTo(10)
            }
            self.currencyCell.addSubview(currencyUnitLabel)
            currencyUnitLabel.snp.makeConstraints { make in
                make.top.equalTo(currencyLabel.snp.bottom).offset(5)
                make.leading.equalTo(10)
            }
            self.currencyCell.addSubview(countryLabel)
            countryLabel.snp.makeConstraints { make in
                make.top.equalTo(10)
                make.leading.equalTo(UIScreen.main.bounds.width / 2)
            }
            self.mainScrollView.addSubview(supportLabel)
            supportLabel.snp.makeConstraints{ make in
                make.top.equalTo(currencyCell.snp.bottom).offset(10)
                make.leading.equalTo(10)
                make.height.equalTo(40)
            }
            self.mainScrollView.addSubview(expediaWebView)
            expediaWebView.snp.makeConstraints { make in
                make.top.equalTo(supportLabel.snp.bottom).offset(0)
                make.leading.equalTo(0)
                make.trailing.equalTo(0)
                make.height.equalTo(40)
            }
            self.expediaWebView.addSubview(expediaWebButton)
            expediaWebButton.snp.makeConstraints { make in
                make.top.equalTo(5)
                make.leading.equalTo(10)
                make.trailing.equalTo(0)
            }
            
            
        } else if isLogin == true {
            self.mainScrollView.addSubview(accountLabel)
            accountLabel.snp.makeConstraints { make in
                make.top.equalTo(mainScrollView.snp.top).offset(10)
                make.leading.equalTo(10)
                make.height.equalTo(40)
            }
            self.mainScrollView.addSubview(currencyCell)
            currencyCell.snp.makeConstraints { make in
                make.top.equalTo(accountLabel.snp.bottom).offset(1)
                make.leading.equalTo(0)
                make.trailing.equalTo(0)
                make.height.equalTo(60)
            }
            self.currencyCell.addSubview(currencyLabel)
            currencyLabel.snp.makeConstraints { make in
                make.top.equalTo(10)
                make.leading.equalTo(10)
            }
            self.currencyCell.addSubview(currencyUnitLabel)
            currencyUnitLabel.snp.makeConstraints { make in
                make.top.equalTo(currencyLabel.snp.bottom).offset(5)
                make.leading.equalTo(10)
            }
            self.currencyCell.addSubview(countryLabel)
            countryLabel.snp.makeConstraints { make in
                make.top.equalTo(10)
                make.leading.equalTo(UIScreen.main.bounds.width / 2)
            }
            
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(isLogin: self.isLogin)
    }

}

