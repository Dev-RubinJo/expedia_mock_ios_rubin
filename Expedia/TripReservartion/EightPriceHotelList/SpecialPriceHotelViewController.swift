//
//  EightPriceHotelViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 07/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class SpecialPriceHotelViewController: UIViewController {
    
    var hotelData: JSON?
    var viewControllerTitle: Array<String>?
    var describe: Array<String>?
    var indexPath: Int?
    var hotelInfo: JSON?
    var hotelImageList: [JSON]?
    let color = UIColor()
    
    

    @IBOutlet weak var titleBar: UINavigationItem!
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
        let describeHotelNibName = UINib(nibName: "DescribeTableViewCell", bundle: nil)
        hotelListTable.register(describeHotelNibName, forCellReuseIdentifier: "describeCell")

        self.titleBar.title = viewControllerTitle![indexPath!]
        // Do any additional setup after loading the view.
    }

}
extension SpecialPriceHotelViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelData!.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let describeCell = tableView.dequeueReusableCell(withIdentifier: "describeCell", for: indexPath) as? DescribeTableViewCell else { return UITableViewCell() }
            describeCell.updateUI(viewControllerTitle!, describe!, self.indexPath!)
            return describeCell
        } else {
            guard let hotelList = tableView.dequeueReusableCell(withIdentifier: "specialPriceHotelCell", for: indexPath) as? HotelListTableViewCell else { return UITableViewCell() }
            hotelList.updateUI(hotelData!, indexPath.row - 1)
            return hotelList
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row > 0 {

            Alamofire.request(URL(string: "http://www.kaca5.com/expedia/discounted_more?Hno=\(self.hotelData![indexPath.row - 1]["Hno"].intValue)")!, method: .get).validate().responseJSON { response in
                switch response.result {
                case .success(let data):
                    let jsonData = JSON(data)
                    self.hotelInfo = jsonData["result"]
                case .failure(let error):
                    print(error)
                }
                Alamofire.request(URL(string: "http://www.kaca5.com/expedia/hotel_image?Hno=\(self.hotelData![indexPath.row - 1]["Hno"].intValue)")!, method: .get).validate().responseJSON { response in
                    switch response.result {
                    case .success(let data):
                        let imageData = JSON(data)
                        let imageList = imageData["result"].arrayValue
                        self.hotelImageList = imageList
                    case .failure(let error):
                        print(error)
                    }
                    let storyboard = self.storyboard!
                    let hotelDetailVC = storyboard.instantiateViewController(withIdentifier: "hotelDetailVC") as! HotelDetailViewController
                    hotelDetailVC.data = self.hotelInfo!
                    hotelDetailVC.hotelPrice = self.hotelData![indexPath.row - 1]["discounted_Price"].stringValue
                    hotelDetailVC.hotelNumber = self.hotelData![indexPath.row - 1]["Hno"].intValue
                    hotelDetailVC.imageData = self.hotelImageList
                    self.present(hotelDetailVC, animated: true, completion: nil)
                }
            }
        }
    }
}
