//
//  Blur.swift
//  Travel
//
//  Created by Abed Qassim on 06/12/2020.
//

import SwiftUI

struct Blur: UIViewRepresentable {
  let style: UIBlurEffect.Style

  func makeUIView(context: Context) -> UIVisualEffectView {
    return UIVisualEffectView(effect: UIBlurEffect(style: style))
  }

  func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    uiView.effect = UIBlurEffect(style: style)
    uiView.backgroundColor = .clear
  }
}
