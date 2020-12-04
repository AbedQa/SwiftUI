//
//  CustomButton.swift
//  Food
//
//  Created by Abed Qassim on 02/12/2020.
//

import SwiftUI

struct CustomButton: View {
  var size = UIScreen.main.bounds
  typealias clickCallBack = () -> Void
  var padding:CGFloat
  var backgroundColor:Color
  var title:String
  var compliation:clickCallBack?
  var body: some View {
    Button(action: {
      compliation?()
    }, label: {
      Text(title)
        .background(backgroundColor
                      .frame(width: size.width - padding, height: 50)
                      .cornerRadius(20))
        .foregroundColor(.white)

    })
  }
}
