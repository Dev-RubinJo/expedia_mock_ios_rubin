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
    
    let topView = UIView()
    let topViewLabel = UILabel()
    
    let mainScrollView = UIScrollView()
    
    let loginButton: UIButton = {
        let color = UIColor()

        let button = UIButton(type: .custom)
        button.backgroundColor = color.UIColorFromRGB(rgbValue: 0x015AEB)
        button.setTitle("익스피디아에 로그인", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.regular)
        button.setImage(UIImage(named: "LoginToExpedia"), for: UIControl.State.normal)
        return button
    }()
    
    let accountLabel = UILabel()
    let currencyCell = UIView()
    
    //    @IBOutlet weak var accountTableView: UITableView!
    
    func updateUI() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loginButton)
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width - 20)
            make.height.equalTo(60)
        }
//        accountTableView.delegate = self
//        accountTableView.dataSource = self
        
//        let currencyCellNibName = UINib(nibName: "CurrencyTableViewCell", bundle: nil)
//        accountTableView.register(currencyCellNibName, forCellReuseIdentifier: "currencyCell")
//        let withRightArrowCellNibName = UINib(nibName: "WithRightArrowTableViewCell", bundle: nil)
//        accountTableView.register(withRightArrowCellNibName, forCellReuseIdentifier: "withRightRowCell")
//        let defaultCellNibName = UINib(nibName: "DefaultTableViewCell", bundle: nil)
//        accountTableView.register(defaultCellNibName, forCellReuseIdentifier: "defaultCell")
        
        // Do any additional setup after loading the view.
    }

}

/*
extension AccountsViewController: UITableViewDelegate, UITableViewDataSource {

    
    // 반드시 로그인과 비로그인 상태의 변화를 꼭 주어야할 것

    func numberOfSections(in tableView: UITableView) -> Int {
        return data.sectionsIfNLogin.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data.sectionsIfNLogin[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.cellsIfNLogin[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
}
*/
