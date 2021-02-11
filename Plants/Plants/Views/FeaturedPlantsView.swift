//
//  FeaturedPlantsView.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI


struct FeaturedPlantsView: View {
  var imageName: String
  var width: CGFloat = 300
  var body: some View {
    Image(imageName)
      .resizable()
      .scaledToFill()
      .frame(width: width, height: 200)
      .clipShape(CustomShape(size: [.allCorners], cornerRaduis: 20))
      .shadow(color: Color(#colorLiteral(red: 0.5976459384, green: 0.829954803, blue: 0.7531670928, alpha: 1)).opacity(0.5), radius: 20, x: 0.0, y: 0)
  }
}
