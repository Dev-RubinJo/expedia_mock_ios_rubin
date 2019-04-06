//
//  TripReservationTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 06/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class TripReservationTableViewCell: UITableViewCell {

    let cellButton: UIButton = UIButton(frame: CGRect(x: 10.0, y: 10.0, width: UIScreen.main.bounds.width - 20, height: 230.0))
    let cellTitleLabel: UILabel = UILabel(frame: CGRect(x: 20.0, y: 170.0, width: UIScreen.main.bounds.width - 40, height: 25.0))
    let cellContentLabel: UILabel = UILabel(frame: CGRect(x: 20.0, y: 205.0, width: UIScreen.main.bounds.width, height: 20.0))
    
    func updateUI() {
        self.addSubview(cellButton)
        self.addSubview(cellTitleLabel)
        self.addSubview(cellContentLabel)
    }
    
}
