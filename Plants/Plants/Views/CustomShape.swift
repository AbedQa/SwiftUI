//
//  CustomShape.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI

struct CustomShape: Shape {

  var size:UIRectCorner
  var cornerRaduis:Int

  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: size, cornerRadii: CGSize(width: cornerRaduis, height: cornerRaduis))
    return Path(path.cgPath)
  }
}
