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
    @IBOutlet weak var menuListTable: UITableView!
    
    
    
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
        
        menuListTable.delegate = self
        menuListTable.dataSource = self
        
        self.updateUI()
        
        let beforeLoginNibName = UINib(nibName: "BeforeLoginTableViewCell", bundle: nil)
        menuListTable.register(beforeLoginNibName, forCellReuseIdentifier: "beforeLoginTVC")
        let todayPriceNibName = UINib(nibName: "TodayPriceTableViewCell", bundle: nil)
        menuListTable.register(todayPriceNibName, forCellReuseIdentifier: "todayPriceTVC")
        let eightPriceNibName = UINib(nibName: "EightPriceHotelTableViewCell", bundle: nil)
        menuListTable.register(eightPriceNibName, forCellReuseIdentifier: "eightPriceTVC")
        
    }


}
extension TripReservationViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let beforeLoginCell = menuListTable.dequeueReusableCell(withIdentifier: "beforeLoginTVC", for: indexPath) as? BeforeLoginTableViewCell else { return UITableViewCell() }
            beforeLoginCell.updateUI()
            return beforeLoginCell
        } else if indexPath.row == 1 {
            guard let todayPriceCell = menuListTable.dequeueReusableCell(withIdentifier: "todayPriceTVC", for: indexPath) as? TodayPriceTableViewCell else { return UITableViewCell() }
            return todayPriceCell
        } else {
            guard let eightPriceCell = menuListTable.dequeueReusableCell(withIdentifier: "eightPriceTVC", for: indexPath) as? EightPriceHotelTableViewCell else { return UITableViewCell() }
            eightPriceCell.updateUI()
            return eightPriceCell
        }
        return UITableViewCell()
    }
    
    
}
