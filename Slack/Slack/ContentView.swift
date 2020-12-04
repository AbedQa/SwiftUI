//
//  ContentView.swift
//  Slack
//
//  Created by Abed Qassim on 27/11/2020.
//

import SwiftUI

struct ContentView: View {
  @State var indexSelection = 0
  @State var tabIndexSelection = 0
  var body: some View {
    ZStack {
      VStack {

        if tabIndexSelection == 0 {
          HeaderView(title: "Revolthemes")
          TabMenuView { (indexSelection) in
            self.indexSelection = indexSelection
          }
          if indexSelection == 0 {
            MessageList()
          }else {
            PeopleList()
          }
        }else if tabIndexSelection == 1 {
          HeaderView(title: "Groups")
          GroupList()
        }else if tabIndexSelection == 2 {
          HeaderView(title: "Calls")
          CallList()
        }

        Spacer(minLength: 0)
        TabBarView(complicationSelection: { (tabIndexSelection) in
          self.tabIndexSelection = tabIndexSelection
        })
      }.edgesIgnoringSafeArea(.bottom)
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
