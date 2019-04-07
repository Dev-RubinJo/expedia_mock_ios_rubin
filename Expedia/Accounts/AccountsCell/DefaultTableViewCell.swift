//
//  DefaultTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 07/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class DefaultTableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitleLabel: UILabel!
    
    // 로그인 비로그인 상황에 따라 나누는 조건문 추가
    func updateUI(_ data: AccountsData, _ section: Int, _ indexPath: Int) {
        self.cellTitleLabel.text = data.cellsIfNLogin[section][indexPath]
    }
    
}
