//
//  HeaderView.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct HeaderView:View {
  var title:String
  var body: some View {
    ZStack {
      HStack {
        Button(action: {

        }, label: {
          Image("slacklogo")
            .font(.system(size: 15))
        })
        Spacer(minLength: 0)
        Button(action: {

        }, label: {
          Image(systemName: "magnifyingglass")
            .font(.system(size: 25))
            .foregroundColor(.black)
        })
        Button(action: {

        }, label: {
          Image("1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 45, height: 45)
            .clipShape(Circle())
            .foregroundColor(.black)
        })
      }
      Text(title)
        .font(.system(size: 20, weight: .bold, design: .default))
    }
    .padding(.horizontal,10)
    .padding(.vertical , 15)
    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2))
  }
}
