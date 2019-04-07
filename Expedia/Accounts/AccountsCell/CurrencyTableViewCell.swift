//
//  CurrencyTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 07/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {

    // 추후 국가별로 선택할 수 있는 화면을 만들게 되면 드때 설정할 수 있는 updateUI함수 만들기.
    
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var currencyUnitLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countrySelectButton: UIButton!
    
    
    
}
