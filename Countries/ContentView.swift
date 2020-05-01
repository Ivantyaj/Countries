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
    
    var body: some View {
        NavigationView {
            //            List (countryData, id: \.name) { country in
            ////                NavigationLink(destination: LandmarkDetail(landmark: country)) {
            ////                    LandmarkRow(landmark: country)
            ////                }
            //                CounrtyRow(countryCode: country.alpha2Code!, countryName: country.name!)
            //            }
            List (countriesTest, id: \.name) { country in
                CounrtyRow(countryCode: country.alpha2Code!, countryName: country.name!)
            }
            .navigationBarTitle(Text("Countries"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

