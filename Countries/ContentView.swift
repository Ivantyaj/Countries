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
    var body: some View {
        NavigationView {
            List (countryData, id: \.name) { country in
//                NavigationLink(destination: LandmarkDetail(landmark: country)) {
//                    LandmarkRow(landmark: country)
//                }
                CounrtyRow()
            }
            .navigationBarTitle(Text("Landmarks"))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

