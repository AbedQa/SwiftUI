//
//  CallList.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct CallList: View {
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 10) {
          UserItem(userImage: "1", userName: "Sue Vaneer", specialties: "UX Designer", hasPhone: true, status: .online)
          UserItem(userImage: "2", userName: "Terry Aki", specialties: "Product Designer", hasPhone: true, status: .away)
          UserItem(userImage: "3", userName: "Sal Monella", specialties: "CEO", hasPhone: true, status: .busy)
          UserItem(userImage: "4", userName: "Paul Molive", specialties: "Head of Marketing", hasPhone: true, status: .online)
        }
      }
    }
}

struct CallList_Previews: PreviewProvider {
    static var previews: some View {
        CallList()
    }
}
