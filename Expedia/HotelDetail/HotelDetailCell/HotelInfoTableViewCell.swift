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

    
    var hotelImageNum: Int?
    var info: JSON?
    
    
    @IBOutlet weak var hotelImgViewPager: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var infoDetailLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var mapButton: UIButton!
    
    
    func updateUI() {
        self.hotelImageNum = 5
        for index in 0 ..< hotelImageNum! {
            let subView = UIView()
            subView.frame = hotelImgViewPager.frame
            subView.backgroundColor = UIColor(
                red: CGFloat(index * 50) / 255.0,
                green: CGFloat(index * 50) / 255.0,
                blue: CGFloat(index * 50) / 255.0,
                alpha: 1
            )
            subView.frame.origin.x = UIScreen.main.bounds.width * CGFloat(index)
            hotelImgViewPager.addSubview(subView)
        }
        hotelImgViewPager.isPagingEnabled = true
        hotelImgViewPager.contentSize = CGSize(
            width: UIScreen.main.bounds.width * CGFloat(hotelImageNum!),
            height: hotelImgViewPager.frame.height
        )
        
        hotelImgViewPager.alwaysBounceVertical = false
        
        pageControl.numberOfPages = hotelImageNum!
        // // // // // // // //
        priceView.layer.addBorder([.bottom], color: UIColor.lightGray, width: 1.0)
        
        
        let location = CLLocationCoordinate2D(latitude: 37.77, longitude: 136.6)
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        mapView.setRegion(region, animated: true)
        
        let pin = CustomPin(pinTitle: "서울", pinSubTitle: "한국, 서울", location: location)
        mapView.addAnnotation(pin)
        
        
        
        
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(floor(hotelImgViewPager.contentOffset.x / hotelImgViewPager.frame.width))
    }
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
