//
//  CounrtyRow.swift
//  Countries
//
//  Created by Macintosh on 5/1/20.
//  Copyright © 2020 IVDEV. All rights reserved.
//

import SwiftUI
import UIKit
import URLImage

struct CounrtyRow: View {
    var countryCode: String
    var countryName: String
    
    var body: some View {
        HStack {
            URLImage(URL(string: "https://www.countryflags.io/\(countryCode)/flat/64.png") ?? URL( string: "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/6f/6f5ca49d087da79812e9fb460b968ff407bf9562_full.jpg")!){ proxy in
            proxy.image
                .resizable()                     // Make image resizable
                .aspectRatio(contentMode: .fill) // Fill the frame
                .clipped()                       // Clip overlaping parts
            }
            .frame(width: 64.0, height: 64.0)
            Text(countryName)
            Spacer()
        }
    }
}



struct CounrtyRow_Previews: PreviewProvider {
    static var previews: some View {
        CounrtyRow(countryCode: "AF", countryName: "Afganistan")
    }
}
