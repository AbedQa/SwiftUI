//
//  TabMenuView.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct TabMenuView:View {
  typealias SelectionBlock = (Int) -> Void
  var complicationSelection:SelectionBlock?
  @State var index = 0
  var body: some View {
    HStack {
      Button(action: {
        withAnimation {
          index = 0
          complicationSelection?(index)
        }
      }, label: {
        TabView(isSelect: index == 0, title: "Message")
          .foregroundColor(.black)
      })

      Spacer(minLength: 0)
      Button(action: {
        withAnimation {
          index = 1
          complicationSelection?(index)
        }
      }, label: {
        TabView(isSelect: index == 1, title: "Peoples")
          .foregroundColor(.black)
      })

    }.padding(.vertical, 20)
    .frame(height:60)
    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: 2))
  }
}

struct TabView:View {
  var isSelect:Bool
  var title:String
  var body: some View {
    VStack(alignment:.center) {
      Text(title)
        .font(.system(size: 20))
        .frame(width: 180)
        .foregroundColor(.black)
      if isSelect {
        Rectangle()
          .padding(.horizontal)
          .frame(width: 180, height: 3)
          .foregroundColor(isSelect ? Color(#colorLiteral(red: 0.2392156863, green: 0.7294117647, blue: 0.568627451, alpha: 1)) : .clear)
      }

    }
  }
}
