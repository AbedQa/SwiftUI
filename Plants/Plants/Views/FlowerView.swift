//
//  FlowerView.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI

struct FlowerView: View {
  var imageName: String
  var imageTitle: String
  var price: String
  var palceTitle: String
  var width:CGFloat = 180
  var body: some View {
    VStack(spacing:0) {
      Image(imageName)
        .resizable()
        .scaledToFill()
        .frame(width: width, height: 200)
        .clipShape(CustomShape(size: [.topLeft , .topRight], cornerRaduis: 20))
        .shadow(color: Color(#colorLiteral(red: 0.5976459384, green: 0.829954803, blue: 0.7531670928, alpha: 1)).opacity(0.5), radius: 20, x: 0.0, y: 0)
      VStack {
        VStack(spacing: 10) {
          HStack {
            Text(imageTitle)
              .foregroundColor(.black)
            Spacer(minLength: 0)
            Text(price)
              .fontWeight(.bold)
              .foregroundColor(Color(#colorLiteral(red: 0.5976459384, green: 0.829954803, blue: 0.7531670928, alpha: 1)))
          }
          HStack {
            Text(palceTitle)
              .foregroundColor(Color(#colorLiteral(red: 0.5976459384, green: 0.829954803, blue: 0.7531670928, alpha: 1)))
            Spacer(minLength: 0)
          }

        }
        .padding(.horizontal)
        .padding(.vertical)
      }
      .frame(width: width)

      .background(Color(.white).clipShape(CustomShape(size: [.bottomLeft,.bottomRight], cornerRaduis: 20)).shadow(color: Color(#colorLiteral(red: 0.5976459384, green: 0.829954803, blue: 0.7531670928, alpha: 1)).opacity(0.5), radius: 20, x: 0.0, y: 10.0))

    }
  }
}
