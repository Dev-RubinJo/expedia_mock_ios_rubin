//
//  BasicRequired.swift
//  Expedia
//
//  Created by YooBin Jo on 01/04/2019.
//  Copyright © 2019 YooBin Jo. All rights reserved.
//

import Foundation

class SearchData: Codable {
    var location: Int? // String?????
    var adultNumber: Int?
    var ChildNumber: Int?
    
    func saveLocation(_ location: String) {
        UserDefaults.standard.set(location, forKey: "location")
    }
    func saveAdultNumber(_ adultNumber: Int) {
        UserDefaults.standard.set(adultNumber, forKey: "adultNumber")
    }
    func saveChildNumber(_ childNumber: Int) {
        UserDefaults.standard.set(childNumber, forKey: "childNumber")
    }
    
    func loadLocation() -> String {
        let location = UserDefaults.standard.string(forKey: "location")!
        return location
    }
    func loadAdultNumber() -> Int {
        let adultNumber = UserDefaults.standard.integer(forKey: "adultNumber")
        return adultNumber
    }
    func loadChildNumber() -> Int {
        let childNumber = UserDefaults.standard.integer(forKey: "childNumber")
        return childNumber
    }
    
    func deleteLocation() {
        UserDefaults.standard.removeObject(forKey: "location")
    }
    func deleteAdultNumber() {
        UserDefaults.standard.removeObject(forKey: "adultNumber")
    }
    func deleteChildNumber() {
        UserDefaults.standard.removeObject(forKey: "childNumber")
    }
}
