//
//  ReserveHotelViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 05/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class ReserveHotelViewController: UIViewController {
    
    var inputDestinationButtonText: String = "목적지 입력"
    var destination: String?
    
    
    @IBOutlet weak var inputDestinationButton: UIButton!
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        self.navigationItem.title = "호텔 예약하기"
        let inputDestinationButtonFont: UIFont! = UIFont(name: "HelveticaNeue", size: 17.0)
        inputDestinationButton.setTitle("\(inputDestinationButtonText)", for: UIControl.State.normal)
        inputDestinationButton.titleLabel?.font = inputDestinationButtonFont
        inputDestinationButton.setTitleColor(.lightGray, for: UIControl.State.normal)
        inputDestinationButton.layer.borderColor = UIColor.lightGray.cgColor
        inputDestinationButton.layer.borderWidth = 1.0
        inputDestinationButton.layer.cornerRadius = 10.0
        inputDestinationButton.layer.masksToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

}
