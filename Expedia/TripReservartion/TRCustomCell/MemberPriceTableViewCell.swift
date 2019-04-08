//
//  MemberPriceTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 08/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class MemberPriceTableViewCell: UITableViewCell {

    @IBOutlet weak var MemberPriceButton: UIButton!
    @IBOutlet weak var MemberPriceIcon: UIImageView!
    
    func updateUI() {
        MemberPriceButton.layer.cornerRadius = 10
        MemberPriceButton.layer.masksToBounds = true
        MemberPriceIcon.layer.cornerRadius = MemberPriceIcon.frame.width / 2
    }
}
