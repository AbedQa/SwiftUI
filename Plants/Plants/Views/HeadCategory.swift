//
//  HeadCategory.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI


struct HeadCategory: View {
  var title: String

  var body: some View {
    HStack {
      VStack(spacing:0) {
        Text(title)
          .font(.system(size: 22, weight: .bold, design: .default))
        Color(#colorLiteral(red: 0.8027565479, green: 0.9138557315, blue: 0.8767725229, alpha: 1))
          .frame(width:title.widthOfString(usingFont: .systemFont(ofSize: 22, weight: .bold)),height: 4)
      }

      Spacer(minLength: 0)

      Button(action: {

      }, label: {
        Text("More")
          .padding(.vertical , 12)
          .padding(.horizontal , 25)
          .foregroundColor(.white)
          .background(Color(#colorLiteral(red: 0.04344524443, green: 0.5960595608, blue: 0.4094848037, alpha: 1)).clipShape(CustomShape(size: .allCorners, cornerRaduis: 20)))
          .font(.system(size: 17, weight: .bold, design: .default))
      })

    }
  }
}
