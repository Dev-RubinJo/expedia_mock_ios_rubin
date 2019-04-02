//
//  DayDayPriceTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 02/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class DayDayPriceTableViewCell: UITableViewCell {

    @IBOutlet weak var daydayPriceButton: UIButton!
    
    func updateUI() {
        daydayPriceButton.layer.cornerRadius = 10
        daydayPriceButton.layer.masksToBounds = true
    }
    
}
