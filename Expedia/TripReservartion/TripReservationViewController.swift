//
//  ViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 01/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class TripReservationViewController: UIViewController {
    
    let reservateHotelButtonColor: UIColor = UIColor()

    @IBOutlet weak var topLogoView: UIView!
    @IBOutlet weak var reservateHotelButton: UIButton!
    @IBOutlet weak var menuListTable: UITableView!
    @IBAction func reservationHottelButtonAction(_ sender: Any) {
    }
    
    func updateUI() {
        self.topLogoView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
        self.reservateHotelButton.layer.addBorder([.bottom], color: reservateHotelButtonColor.UIColorFromRGB(rgbValue: 0xFFCB06), width: 3.0)
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
        let daydayPriceNibName = UINib(nibName: "DayDayPriceTableViewCell", bundle: nil)
        menuListTable.register(daydayPriceNibName, forCellReuseIdentifier: "daydayPriceTVC")
        let limitedPriceNibName = UINib(nibName: "LimitedDatePriceTableViewCell", bundle: nil)
        menuListTable.register(limitedPriceNibName, forCellReuseIdentifier: "limitedDatePriceTVC")
        
    }
    
    @objc func presentLoginOrRegisterVC() {
        performSegue(withIdentifier: "showLoginOrRegisterVC1", sender: nil)
    }


}
extension TripReservationViewController: UITableViewDelegate, UITableViewDataSource {
   
    let data = TripReservationCellData()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let beforeLoginCell = menuListTable.dequeueReusableCell(withIdentifier: "beforeLoginTVC", for: indexPath) as? BeforeLoginTableViewCell else { return UITableViewCell() }
            beforeLoginCell.updateUI()
            beforeLoginCell.loginOrRegisterButton.addTarget(self, action: #selector(presentLoginOrRegisterVC), for: .touchUpInside)
            return beforeLoginCell
        } else if indexPath.row == 1 {
            guard let todayPriceCell = menuListTable.dequeueReusableCell(withIdentifier: "todayPriceTVC", for: indexPath) as? TodayPriceTableViewCell else { return UITableViewCell() }
            return todayPriceCell
        } else if indexPath.row == 2 {
            guard let eightPriceCell = menuListTable.dequeueReusableCell(withIdentifier: "eightPriceTVC", for: indexPath) as? EightPriceHotelTableViewCell else { return UITableViewCell() }
            eightPriceCell.updateUI()
            return eightPriceCell
        } else if indexPath.row == 3 {
            guard let daydayPriceCell = menuListTable.dequeueReusableCell(withIdentifier: "daydayPriceTVC", for: indexPath) as? DayDayPriceTableViewCell else { return UITableViewCell() }
            daydayPriceCell.updateUI()
            return daydayPriceCell
        } else {
            guard let limitedPriceCell = menuListTable.dequeueReusableCell(withIdentifier: "limitedDatePriceTVC", for: indexPath) as? LimitedDatePriceTableViewCell else { return UITableViewCell() }
            limitedPriceCell.updateUI()
            return limitedPriceCell
        }
        return UITableViewCell()
    }
    
    
}
