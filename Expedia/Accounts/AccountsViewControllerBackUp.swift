//
//  AccountsViewControllerBackUp.swift
//  Expedia
//
//  Created by YooBin Jo on 08/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import SnapKit

class AccountsViewControllerBackUp: UIViewController {

    
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
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize.height = 1140
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
        button.translatesAutoresizingMaskIntoConstraints = false
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
    let supportView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    let expediaWebButton: UIButton = {
        let button = UIButton()
        button.setTitle("익스피디아 웹사이트", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        //        button.imageEdgeInsets.right = -200
        return button
    }()
    let contactToReserveSupportButton: UIButton = {
        let button = UIButton()
        button.setTitle("예약 지원에 연락하기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        return button
    }()
    let contactToAppSupportButton: UIButton = {
        let button = UIButton()
        button.setTitle("앱 지원에 연락하기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        return button
    }()
    
    let communicationLabel: UILabel = {
        let label = UILabel()
        label.text = "커뮤니케이션"
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let communicationView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    let estimateAppButton: UIButton = {
        let button = UIButton()
        button.setTitle("앱 평가", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        return button
    }()
    let recommendAppButton: UIButton = {
        let button = UIButton()
        button.setTitle("앱 추천하기", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        return button
    }()
    
    
    let legalLabel: UILabel = {
        let label = UILabel()
        label.text = "법적 사항"
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.left
        return label
    }()
    let legalView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    let deletePersonalInfoButton: UIButton = {
        let button = UIButton()
        button.setTitle("개인 정보 삭제", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        return button
    }()
    let termsOfServiceButton: UIButton = {
        let button = UIButton()
        button.setTitle("이용약관", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        return button
    }()
    let privacyPolicyButton: UIButton = {
        let button = UIButton()
        button.setTitle("개인정보 보호정책", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
        return button
    }()
    let legalInfoButton: UIButton = {
        let button = UIButton()
        button.setTitle("법적고지", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .light)
        button.setTitleColor(UIColor.black, for: .normal)
        button.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        button.setImage(UIImage(named: "right-arrow"), for: .normal)
        button.semanticContentAttribute = .forceRightToLeft
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
        
        mainScrollView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 0).isActive = true
        mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainScrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        mainScrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
        //        mainScrollView.snp.makeConstraints { make in
        //            make.top.equalTo(topView.snp.bottom).offset(0)
        //            make.bottom.equalTo(0)
        //            make.leading.equalTo(0)
        //            make.trailing.equalTo(0)
        //            make.width.equalTo(UIScreen.main.bounds.width)
        //        }
        //        self.mainScrollView.addSubview(loginButton)
        //        loginButton.topAnchor.constraint(equalTo: mainScrollView.topAnchor, constant: 15).isActive = true
        //        loginButton.leftAnchor.constraint(equalTo: mainScrollView.leftAnchor, constant: 10).isActive = true
        //        loginButton.rightAnchor.constraint(equalTo: mainScrollView.rightAnchor, constant: 10).isActive = true
        //        loginButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        if isLogin == false {
            
            
            //            loginButton.snp.makeConstraints { make in
            //                make.top.equalTo(15)
            //                make.leading.equalTo(10)
            //                make.trailing.equalTo(10)
            //                make.width.equalTo(UIScreen.main.bounds.width - 20)
            //                make.height.equalTo(60)
            //            }
            //            self.mainScrollView.addSubview(accountLabel)
            //            accountLabel.snp.makeConstraints { make in
            //                make.top.equalTo(loginButton.snp.bottom).offset(10)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.mainScrollView.addSubview(currencyCell)
            //            currencyCell.snp.makeConstraints { make in
            //                make.top.equalTo(accountLabel.snp.bottom).offset(1)
            //                make.leading.equalTo(0)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(60)
            //            }
            //            self.currencyCell.addSubview(currencyLabel)
            //            currencyLabel.snp.makeConstraints { make in
            //                make.top.equalTo(10)
            //                make.leading.equalTo(10)
            //            }
            //            self.currencyCell.addSubview(currencyUnitLabel)
            //            currencyUnitLabel.snp.makeConstraints { make in
            //                make.top.equalTo(currencyLabel.snp.bottom).offset(5)
            //                make.leading.equalTo(10)
            //            }
            //            self.currencyCell.addSubview(countryLabel)
            //            countryLabel.snp.makeConstraints { make in
            //                make.top.equalTo(10)
            //                make.leading.equalTo(UIScreen.main.bounds.width / 2)
            //            }
            //            self.mainScrollView.addSubview(supportLabel)
            //            supportLabel.snp.makeConstraints{ make in
            //                make.top.equalTo(currencyCell.snp.bottom).offset(10)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.mainScrollView.addSubview(supportView)
            //            supportView.snp.makeConstraints { make in
            //                make.top.equalTo(supportLabel.snp.bottom).offset(0)
            //                make.leading.equalTo(0)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(120)
            //            }
            //
            //            self.supportView.addSubview(expediaWebButton)
            //            expediaWebButton.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
            //            expediaWebButton.snp.makeConstraints { make in
            //                make.top.equalTo(0)
            //                make.leading.equalTo(10)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(40)
            //            }
            //            self.supportView.addSubview(contactToReserveSupportButton)
            //            contactToReserveSupportButton.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
            //            contactToReserveSupportButton.snp.makeConstraints { make in
            //                make.top.equalTo(expediaWebButton.snp.bottom).offset(0)
            //                make.leading.equalTo(10)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(40)
            //            }
            //            self.supportView.addSubview(contactToAppSupportButton)
            //            contactToAppSupportButton.snp.makeConstraints { make in
            //                make.top.equalTo(contactToReserveSupportButton.snp.bottom).offset(0)
            //                make.leading.equalTo(10)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(40)
            //            }
            //            self.mainScrollView.addSubview(communicationLabel)
            //            communicationLabel.snp.makeConstraints { make in
            //                make.top.equalTo(supportView.snp.bottom).offset(10)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.mainScrollView.addSubview(communicationView)
            //            communicationView.snp.makeConstraints { make in
            //                make.top.equalTo(communicationLabel.snp.bottom).offset(0)
            //                make.leading.equalTo(0)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(80)
            //            }
            //            self.communicationView.addSubview(estimateAppButton)
            //            estimateAppButton.snp.makeConstraints { make in
            //                make.top.equalTo(0)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.communicationView.addSubview(recommendAppButton)
            //            recommendAppButton.snp.makeConstraints { make in
            //                make.top.equalTo(estimateAppButton.snp.bottom).offset(0)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //
            //
            //            self.mainScrollView.addSubview(legalLabel)
            //            legalLabel.snp.makeConstraints { make in
            //                make.top.equalTo(communicationView.snp.bottom).offset(10)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.mainScrollView.addSubview(legalView)
            //            legalView.snp.makeConstraints { make in
            //                make.top.equalTo(legalLabel.snp.bottom).offset(10)
            //                make.leading.equalTo(0)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(160)
            //            }
            //            self.legalView.addSubview(deletePersonalInfoButton)
            //            deletePersonalInfoButton.snp.makeConstraints { make in
            //                make.top.equalTo(0)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.legalView.addSubview(termsOfServiceButton)
            //            termsOfServiceButton.snp.makeConstraints { make in
            //                make.top.equalTo(deletePersonalInfoButton.snp.bottom).offset(0)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.legalView.addSubview(privacyPolicyButton)
            //            privacyPolicyButton.snp.makeConstraints { make in
            //                make.top.equalTo(termsOfServiceButton.snp.bottom).offset(0)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.legalView.addSubview(legalInfoButton)
            //            legalInfoButton.snp.makeConstraints { make in
            //                make.top.equalTo(privacyPolicyButton.snp.bottom).offset(0)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //
            //
            //        } else if isLogin == true {
            //            self.mainScrollView.addSubview(accountLabel)
            //            accountLabel.snp.makeConstraints { make in
            //                make.top.equalTo(mainScrollView.snp.top).offset(20)
            //                make.leading.equalTo(10)
            //                make.height.equalTo(40)
            //            }
            //            self.mainScrollView.addSubview(currencyCell)
            //            currencyCell.snp.makeConstraints { make in
            //                make.top.equalTo(accountLabel.snp.bottom).offset(1)
            //                make.leading.equalTo(0)
            //                make.trailing.equalTo(0)
            //                make.height.equalTo(60)
            //            }
            //            self.currencyCell.addSubview(currencyLabel)
            //            currencyLabel.snp.makeConstraints { make in
            //                make.top.equalTo(10)
            //                make.leading.equalTo(10)
            //            }
            //            self.currencyCell.addSubview(currencyUnitLabel)
            //            currencyUnitLabel.snp.makeConstraints { make in
            //                make.top.equalTo(currencyLabel.snp.bottom).offset(5)
            //                make.leading.equalTo(10)
            //            }
            //            self.currencyCell.addSubview(countryLabel)
            //            countryLabel.snp.makeConstraints { make in
            //                make.top.equalTo(10)
            //                make.leading.equalTo(UIScreen.main.bounds.width / 2)
            //            }
            //
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.mainScrollView.delegate = self
        updateUI(isLogin: self.isLogin)
    }
    
}
//
//extension AccountsViewController: UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("scroll")
//    }
//}
