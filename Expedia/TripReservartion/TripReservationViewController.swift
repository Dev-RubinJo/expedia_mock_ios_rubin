//
//  ViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 01/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class TripReservationViewController: UIViewController {

    @IBOutlet weak var topLogoView: UIView!
    @IBOutlet weak var reservateHotelButton: UIButton!
    
    
    
    func updateUI() {
        self.topLogoView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
        self.reservateHotelButton.layer.addBorder([.bottom], color: UIColorFromRGB(rgbValue: 0xFFCB06), width: 3.0)
    }
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        // Do any additional setup after loading the view.
    }


}
