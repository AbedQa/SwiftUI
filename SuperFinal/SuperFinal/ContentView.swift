//
//  ContentView.swift
//  SuperFinal
//
//  Created by Abed Qassim on 11/12/2020.
//

import SwiftUI

struct ContentView: View {
  @State var showMenu:Bool = false
  var bgGradiant = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9333333333, green: 0.8039215686, blue: 0.6392156863, alpha: 1)),Color(#colorLiteral(red: 0.937254902, green: 0.3843137255, blue: 0.6235294118, alpha: 1))]), startPoint: .top, endPoint: .bottomTrailing)
  var body: some View {
    ZStack {
      Color.clear
      HomeView {
        showMenu.toggle()
      }
      if showMenu {
        MenuView {
          showMenu.toggle()
        }
        .background(bgGradiant.opacity(0.5))
        .transition(showMenu ? .move(edge: .top) : .move(edge: .bottom))
      }
    }
    .animation(Animation.spring())  // one animation to transitions
    .edgesIgnoringSafeArea(.all)



  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
