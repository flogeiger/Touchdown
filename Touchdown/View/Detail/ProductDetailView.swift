//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Florian Geiger on 13.03.25.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            HeaderDetailView().padding(.horizontal)
            
            TopPartDetailView().padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center,spacing: 0, content: {
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                AddToCartDetailView()
                    .padding(.vertical, 10)
            })
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105))
        })
        .zIndex(0)
        .ignoresSafeArea(.all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            ).ignoresSafeArea(.all)
        )
    }
}

#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
}
