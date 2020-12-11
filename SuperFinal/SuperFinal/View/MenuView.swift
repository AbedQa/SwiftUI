//
//  MenuView.swift
//  SuperFinal
//
//  Created by Abed Qassim on 11/12/2020.
//

import SwiftUI

struct MenuView: View {
  var compliation:(()-> Void)?
  var size  = UIScreen.main.bounds
  var bgGradiant = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9333333333, green: 0.8039215686, blue: 0.6392156863, alpha: 1)),Color(#colorLiteral(red: 0.937254902, green: 0.3843137255, blue: 0.6235294118, alpha: 1))]), startPoint: .top, endPoint: .bottomTrailing)
  var body: some View {
    VStack {
      ZStack {
        Ellipse()
          .fill(Color.white)
          .frame(width: size.width + 300, height: 450)
          .rotationEffect(.init(degrees: -25))
          .offset(x: -40.0, y: -280.0)
          .shadow(radius: 10)
          .padding(.top , 0)
        VStack {
          ZStack {
            HStack {
              Button(action: {
                withAnimation {
                  compliation?()
                }
              }, label: {
                Image("menuSelected")
                  .resizable()
                  .frame(width: 23, height: 23)

              })
              Spacer(minLength: 0)
            }
            .padding(.horizontal)
            .frame(width: size.width)
            Text("Explore")
              .font(.title)
              .fontWeight(.bold)
          }
          HStack {
            VStack(spacing:14) {
              MenuCard(image: "person.crop.circle", title: "profile")
              MenuCard(image: "dollarsign.circle", title: "Orders")
              MenuCard(image: "gearshape", title: "Settings")
              MenuCard(image: "info.circle", title: "Contact")
            }
            .padding(.horizontal)
            .padding(.top,40)
            VStack(spacing:14) {
              Image("cart")
                .resizable()
                .frame(width: 80, height: 80)
              Image("love")
                .resizable()
                .frame(width: 57, height: 57)
            }.padding(.horizontal)
          }.frame(width:size.width)
          Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        }.padding(.top,50)
      }
      Spacer(minLength: 0)
    }
    .frame(width: size.width, height: size.height)
    .edgesIgnoringSafeArea(.all)

  }
}

struct MenuCard:View {
  var image:String
  var title:String

  var body: some View {
    HStack {
      Image(systemName: image)
        .font(.system(size: 30))
        .foregroundColor(Color(#colorLiteral(red: 0.4470588235, green: 0.3882352941, blue: 1, alpha: 1)))
      Spacer(minLength: 0)
      Text(title.uppercased())
        .foregroundColor(.black)
        .fontWeight(.bold)
        .frame(height: 20)
      Spacer(minLength: 0)
      Image(systemName: "arrow.right")
        .font(.system(size: 30))
        .foregroundColor(.gray)
    }
  }
}
struct MenuView_Previews: PreviewProvider {
  static var previews: some View {
    MenuView()
  }
}
