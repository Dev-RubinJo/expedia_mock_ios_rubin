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
    
    
    func updateUI() {
        self.topLogoView.layer.borderColor = UIColor.lightGray.cgColor
        self.topLogoView.layer.borderWidth = 1.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

