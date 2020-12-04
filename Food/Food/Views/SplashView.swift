//
//  SplashView.swift
//  Food
//
//  Created by Abed Qassim on 02/12/2020.
//

import SwiftUI

struct SplashView: View {
  var size = UIScreen.main.bounds
  @State var login:Bool = false
  @State var register:Bool = false

  var body: some View {
    if login {
      LoginView()
    }else if register {
      RegisterView()
    }else {
      ZStack {
        Image("bg")
          .resizable()
        LogoRecipe(text: Text("Cooking Done The Easy Way")
                    .foregroundColor(Color(#colorLiteral(red: 0.6980392157, green: 0.7176470588, blue: 0.7764705882, alpha: 1))))
        VStack {
          Spacer(minLength: 0)
          VStack(spacing:40) {
            CustomButton(padding: 30, backgroundColor: Color(#colorLiteral(red: 0.9607843137, green: 0.3529411765, blue: 0, alpha: 1)), title: "Register") {
              withAnimation {
                register.toggle()
              }
            }
            CustomButton(padding: 30, backgroundColor: .clear, title: "Sign In") {
              withAnimation {
                login.toggle()
              }
            }
          }.padding(.bottom,50)
        }
      }.edgesIgnoringSafeArea(.all)
    }

  }
}

struct SplashView_Previews: PreviewProvider {
  static var previews: some View {
    SplashView()
  }
}

struct LogoRecipe: View {
  var text:Text
  var body: some View {
    ZStack {
      VStack {
        Image("dailyRecipy")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .foregroundColor(Color.white.opacity(0.4))
          .padding(.bottom,40)
          .frame(width: 107, height: 44)
      }.background(Color.white.opacity(0.2).frame(width: 111, height: 111).clipShape(Circle()))
      .padding(.bottom,40)
      VStack(spacing:40) {
        Text("Daily Recipe")
          .font(.system(size: 40))
          .foregroundColor(.white)
        text
      }.padding(.top,40)
    }
  }
}
