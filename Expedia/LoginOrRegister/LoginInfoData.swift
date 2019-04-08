//
//  LoginInfoData.swift
//  Expedia
//
//  Created by YooBin Jo on 08/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import Foundation
import SwiftyJSON

class LoginInfoData: Codable {
    var email: String?
    var pw: String?
    var name: String?
    
    var jwt: String?
}
