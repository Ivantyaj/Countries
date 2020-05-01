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
    var body: some View {
        HStack {
            URLImage(URL(string: "https://www.countryflags.io/AF/flat/64.png")!)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}



struct CounrtyRow_Previews: PreviewProvider {
    static var previews: some View {
        CounrtyRow()
    }
}
