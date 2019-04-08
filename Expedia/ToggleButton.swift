//
//  ToggleButton.swift
//  Expedia
//
//  Created by YooBin Jo on 08/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {
    
    let color = UIColor()
    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        layer.borderWidth = 1.5
        layer.borderColor = color.UIColorFromRGB(rgbValue: 0x015AEB).cgColor
        layer.cornerRadius = frame.size.height / 2
        
        addTarget(self, action: #selector(ToggleButton.buttonPressed), for: .touchUpInside)
        
    }
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    func activateButton(bool: Bool) {
        isOn = bool
        
        let backColor = bool ? color.UIColorFromRGB(rgbValue: 0x015AEB) : UIColor.clear
        backgroundColor = backColor
    }
}
