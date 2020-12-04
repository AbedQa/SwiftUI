//
//  CustomTextFiled.swift
//  Food
//
//  Created by Abed Qassim on 02/12/2020.
//

import SwiftUI

struct CustomTextFiled:View {
  typealias TrailingImageCallBack = () -> Void
  var leadingImage:String
  var trailingImage:String
  var placeholder:String
  var keyboardType:UIKeyboardType
  var trailingImageCallBack:TrailingImageCallBack?
  @Binding var isSecure:Bool
  @Binding var text:String
  var body: some View {
    VStack(spacing:10) {
      HStack {
        Image(systemName: leadingImage)
          .font(.system(size: 22))
          .foregroundColor(.white)
        ZStack(alignment: .leading) {
          if text.isEmpty { Text(placeholder).foregroundColor(.white) }
          if isSecure {
            SecureField("", text: $text)
              .foregroundColor(.white)
          }else {
            TextField("", text: $text)
              .keyboardType(keyboardType)
              .foregroundColor(.white)
          }
        }
        if !trailingImage.isEmpty {
          Button(action: {
            trailingImageCallBack?()
          }, label: {
            Image(systemName: trailingImage)
              .font(.system(size: 22))
              .foregroundColor(.white)
          })
        }
      }
      Rectangle().frame(height:1).foregroundColor(.white)

    }.padding()

  }
}
