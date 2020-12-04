//
//  TabBarView.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct TabBarView: View {
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
        TabBarItem(imageName: "chat", title: "Chat", isSelection: index == 0)
      })
      Spacer(minLength: 0)
      Button(action: {
        withAnimation {
          index = 1
          complicationSelection?(index)
        }
      }, label: {
        TabBarItem(imageName: "group", title: "Group", isSelection: index == 1)
      })
      Spacer(minLength: 0)
      Button(action: {
        withAnimation {
          index = 2
          complicationSelection?(index)
        }
      }, label: {
        TabBarItem(imageName: "call", title: "Calls", isSelection: index == 2)
      })
//      Spacer(minLength: 0)
//      Button(action: {
//        withAnimation {
//          index = 3
//          complicationSelection?(index)
//        }
//      }, label: {
//        TabBarItem(imageName: "settings", title: "Settings", isSelection: index == 3)
//      })
    }
    .padding(.horizontal)
    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).shadow(color: Color.gray.opacity(0.3), radius: 4, x: 0, y: -4))
    .edgesIgnoringSafeArea(.bottom)
  }
}
struct TabBarItem:View {
  var imageName:String
  var title:String
  var isSelection:Bool
  var body: some View {
    VStack {
      Image(imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 28, height: 23)
      Text(title)
        .foregroundColor(.secondary)
    }.padding()
  }
}
