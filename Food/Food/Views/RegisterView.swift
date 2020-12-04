//
//  RegisterView.swift
//  Food
//
//  Created by Abed Qassim on 02/12/2020.
//

import SwiftUI

struct RegisterView: View {
  var size = UIScreen.main.bounds
  @State var fullName:String = ""
  @State var email:String = ""
  @State var password:String = ""
  @State var isSecure:Bool = false
  @ObservedObject private var keyboard = KeyboardResponder()
  @State var dismissView:Bool = false
  @State var homeView:Bool = false

  var body: some View {
    if dismissView {
      SplashView()
    }else if homeView {
      HomeView().transition(.slide)
    }else {
      ZStack {
        Image("bg")
          .resizable()
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
          VStack(spacing:30) {
            HStack {
              Spacer(minLength: 0)
              Button(action: {
                withAnimation {
                  dismissView.toggle()
                }
              }, label: {
                Image(systemName: "xmark")
                  .font(.system(size: 23))
                  .foregroundColor(.white)
              })

            }.padding(.horizontal)
            LogoRecipe(text: Text("Register")
                        .foregroundColor(.white))
            VStack(spacing:30) {
              VStack {
                CustomTextFiled(leadingImage: "person.crop.circle", trailingImage: "", placeholder: "Fullname", keyboardType: .default, isSecure: .constant(false), text: $fullName)
                CustomTextFiled(leadingImage: "envelope",trailingImage: "", placeholder: "Email Address", keyboardType: .emailAddress, isSecure: .constant(false), text: $email)
                CustomTextFiled(leadingImage: "lock", trailingImage: !isSecure ? "eye.slash.fill" : "eye", placeholder: "Password", keyboardType: .default, trailingImageCallBack: {
                  isSecure.toggle()
                }, isSecure: $isSecure, text: $password)
              }
              CustomButton(padding: 30, backgroundColor: Color(#colorLiteral(red: 0.9607843137, green: 0.3529411765, blue: 0, alpha: 1)), title: "Register") {
                withAnimation {
                  homeView.toggle()
                }
              }
            }

          }.frame(height: size.height)
        }

      }.padding(.bottom, keyboard.currentHeight)
      .edgesIgnoringSafeArea(.bottom)
      .animation(.easeOut(duration: 0.16))
      .edgesIgnoringSafeArea(.all)
    }
  }
}


struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
