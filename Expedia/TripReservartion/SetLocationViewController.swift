//
//  SetLocationViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 06/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import CoreLocation

class SetLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager!

    
    @IBOutlet weak var backgroundView: UIView!
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func getLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
