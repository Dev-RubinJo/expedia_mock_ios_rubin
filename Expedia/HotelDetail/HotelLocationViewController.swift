//
//  HotelLocationViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 23/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import MapKit

class HotelLocationViewController: UIViewController {
    
    var lat: Float?
    var lon: Float?
    var name: String?
    var subName: String?
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var titleBar: UINavigationItem!
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func updateUI() {
        let location = CLLocationCoordinate2D(latitude: CLLocationDegrees(self.lat!), longitude: CLLocationDegrees(self.lon!))
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        mapView.setRegion(region, animated: true)
        let pin = CustomPin(pinTitle: "\(self.name!)", pinSubTitle: "\(self.subName!)", location: location)
        mapView.addAnnotation(pin)
        
        self.titleBar.title = self.name!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
        // Do any additional setup after loading the view.
    }

}
