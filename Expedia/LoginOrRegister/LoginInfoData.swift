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
    var userName: String?
    var email: String?
    
    
    var isLogin: Bool = false
    
    func loginStatus() {
        self.isLogin = true
    }
    func logoutStatus() {
        self.isLogin = false
        UserDefaults.standard.removeObject(forKey: "token")
    }
    func saveName(_ name: String) {
        UserDefaults.standard.set(name, forKey: "userName")
    }
    func saveEmail(_ email: String) {
        UserDefaults.standard.set(email, forKey: "email")
    }
    
    func save(_ token: String) {
        UserDefaults.standard.set(token, forKey: "token")
    }
    
    
    func loadName() -> String {
        let name = UserDefaults.standard.string(forKey: "userName")!
        return name
    }
    func loadEmail() -> String {
        let email = UserDefaults.standard.string(forKey: "email")!
        return email
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
