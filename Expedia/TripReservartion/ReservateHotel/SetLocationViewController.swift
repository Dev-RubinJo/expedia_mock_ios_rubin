//
//  SetLocationViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 06/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class SetLocationViewController: UIViewController {
    
    var location: String?

    
    @IBOutlet weak var backgroundView: UIView!
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
