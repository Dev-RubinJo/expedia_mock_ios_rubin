//
//  HotelDetailViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 11/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import MapKit
import SwiftyJSON

class HotelDetailViewController: UIViewController {
    
    var data: JSON?
    
    @IBOutlet weak var hotelInfoTableView: UITableView!
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hotelInfoTableView.delegate = self
        self.hotelInfoTableView.dataSource = self

        // Do any additional setup after loading the view.
        
        let hotelInfoNibName = UINib(nibName: "HotelInfoTableViewCell", bundle: nil)
        self.hotelInfoTableView.register(hotelInfoNibName, forCellReuseIdentifier: "hotelInfoTableViewCell")
    }


    

}
extension HotelDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let hotelInfo = tableView.dequeueReusableCell(withIdentifier: "hotelInfoTableViewCell", for: indexPath) as? HotelInfoTableViewCell else { return UITableViewCell() }
        hotelInfo.updateUI()
//        guard let hotelList = tableView.dequeueReusableCell(withIdentifier: "hotelInfoTableViewCell", for: indexPath) as? HotelListTableViewCell else { return UITableViewCell() }
//        hotelList.updateUI(hotelData!, indexPath.row)
//        return hotelList
        return hotelInfo
    }
    
    
}
