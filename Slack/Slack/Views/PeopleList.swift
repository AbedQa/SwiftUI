//
//  PeopleList.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct PeopleList: View {
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 10) {
          UserItem(userImage: "1", userName: "Sue Vaneer", specialties: "UX Designer", hasPhone: false, status: .online)
          UserItem(userImage: "2", userName: "Terry Aki", specialties: "Product Designer", hasPhone: false, status: .away)
          UserItem(userImage: "3", userName: "Sal Monella", specialties: "CEO", hasPhone: false, status: .busy)
          UserItem(userImage: "4", userName: "Paul Molive", specialties: "Head of Marketing", hasPhone: false, status: .online)
        }
      }
    }
}

struct PeopleList_Previews: PreviewProvider {
    static var previews: some View {
        PeopleList()
    }
}
