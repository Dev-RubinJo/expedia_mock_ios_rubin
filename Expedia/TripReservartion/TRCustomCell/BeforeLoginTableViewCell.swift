//
//  BeforeLoginTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 02/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class BeforeLoginTableViewCell: UITableViewCell {

    @IBOutlet weak var beforeLoginView: UIView!
    @IBOutlet weak var loginOrRegisterButton: UIButton!
    
    
    func updateUI() {
        beforeLoginView.layer.cornerRadius = 5
        beforeLoginView.layer.masksToBounds = true
        loginOrRegisterButton.layer.addBorder([.top], color: UIColor.lightGray, width: 0.5)
    }
}
