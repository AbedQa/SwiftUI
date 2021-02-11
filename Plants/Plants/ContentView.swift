//
//  ContentView.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    var body: some View {
      if index == 0 {
        HomeView {
          withAnimation {
            index = 1
          }

        }
      } else {
        DetailView(title: "SAMANTHA", price: "$400", placeTitle: "INDOOR") {
          withAnimation {
            index = 0
          }
        }
      }

    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension String {
   func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
