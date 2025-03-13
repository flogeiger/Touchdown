//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Florian Geiger on 13.03.25.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}
