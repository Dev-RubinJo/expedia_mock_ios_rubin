//
//  EightPriceHotelTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 02/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class EightPriceHotelTableViewCell: UITableViewCell {

    @IBOutlet weak var imageButton: UIButton!
    
    func updateUI() {
        imageButton.layer.cornerRadius = 10
        imageButton.layer.masksToBounds = true
    }
    
}
