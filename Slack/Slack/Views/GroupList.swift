//
//  GroupList.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct GroupList: View {
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 10) {
          GroupItem(userImage: "2", groupSecondImage: "1", groupThirdImage: "4", groupName: "#Design_Team", lastMessage: "But I must explain to you how all this")
          GroupItem(userImage: "1", groupSecondImage: "4", groupThirdImage: "2", groupName: "#Web_Team", lastMessage: "this application generates endless unique")
          GroupItem(userImage: "2", groupSecondImage: "3", groupThirdImage: "1", groupName: "#UXteam", lastMessage: "who avoids a pain that produces no resultant")
          GroupItem(userImage: "2", groupSecondImage: "1", groupThirdImage: "4", groupName: "#Humbi_Project", lastMessage: "Pleasure of the moment")
          GroupItem(userImage: "2", groupSecondImage: "3", groupThirdImage: "1", groupName: "#UXteam", lastMessage: "who avoids a pain that produces no resultant")
          GroupItem(userImage: "1", groupSecondImage: "4", groupThirdImage: "2", groupName: "#Web_Team", lastMessage: "this application generates endless unique")
        }
      }
    }
}

struct GroupList_Previews: PreviewProvider {
    static var previews: some View {
        GroupList()
    }
}
