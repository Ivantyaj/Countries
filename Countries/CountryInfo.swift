//
//  CountryInfo.swift
//  Countries
//
//  Created by Macintosh on 5/1/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI
import MapKit

struct CountryInfo: View {
    var country: Country
    
    var body: some View {
        VStack{
            MapView(coordinate: CLLocationCoordinate2D(latitude: country.latlng![0], longitude: country.latlng![1]))
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300.0)
            VStack(alignment: .leading) {
                Text(country.nativeName!)
                    .font(.system(size: 50))
                HStack(alignment: .center) {
                    Text("Capital:")
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                    Spacer()
                    Text(country.capital!)
                        .font(.system(size: 25))
                }
                HStack(alignment: .center) {
                    Text("Region:")
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                    Spacer()
                    Text(country.region!)
                        .font(.system(size: 25))
                }
                
                HStack(alignment: .center) {
                    Text("Subregion:")
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                    Spacer()
                    Text(country.subregion!)
                        .font(.system(size: 25))
                }
                HStack(alignment: .center) {
                    Text("Area:")
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                    Spacer()
                    Text(String(country.area!))
                        .font(.system(size: 25))
                }
                HStack(alignment: .center) {
                    Text("Population:")
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                    Spacer()
                    Text("\(country.population!)")
                        .font(.system(size: 25))
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(country.name!))
    }
}

struct CountryInfo_Previews: PreviewProvider {
    static var previews: some View {
        CountryInfo(country: countryData[0])
    }
}
