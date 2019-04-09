//
//  EightPriceHotelViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 07/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import SwiftyJSON


class EightPriceHotelViewController: UIViewController {
    
    var hotelData: JSON?
    let color = UIColor()

    @IBOutlet weak var hotelListTable: UITableView!
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hotelListTable.delegate = self
        self.hotelListTable.dataSource = self
        self.hotelListTable.backgroundColor = color.UIColorFromRGB(rgbValue: 0xF1EFF6)
        self.hotelListTable.separatorColor = color.UIColorFromRGB(rgbValue: 0xF1EFF6)
        
        let eightPriceHotelNibName = UINib(nibName: "HotelListTableViewCell", bundle: nil)
        hotelListTable.register(eightPriceHotelNibName, forCellReuseIdentifier: "specialPriceHotelCell")

        // Do any additional setup after loading the view.
    }

}
extension EightPriceHotelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let hotelList = tableView.dequeueReusableCell(withIdentifier: "specialPriceHotelCell", for: indexPath) as? HotelListTableViewCell else { return UITableViewCell() }
        hotelList.updateUI(hotelData!, indexPath.row)
        hotelList.layer.cornerRadius = 5
        hotelList.layer.masksToBounds = true
        return hotelList
    }
}
