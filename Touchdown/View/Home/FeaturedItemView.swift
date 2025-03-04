//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Florian Geiger on 04.03.25.
//

import SwiftUI

struct FeaturedItemView: View {
  // MARK: - PROPERTY
  
  let player: Player
  
  // MARK: - BODY
  
  var body: some View {
    Image(player.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}
