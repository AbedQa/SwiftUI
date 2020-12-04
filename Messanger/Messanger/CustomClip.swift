//
//  CustomClip.swift
//  Messanger
//
//  Created by Abed Qassim on 22/11/2020.
//

import SwiftUI

struct CustomClip:Shape {
  var corner:UIRectCorner
  var size:CGFloat
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: size, height: size))
    return Path(path.cgPath)
  }
}
