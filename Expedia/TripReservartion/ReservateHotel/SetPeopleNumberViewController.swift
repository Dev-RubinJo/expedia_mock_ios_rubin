//
//  SetPeopleNumberViewController.swift
//  Expedia
//
//  Created by YooBin Jo on 10/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class SetPeopleNumberViewController: UIViewController {

    let info = SearchData()
    var adultCount: Int = 1
    var childCount: Int = 0
    var flag: Int = 0
    
    var first = "나이 선택"
    var second = "나이 선택"
    var third = "나이 선택"
    var forth = "나이 선택"
    var fifth = "나이 선택"
    var sixth = "나이 선택"
    

    let pickerData: [String] = ["만 1세 미만", "만 1세", "만 2세", "만 3세", "만 4세", "만 5세", "만 6세", "만 7세", "만 8세", "만 9세", "만 10세", "만 11세", "만 12세", "만 13세", "만 14세", "만 15세", "만 16세", "만 17세"]
    @IBOutlet weak var pickerView: UIView!
    @IBOutlet weak var agePicker: UIPickerView!
    @IBAction func doneButton(_ sender: Any) {
        self.pickerView.isHidden = true
        updateUI()
    }
    
    @IBOutlet weak var adultNumber: UILabel!
    @IBOutlet weak var increseNumber: UIButton!
    @IBAction func increseNumber(_ sender: Any) {
        adultCount += 1
        updateUI()
    }
    @IBOutlet weak var decreseNumber: UIButton!
    @IBAction func decreseNumber(_ sender: Any) {
        adultCount -= 1
        updateUI()
    }
    
    @IBOutlet weak var childNumber: UILabel!
    @IBOutlet weak var increseCNumber: UIButton!
    @IBAction func increseCNumber(_ sender: Any) {
        childCount += 1
        flag += 1
        updateUI()
    }
    @IBOutlet weak var decreseCNumber: UIButton!
    @IBAction func decreseCNumber(_ sender: Any) {
        childCount -= 1
        flag -= 1
        updateUI()
    }
    
    @IBOutlet weak var firstRow: UIView!
    @IBOutlet weak var secondRow: UIView!
    @IBOutlet weak var thirdRow: UIView!
    
    let firstChildView: UIView = UIView(frame: CGRect(x: 10, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    let firstChildCount: UILabel = UILabel(frame: CGRect(x: 10, y: 3, width: 50, height: 15))
    let firstChildAge: UILabel = UILabel(frame: CGRect(x: 10, y: 19, width: (UIScreen.main.bounds.width / 2) - 40, height: 17))
    let firstChildAgeChoiceButton: UIButton = UIButton(frame: CGRect(x: 10, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    
    let secondChildView: UIView = UIView(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    let secondChildCount: UILabel = UILabel(frame: CGRect(x: 10, y: 3, width: 50, height: 15))
    let secondChildAge: UILabel = UILabel(frame: CGRect(x: 10, y: 19, width: (UIScreen.main.bounds.width / 2) - 40, height: 17))
    let secondChildAgeChoiceButton: UIButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    
    let thirdChildView: UIView = UIView(frame: CGRect(x: 10, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    let thirdChildCount: UILabel = UILabel(frame: CGRect(x: 10, y: 3, width: 50, height: 15))
    let thirdChildAge: UILabel = UILabel(frame: CGRect(x: 10, y: 19, width: (UIScreen.main.bounds.width / 2) - 40, height: 17))
    let thirdChildAgeChoiceButton: UIButton = UIButton(frame: CGRect(x: 10, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    
    let forthChildView: UIView = UIView(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    let forthChildCount: UILabel = UILabel(frame: CGRect(x: 10, y: 3, width: 50, height: 15))
    let forthChildAge: UILabel = UILabel(frame: CGRect(x: 10, y: 19, width: (UIScreen.main.bounds.width / 2) - 40, height: 17))
    let forthChildAgeChoiceButton: UIButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    
    let fifthChildView: UIView = UIView(frame: CGRect(x: 10, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    let fifthChildCount: UILabel = UILabel(frame: CGRect(x: 10, y: 3, width: 50, height: 15))
    let fifthChildAge: UILabel = UILabel(frame: CGRect(x: 10, y: 19, width: (UIScreen.main.bounds.width / 2) - 40, height: 17))
    let fifthChildAgeChoiceButton: UIButton = UIButton(frame: CGRect(x: 10, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    
    let sixthChildView: UIView = UIView(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    let sixthChildCount: UILabel = UILabel(frame: CGRect(x: 10, y: 3, width: 50, height: 15))
    let sixthChildAge: UILabel = UILabel(frame: CGRect(x: 10, y: 19, width: (UIScreen.main.bounds.width / 2) - 40, height: 17))
    let sixthChildAgeChoiceButton: UIButton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: 10, width: (UIScreen.main.bounds.width / 2) - 20, height: 40))
    
    
    @IBOutlet weak var completeButton: UIButton!
    @IBAction func completeButton(_ sender: Any) {
        self.info.saveAdultNumber(adultCount)
        self.info.saveChildNumber(childCount)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
        self.pickerView.isHidden = true
        self.completeButton.layer.cornerRadius = 10
        self.completeButton.layer.masksToBounds = true
        
        self.firstRow.addSubview(firstChildView)
        self.firstRow.addSubview(firstChildAgeChoiceButton)
        
        self.firstChildCount.text = "아동 1"
        self.firstChildCount.font = UIFont.systemFont(ofSize: 13)
        
        self.firstChildAge.text = "\(first)"
        self.firstChildAge.font = UIFont.systemFont(ofSize: 17)
        
        self.firstChildAgeChoiceButton.layer.cornerRadius = 10
        self.firstChildAgeChoiceButton.layer.masksToBounds = true
        self.firstChildAgeChoiceButton.layer.borderColor = UIColor.lightGray.cgColor
        self.firstChildAgeChoiceButton.layer.borderWidth = 1.0
        self.firstChildAgeChoiceButton.addTarget(self, action: #selector(showAgePicker), for: .touchUpInside)
        
        self.firstChildView.addSubview(firstChildAge)
        self.firstChildView.addSubview(firstChildCount)
        
        
        
        self.firstRow.addSubview(secondChildView)
        self.firstRow.addSubview(secondChildAgeChoiceButton)
        
        self.secondChildCount.text = "아동 2"
        self.secondChildCount.font = UIFont.systemFont(ofSize: 13)
        
        self.secondChildAge.text = "\(second)"
        self.secondChildAge.font = UIFont.systemFont(ofSize: 17)
        
        self.secondChildAgeChoiceButton.layer.cornerRadius = 10
        self.secondChildAgeChoiceButton.layer.masksToBounds = true
        self.secondChildAgeChoiceButton.layer.borderColor = UIColor.lightGray.cgColor
        self.secondChildAgeChoiceButton.layer.borderWidth = 1.0
        self.secondChildAgeChoiceButton.addTarget(self, action: #selector(showAgePicker), for: .touchUpInside)
        
        self.secondChildView.addSubview(secondChildAge)
        self.secondChildView.addSubview(secondChildCount)
        
        
        self.secondRow.addSubview(thirdChildView)
        self.secondRow.addSubview(thirdChildAgeChoiceButton)
        
        self.thirdChildCount.text = "아동 3"
        self.thirdChildCount.font = UIFont.systemFont(ofSize: 13)
        
        self.thirdChildAge.text = "\(third)"
        self.thirdChildAge.font = UIFont.systemFont(ofSize: 17)
        
        self.thirdChildAgeChoiceButton.layer.cornerRadius = 10
        self.thirdChildAgeChoiceButton.layer.masksToBounds = true
        self.thirdChildAgeChoiceButton.layer.borderColor = UIColor.lightGray.cgColor
        self.thirdChildAgeChoiceButton.layer.borderWidth = 1.0
        self.thirdChildAgeChoiceButton.addTarget(self, action: #selector(showAgePicker), for: .touchUpInside)
        
        self.thirdChildView.addSubview(thirdChildAge)
        self.thirdChildView.addSubview(thirdChildCount)
        
        
        
        self.secondRow.addSubview(forthChildView)
        self.secondRow.addSubview(forthChildAgeChoiceButton)
        
        self.forthChildCount.text = "아동 4"
        self.forthChildCount.font = UIFont.systemFont(ofSize: 13)
        
        self.forthChildAge.text = "\(forth)"
        self.forthChildAge.font = UIFont.systemFont(ofSize: 17)
        
        self.forthChildAgeChoiceButton.layer.cornerRadius = 10
        self.forthChildAgeChoiceButton.layer.masksToBounds = true
        self.forthChildAgeChoiceButton.layer.borderColor = UIColor.lightGray.cgColor
        self.forthChildAgeChoiceButton.layer.borderWidth = 1.0
        self.forthChildAgeChoiceButton.addTarget(self, action: #selector(showAgePicker), for: .touchUpInside)
        
        self.forthChildView.addSubview(forthChildAge)
        self.forthChildView.addSubview(forthChildCount)
        
        
        
        self.thirdRow.addSubview(fifthChildView)
        self.thirdRow.addSubview(fifthChildAgeChoiceButton)
        
        self.fifthChildCount.text = "아동 5"
        self.fifthChildCount.font = UIFont.systemFont(ofSize: 13)
        
        self.fifthChildAge.text = "\(fifth)"
        self.fifthChildAge.font = UIFont.systemFont(ofSize: 17)
        
        self.fifthChildAgeChoiceButton.layer.cornerRadius = 10
        self.fifthChildAgeChoiceButton.layer.masksToBounds = true
        self.fifthChildAgeChoiceButton.layer.borderColor = UIColor.lightGray.cgColor
        self.fifthChildAgeChoiceButton.layer.borderWidth = 1.0
        self.fifthChildAgeChoiceButton.addTarget(self, action: #selector(showAgePicker), for: .touchUpInside)
        
        self.fifthChildView.addSubview(fifthChildAge)
        self.fifthChildView.addSubview(fifthChildCount)
        
        
        
        self.thirdRow.addSubview(sixthChildView)
        self.thirdRow.addSubview(sixthChildAgeChoiceButton)
        
        self.sixthChildCount.text = "아동 6"
        self.sixthChildCount.font = UIFont.systemFont(ofSize: 13)
        
        self.sixthChildAge.text = "\(sixth)"
        self.sixthChildAge.font = UIFont.systemFont(ofSize: 17)
        
        self.sixthChildAgeChoiceButton.layer.cornerRadius = 10
        self.sixthChildAgeChoiceButton.layer.masksToBounds = true
        self.sixthChildAgeChoiceButton.layer.borderColor = UIColor.lightGray.cgColor
        self.sixthChildAgeChoiceButton.layer.borderWidth = 1.0
        self.sixthChildAgeChoiceButton.addTarget(self, action: #selector(showAgePicker), for: .touchUpInside)
        
        self.sixthChildView.addSubview(sixthChildAge)
        self.sixthChildView.addSubview(sixthChildCount)
        
        
        self.adultNumber.text = "\(adultCount)"
        if self.adultCount == 1 {
            self.decreseNumber.isEnabled = false
        } else if self.adultCount == 14 {
            self.increseNumber.isEnabled = false
        } else {
            self.decreseNumber.isEnabled = true
            self.increseNumber.isEnabled = true
        }
        self.childNumber.text = "\(childCount)"
        if self.childCount == 0 {
            self.decreseCNumber.isEnabled = false
            self.firstRow.isHidden = true
            
            self.firstChildView.isHidden = true
            self.firstChildAgeChoiceButton.isHidden = true
            
            self.secondChildView.isHidden = true
            self.secondChildAgeChoiceButton.isHidden = true
            
            self.secondRow.isHidden = true
            
            self.thirdChildView.isHidden = true
            self.thirdChildAgeChoiceButton.isHidden = true
            
            self.forthChildView.isHidden = true
            self.forthChildAgeChoiceButton.isHidden = true
            
            self.thirdRow.isHidden = true
            
            
            self.fifthChildView.isHidden = true
            self.fifthChildAgeChoiceButton.isHidden = true
            
            self.sixthChildView.isHidden = true
            self.sixthChildAgeChoiceButton.isHidden = true
            
        } else if self.childCount == 1 {
            self.firstRow.isHidden = false
            self.firstChildView.isHidden = false
            self.firstChildAgeChoiceButton.isHidden = false
            
            self.secondChildView.isHidden = true
            self.secondChildAgeChoiceButton.isHidden = true
            
            self.decreseCNumber.isEnabled = true
        } else if self.childCount == 2 {
            self.secondChildView.isHidden = false
            self.secondChildAgeChoiceButton.isHidden = false
            
            self.secondRow.isHidden = true
        } else if self.childCount == 3 {
            self.secondRow.isHidden = false
            
            self.thirdChildView.isHidden = false
            self.thirdChildAgeChoiceButton.isHidden = false
            
            self.forthChildView.isHidden = true
            self.forthChildAgeChoiceButton.isHidden = true
            
        } else if self.childCount == 4 {
            self.forthChildView.isHidden = false
            self.forthChildAgeChoiceButton.isHidden = false
            
            self.thirdRow.isHidden = true
        } else if self.childCount == 5 {
            self.thirdRow.isHidden = false
            
            self.fifthChildView.isHidden = false
            self.fifthChildAgeChoiceButton.isHidden = false
            
            self.sixthChildView.isHidden = true
            self.sixthChildAgeChoiceButton.isHidden = true
            
            self.increseCNumber.isEnabled = true
        } else if self.childCount == 6 {
            self.increseCNumber.isEnabled = false
            
            self.sixthChildView.isHidden = false
            self.sixthChildAgeChoiceButton.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.agePicker.delegate = self
        self.agePicker.dataSource = self
        
        updateUI()
        // Do any additional setup after loading the view.
    }
    @objc func showAgePicker() {
        self.pickerView.isHidden = false
    }

}
extension SetPeopleNumberViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if self.flag == 1 {
            self.first = pickerData[row]
        } else if self.flag == 2 {
            self.second = pickerData[row]
        } else if self.flag == 3 {
            self.third = pickerData[row]
        } else if self.flag == 4 {
            self.forth = pickerData[row]
        } else if self.flag == 5 {
            self.fifth = pickerData[row]
        } else if self.flag == 6 {
            self.sixth = pickerData[row]
        }
    }
}
