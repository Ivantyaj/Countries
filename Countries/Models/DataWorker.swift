//
//  CountryData.swift
//  Countries
//
//  Created by Macintosh on 5/1/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import Foundation
import SwiftUI
import Combine



//let countryData: [Country] = load("Data.json")
//let countryData: [Country] = loadData("https://restcountries.eu/rest/v2/all")
//let countryData: [Country] = loadD()


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

class NetworkManager: ObservableObject {
    var didChange = PassthroughSubject<NetworkManager, Never>()
    
    var countryList = [Country]() {
        didSet{
            didChange.send(self)
        }
    }
    
    init() {
        guard let url = URL(string: "https://restcountries.eu/rest/v2/all")
            else {return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {return}
            
            let countryList = try! JSONDecoder().decode([Country].self, from: data)
            
            DispatchQueue.main.async {
                self.countryList = countryList
                //countries = countryList
            }
        }.resume()
    }
}
