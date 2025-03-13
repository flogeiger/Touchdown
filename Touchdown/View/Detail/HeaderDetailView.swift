//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Florian Geiger on 13.03.25.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}
