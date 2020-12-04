//
//  MessageList.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct MessageList: View {
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 10) {
          MessageItem(userImage: "1", userName: "Donatella Nobatti", lastMessage: "But I must explain to you how all this")
          GroupItem(userImage: "1", groupSecondImage: "2", groupThirdImage: "3", groupName: "#New Year Party", lastMessage: "Just need one name?")
          MessageItem(userImage: "4", userName: "Donatella Nobatti", lastMessage: "But I must explain to you how all this")
          MessageItem(userImage: "3", userName: "Donatella Nobatti", lastMessage: "But I must explain to you how all this")
          MessageItem(userImage: "2", userName: "Donatella Nobatti", lastMessage: "But I must explain to you how all this")
          MessageItem(userImage: "4", userName: "Donatella Nobatti", lastMessage: "But I must explain to you how all this")
        }
      }
    }
}
struct MessageItem:View {
  var userImage:String
  var userName:String
  var lastMessage:String
  var body: some View {
    HStack {
      Image(userImage)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 90, height: 90)
        .clipShape(Circle())
      VStack(alignment:.leading,spacing:10) {
        Text(userName)
          .font(.system(size: 20))
        Text(lastMessage)
          .font(.system(size: 14))
          .foregroundColor(.secondary)
      }
      Rectangle()
        .frame(width: 3,height: 50)
        .foregroundColor(Color.gray.opacity(0.1))
      VStack(alignment:.trailing) {
        Text("12 Dec")
          .font(.system(size: 13))
          .foregroundColor(Color(#colorLiteral(red: 0.9137254902, green: 0.6588235294, blue: 0.137254902, alpha: 1)))
        Text("11.10 PM")
          .font(.system(size: 13))
          .foregroundColor(Color(#colorLiteral(red: 0.9137254902, green: 0.6588235294, blue: 0.137254902, alpha: 1)))
      }
    }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    .padding(.horizontal)
  }
}
struct GroupItem:View {
  var userImage:String
  var groupSecondImage:String
  var groupThirdImage:String
  var groupName:String
  var lastMessage:String
  var body: some View {
    HStack {
      ZStack {
        Image(userImage)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 90, height: 90)
          .clipShape(Circle())
          .offset(x: 0, y: -10.0)
        Image(groupSecondImage)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 40, height: 40)
          .clipShape(Circle())
          .offset(x: -18, y: 16)
        Image(groupThirdImage)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 40, height: 40)
          .clipShape(Circle())
          .offset(x: 18, y: 16)
      }.padding(.leading,15)

      VStack(alignment:.leading,spacing:10) {
        Text(groupName)
          .font(.system(size: 20))
        Text(lastMessage)
          .font(.system(size: 14))
          .foregroundColor(.secondary)
      }
      Spacer(minLength: 0)
      Rectangle()
        .frame(width: 3,height: 50)
        .foregroundColor(Color.gray.opacity(0.1))
      VStack(alignment:.trailing) {
        Text("12 Dec")
          .font(.system(size: 13))
          .foregroundColor(Color(#colorLiteral(red: 0.9137254902, green: 0.6588235294, blue: 0.137254902, alpha: 1)))
        Text("11.10 PM")
          .font(.system(size: 13))
          .foregroundColor(Color(#colorLiteral(red: 0.9137254902, green: 0.6588235294, blue: 0.137254902, alpha: 1)))
      }
    }.frame(width:391,height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

  }
}
