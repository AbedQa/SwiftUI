//
//  CardItem.swift
//  Travel
//
//  Created by Abed Qassim on 06/12/2020.
//

import SwiftUI

struct CardItem:View {
  var image:String
  var body: some View {
    Image(image)
      .resizable()
      .frame(width: 60, height: 60)
      .cornerRadius(10)


  }
}
