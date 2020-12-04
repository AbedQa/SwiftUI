//
//  UserItem.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct UserItem:View {
  enum Status {
    case online
    case away
    case busy
    var description:String {
      switch self {
        case .online:
          return "Online"
        case .away:
          return "Away"
        case .busy:
          return "Busy"
      }
    }
    var color: Color {
      switch self {
        case .online:
          return .green
        case .away:
          return Color(#colorLiteral(red: 0.9137254902, green: 0.6588235294, blue: 0.137254902, alpha: 1))
        case .busy:
          return .red
      }
    }
  }
  var userImage:String
  var userName:String
  var specialties:String
  var hasPhone:Bool
  var status:Status
  var body: some View {
    HStack {
      Image(userImage)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 90, height: 90)
        .clipShape(Circle())
      VStack(alignment:.leading,spacing:5) {
        HStack {
          Text(userName)
            .font(.system(size: 20))
          Circle()
            .frame(width: 10, height: 10)
            .foregroundColor(status.color)
          Text(status.description)
            .font(.system(size: 12))
            .foregroundColor(.secondary)
        }
        Text(specialties)
          .font(.system(size: 14))
          .foregroundColor(.secondary)
      }

      Spacer(minLength: 0)
      if hasPhone {
        Image(systemName: "phone.fill")
          .foregroundColor(.green)
          .font(.system(size: 30))
      }
    }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    .padding(.horizontal)
  }
}
