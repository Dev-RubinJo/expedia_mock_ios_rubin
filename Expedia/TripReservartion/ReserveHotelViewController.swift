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
    
    var inputDateButtonText: String = "날짜 선택"
    
    var inputPeopleNumberButtonText: String = "인원 수"
    
    @IBOutlet weak var inputDestinationButton: UIButton!
    @IBOutlet weak var inputDateButton: UIButton!
    @IBOutlet weak var inputPeopleNumberButton: UIButton!
    
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        self.navigationItem.title = "호텔 예약하기"
        
        let inputButtonFont: UIFont! = UIFont(name: "HelveticaNeue", size: 17.0)
        inputDestinationButton.setTitle("\(inputDestinationButtonText)", for: UIControl.State.normal)
        inputDestinationButton.titleLabel?.font = inputButtonFont
        inputDestinationButton.setTitleColor(.lightGray, for: UIControl.State.normal)
        inputDestinationButton.layer.borderColor = UIColor.lightGray.cgColor
        inputDestinationButton.layer.borderWidth = 1.0
        inputDestinationButton.layer.cornerRadius = 10.0
        inputDestinationButton.layer.masksToBounds = true
        
        inputDateButton.setTitle("\(inputDateButtonText)", for: UIControl.State.normal)
        inputDateButton.titleLabel?.font = inputButtonFont
        inputDateButton.setTitleColor(.lightGray, for: UIControl.State.normal)
        inputDateButton.layer.borderColor = UIColor.lightGray.cgColor
        inputDateButton.layer.borderWidth = 1.0
        inputDateButton.layer.cornerRadius = 10.0
        inputDateButton.layer.masksToBounds = true
        
        inputPeopleNumberButton.setTitle("\(inputPeopleNumberButtonText)", for: UIControl.State.normal)
        inputPeopleNumberButton.titleLabel?.font = inputButtonFont
        inputPeopleNumberButton.setTitleColor(.lightGray, for: UIControl.State.normal)
        inputPeopleNumberButton.layer.borderColor = UIColor.lightGray.cgColor
        inputPeopleNumberButton.layer.borderWidth = 1.0
        inputPeopleNumberButton.layer.cornerRadius = 10.0
        inputPeopleNumberButton.layer.masksToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

}
