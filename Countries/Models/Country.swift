//
//  Country.swift
//  Countries
//
//  Created by Macintosh on 5/1/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Country: Hashable, Codable, Identifiable  {
    var id: Int
    var name: String
    var topLevelDomain: [String]
    var alfa2code: String
    var alfa3code: String
    var callingCodes: [String]
    var capital: String
    var altSpellings: [String]
    var region: String
    var subregion: String
    var population: Int
    var latlng: [Double]
    var demonym: String
    var area: Double
    var gini: Double
    var timezones: [String]
    var borders: [String]
    var nativeName: String
    var numericCode: String
    var currencies: 

}

