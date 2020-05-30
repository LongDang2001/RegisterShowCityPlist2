//
//  DataService.swift
//  Register showCityPlist1
//
//  Created by admin on 3/29/20.
//  Copyright © 2020 Long. All rights reserved.
//

import Foundation
struct getCity {
    var name: String
    var codeCity: Int
    init(name: String, codeCity: Int) {
        self.name = name
        self.codeCity = codeCity
    }
}

class DataService {
    static let shared = DataService()
    var cities: [getCity] = []
    
    func getCityOfPlist() {
        cities = []
        guard let path = Bundle.main.path(forResource: "Cities", ofType: "plist") else { return }
        guard let dictionary = NSDictionary(contentsOfFile: path) as? Dictionary<AnyHashable, Any> else { return }
        guard let arrayCity = dictionary["Cities"] as? [Dictionary<AnyHashable, Any>] else { return }
        for city in arrayCity {
            let cityApend = getCity(name: city["Name"] as! String, codeCity: city["CityCode"] as! Int)
            cities.append(cityApend)
        }
    }
}
    

