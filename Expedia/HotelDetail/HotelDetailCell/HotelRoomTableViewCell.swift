//
//  HotelRoomTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 13/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import SwiftyJSON

class HotelRoomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var hotelRoomImageView: UIImageView!
    @IBOutlet weak var hotelRoomGradeLabel: UILabel!
    @IBOutlet weak var hotelRoomBedLabel: UILabel!
    @IBOutlet weak var percentView: UIView!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var oneDayPriceLabel: UILabel!
    @IBOutlet weak var choiceButton: UIButton!
    
    func updateUI(_ info: JSON, _ indexPath: Int) {
        self.hotelRoomGradeLabel.text = info[indexPath]["Grade"].stringValue
        self.hotelRoomBedLabel.text = info[indexPath]["Bed"].stringValue
        self.oneDayPriceLabel.text = "1박에 ₩\(info[indexPath]["discounted_Price"].stringValue)"
        
        self.percentView.layer.cornerRadius = 3
        self.percentView.layer.masksToBounds = true
        
        self.percentLabel.text = "-\(info[indexPath]["Percentage"].intValue)%"
        
        self.choiceButton.layer.cornerRadius = 5
        self.choiceButton.layer.masksToBounds = true
        
        self.hotelRoomImageView.layer.cornerRadius = 10
        self.hotelRoomImageView.layer.masksToBounds = true
        
        let hotelImage = info[indexPath]["image"].stringValue
        let hotelImageURL = URL(string: hotelImage)
        let imgData = NSData(contentsOf: hotelImageURL!)
        let image = UIImage(data: imgData! as Data)
        self.hotelRoomImageView.image = image!
    }
    
}
