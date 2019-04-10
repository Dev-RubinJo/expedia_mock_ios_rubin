//
//  ReserveHotelViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 05/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit
import TextFieldEffects

class ReserveHotelViewController: UIViewController {
    
    var inputDestinationButtonText: String = "목적지 입력"
    var destination: String?
    
    var inputDateButtonText: String = "날짜 선택"
    
    private var startDatePicker: UIDatePicker?
    private var endDatePicker: UIDatePicker?
    
    var inputPeopleNumberButtonText: String = "인원 수"
    var peopleNumber: String = "1명"
    
    @IBOutlet weak var inputDestinationButton: UIButton!
    @IBOutlet weak var inputDateView: UIView!
    @IBOutlet weak var inputPeopleNumberButton: UIButton!
    
    @IBOutlet weak var startDateTextField: HoshiTextField!
    @IBOutlet weak var endDateTextField: HoshiTextField!
    
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
        inputDestinationButton.addTarget(self, action: #selector(presentLocationViewController), for: .touchUpInside)
        
        inputDateView.layer.borderColor = UIColor.lightGray.cgColor
        inputDateView.layer.borderWidth = 1.0
        inputDateView.layer.cornerRadius = 10.0
        inputDateView.layer.masksToBounds = true
        
        
        startDatePicker = UIDatePicker()
        startDatePicker?.datePickerMode = .date
        startDatePicker?.addTarget(self, action: #selector(startDateChanged(datePicker:)), for: .valueChanged)
        
        endDatePicker = UIDatePicker()
        endDatePicker?.datePickerMode = .date
        endDatePicker?.addTarget(self, action: #selector(endDateChanged(datePicker:)), for: .valueChanged)
        
        startDateTextField.inputView = startDatePicker
        endDateTextField.inputView = endDatePicker
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        self.view.addGestureRecognizer(tapGesture)
        
//        inputDateButton.setTitle("\(inputDateButtonText)", for: UIControl.State.normal)
//        inputDateButton.titleLabel?.font = inputButtonFont
//        inputDateButton.setTitleColor(.lightGray, for: UIControl.State.normal)
//        inputDateButton.layer.borderColor = UIColor.lightGray.cgColor
//        inputDateButton.layer.borderWidth = 1.0
//        inputDateButton.layer.cornerRadius = 10.0
//        inputDateButton.layer.masksToBounds = true
//        inputDateButton.addTarget(self, action: #selector(presentSetDatesViewController), for: .touchUpInside)
        
        inputPeopleNumberButton.setTitle("\(inputPeopleNumberButtonText)", for: UIControl.State.normal)
        inputPeopleNumberButton.titleLabel?.font = inputButtonFont
        inputPeopleNumberButton.setTitleColor(.lightGray, for: UIControl.State.normal)
        inputPeopleNumberButton.layer.borderColor = UIColor.lightGray.cgColor
        inputPeopleNumberButton.layer.borderWidth = 1.0
        inputPeopleNumberButton.layer.cornerRadius = 10.0
        inputPeopleNumberButton.layer.masksToBounds = true
    }
    
    @objc func presentLocationViewController() {
        let storyboard = self.storyboard!
        let locationVC = storyboard.instantiateViewController(withIdentifier: "setLocationVC") as! SetLocationViewController
        locationVC.location = self.inputDestinationButtonText
        
        present(locationVC, animated: true, completion: nil)
    }
    @objc func startDateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        startDateTextField.text = dateFormatter.string(from: datePicker.date)
    }
    @objc func endDateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        endDateTextField.text = dateFormatter.string(from: datePicker.date)
    }
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
//    @objc func presentSetDatesViewController() {
//        let storyboard = self.storyboard!
//        let setDatesVC = storyboard.instantiateViewController(withIdentifier: "setDatesVC") as! SetDatesViewController
//        present(setDatesVC, animated: true, completion: nil)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        let storyboard = self.storyboard!
        let locationVC = storyboard.instantiateViewController(withIdentifier: "setLocationVC") as! SetLocationViewController
        present(locationVC, animated: true, completion: nil)
        // Do any additional setup after loading the view.
    }

}
