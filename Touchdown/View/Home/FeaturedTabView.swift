//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Florian Geiger on 04.03.25.
//

import SwiftUI

struct FeaturedTabView: View {
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: TAB
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}
#Preview {
    FeaturedTabView()
}
