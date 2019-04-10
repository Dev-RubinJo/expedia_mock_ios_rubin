//
//  HotelListTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 09/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import SwiftyJSON

class HotelListTableViewCell: UITableViewCell {
    
    var imageURL: URL?
    let color = UIColor()

    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var hotelImg: UIImageView!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var percentView: UIView!
    @IBOutlet weak var hotelNameLabel: UILabel!
    @IBOutlet weak var hotelLocationLabel: UILabel!
    @IBOutlet weak var hotelPriceLabel: UILabel!
    
    func updateUI(_ info: JSON, _ indexPath: Int) {
        
        self.backgroundColor = color.UIColorFromRGB(rgbValue: 0xF1EFF6)
        
        self.baseView.layer.cornerRadius = 5
        self.baseView.layer.masksToBounds = true
        
//        self.hotelImg.layer.cornerRadius = 5
        
        
        let percentText = info[indexPath]["Percentage"].intValue
        let hotelNameText = info[indexPath]["Name"].stringValue
        let hotelLocationText = info[indexPath]["ShortL"].stringValue
        let hotelPriceText = info[indexPath]["Priced"].stringValue
        
        self.percentView.backgroundColor = UIColor.green
        self.percentView.layer.cornerRadius = 10
        
        self.percentLabel.text = "\(percentText)%"
        self.hotelNameLabel.text = hotelNameText
        self.hotelLocationLabel.text = hotelLocationText
        self.hotelPriceLabel.text = hotelPriceText
        
        
    }
    
}
