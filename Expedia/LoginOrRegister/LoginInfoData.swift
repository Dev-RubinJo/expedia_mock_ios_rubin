//
//  LoginInfoData.swift
//  Expedia
//
//  Created by YooBin Jo on 08/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import Foundation

class LoginInfoData: Codable {
    
    var jwt: String?
    var isLogin: Bool = false
    
    func loginStatus() {
        self.isLogin = true
    }
    func logoutStatus() {
        self.isLogin = false
    }
    
    func save(_ token: String) {
        UserDefaults.standard.set(token, forKey: "token")
    }
    func load() -> String {
        let data = UserDefaults.standard.string(forKey: "token")!
        return data
    }
    func saveLogin() {
        UserDefaults.standard.set(isLogin, forKey: "isLogin")
    }
    func loadLogin() -> Bool {
        let data = UserDefaults.standard.bool(forKey: "isLogin")
        return data
    }
}
