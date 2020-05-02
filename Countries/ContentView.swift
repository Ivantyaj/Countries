//
//  ContentView.swift
//  Countries
//
//  Created by Macintosh on 5/1/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI
import URLImage

struct ContentView: View {
    
    @State var networkingManager = NetworkManager()
    @State var countriesTest: [Country] = NetworkManager().countryList
    
    @State var countries: [Country] = []
    
    var body: some View {
        NavigationView {
            
            
            
            List (countries, id: \.name) { country in
                
                NavigationLink(destination: CountryInfo(country: country)) {
                    CounrtyRow(countryCode: country.alpha2Code!, countryName: country.name!)
                }
                
                
            }
            .navigationBarTitle(Text("Countries"))
            
        }
        .onAppear{
            Api().getData {
                (countries) in
                self.countries = countries
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

