//
//  HotelInfoTableViewCell.swift
//  Expedia
//
//  Created by YooBin Jo on 11/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import MapKit
import SwiftyJSON

class HotelInfoTableViewCell: UITableViewCell, UIScrollViewDelegate {

    private let color = UIColor()
    
    @IBOutlet weak var hotelImgViewPager: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var hotelNameLabel: UILabel!
    @IBOutlet weak var startDateTextField: UITextField!
    @IBOutlet weak var endDateTextField: UITextField!
    
    
    
    func updateUI(_ data: JSON, _ imageList: [JSON], _ hotelPrice: String) {
        for index in 0 ..< imageList.count {
            let hotelImage = imageList[index].stringValue
            let hotelImageURL = URL(string: hotelImage)
            let imgData = NSData(contentsOf: hotelImageURL!)
            let image = UIImage(data: imgData! as Data)
            let subView = UIImageView(image: image!)
            subView.frame = hotelImgViewPager.frame
            subView.frame.origin.x = UIScreen.main.bounds.width * CGFloat(index)
            hotelImgViewPager.addSubview(subView)
        }
        hotelImgViewPager.isPagingEnabled = true
        hotelImgViewPager.contentSize = CGSize(
            width: UIScreen.main.bounds.width * CGFloat(imageList.count),
            height: hotelImgViewPager.frame.height
        )
        
        hotelImgViewPager.alwaysBounceVertical = false
        
        pageControl.numberOfPages = imageList.count
        // // // // // // // //
        priceView.layer.addBorder([.bottom], color: self.color.UIColorFromRGB(rgbValue: 0xF6F6F7), width: 1.0)
        
        //////
        let location = CLLocationCoordinate2D(latitude: CLLocationDegrees(data[data.count - 1]["lat"].floatValue), longitude: CLLocationDegrees(data[data.count - 1]["lng"].floatValue))
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        mapView.setRegion(region, animated: true)
        
        let pin = CustomPin(pinTitle: "\(data[data.count - 1]["Name"].stringValue)", pinSubTitle: "\(data[data.count - 1]["Location"].stringValue)", location: location)
        mapView.addAnnotation(pin)
        
        
        //////////////////////
        self.hotelNameLabel.text = data[data.count - 1]["Name"].stringValue
        self.priceLabel.text = "₩\(hotelPrice)"
        
        
        //////////////////////
        
        self.startDateTextField.text = data[data.count - 1]["Sdate"].stringValue
        self.endDateTextField.text = data[data.count - 1]["Edate"].stringValue

    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(floor(hotelImgViewPager.contentOffset.x / hotelImgViewPager.frame.width))
    }
}
class CustomPin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(pinTitle: String, pinSubTitle: String, location: CLLocationCoordinate2D) {
        self.title = pinTitle
        self.subtitle = pinSubTitle
        self.coordinate = location
    }
}
