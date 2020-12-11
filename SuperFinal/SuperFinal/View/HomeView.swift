//
//  HomeView.swift
//  SuperFinal
//
//  Created by Abed Qassim on 11/12/2020.
//

import SwiftUI

struct HomeView:View {
  var compliation:(()-> Void)?
  var size  = UIScreen.main.bounds
  @State var bgGradiant = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9333333333, green: 0.8039215686, blue: 0.6392156863, alpha: 1)),Color(#colorLiteral(red: 0.937254902, green: 0.3843137255, blue: 0.6235294118, alpha: 1))]), startPoint: .top, endPoint: .bottomTrailing)
  @State var topgradiant = LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.937254902, green: 0.3843137255, blue: 0.6235294118, alpha: 1)),Color(#colorLiteral(red: 0.9333333333, green: 0.8039215686, blue: 0.6392156863, alpha: 1))]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
  @State var cardSelected:CategoryCard?
  var body: some View {
    ZStack {
      VStack(spacing:10) {
        ZStack {
          Ellipse()
            .fill(topgradiant)
            .frame(width: size.width + 100, height: 350)
            .rotationEffect(.init(degrees: -25))
            .offset(x: -40.0, y: -125.0)
            .shadow(radius: 10)
            .padding(.top , 40)
          Ellipse()
            .fill(Color.white)
            .frame(width: size.width + 100, height: 350)
            .rotationEffect(.init(degrees: -20))
            .offset(x: -40.0, y: -150.0)
            .shadow(radius: 10)
            .padding(.top , 40)
          HStack {
            Spacer(minLength: 0)
            VStack(spacing:9) {
              Image("cart")
                .resizable()
                .frame(width: 80, height: 80)
                .padding(.trailing,-30)
                .padding(.top , -40)
              Image("love")
                .resizable()
                .frame(width: 57, height: 57)
                .padding(.trailing,95)
                .padding(.top , -30)
            }
          }
          .frame(width: size.width)
          HStack {
            Button(action: {
              withAnimation {
                compliation?()
              }
            }, label: {
              Image("menu")
                .resizable()
                .frame(width: 23, height: 23)
            })

            Spacer(minLength: 0)
          }
          .padding(.horizontal)
          .padding(.top , -65.0)
          .frame(width: size.width)
          Text("Explore")
            .font(.title)
            .fontWeight(.bold)
            .padding(.top , -65.0)
        }
        .frame(width:size.width,height: size.height * 0.3)
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(spacing:0) {
            ForEach(categoryCardList) { card in
              CategoryCardItem(isSelected: cardSelected?.id == card.id, categoryCard: card)
                .onTapGesture {
                  withAnimation {
                    cardSelected = card
                  }
                }
            }
          }.frame(height: 100)
        }
        HStack {
          Text("Nearby")
            .fontWeight(.bold)
            .padding(.vertical,15)
            .padding(.horizontal,20)
            .foregroundColor(.white)
            .background(bgGradiant.cornerRadius(30))
          Spacer(minLength: 0)
          Text("Search")
            .fontWeight(.bold)
            .padding(.vertical,15)
            .padding(.horizontal,20)
            .foregroundColor(.gray)
          Spacer(minLength: 0)
          Image(systemName: "magnifyingglass")
            .font(.system(size: 25))
            .padding(.vertical,15)
            .padding(.horizontal,15)
            .foregroundColor(.white)
            .background(bgGradiant.cornerRadius(30))
        }
        .padding(.horizontal)
        .frame(width: size.width - 20, height: 60)
        .background(Color.white.cornerRadius(40))
        ScrollView(.vertical, showsIndicators: false) {

          VStack(spacing:30) {
            HStack(spacing:20) {
              ItemView()
              Spacer(minLength: 0)
              ItemView()
            }.padding(.horizontal)
            HStack(spacing:20) {
              ItemView()
              Spacer(minLength: 0)
              ItemView()
            }.padding(.horizontal)
          }.padding(.top)
        }


        Spacer(minLength: 0)
      }
    }
    .frame(width: size.width, height: size.height)
    .background(bgGradiant)
    .edgesIgnoringSafeArea(.all)
    .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 5))
  }
}
let categoryCardList: [CategoryCard] = [CategoryCard(name:"Flowers",image:"sunflower",shadowCard:Color(#colorLiteral(red: 1, green: 0.3647058824, blue: 0.7254901961, alpha: 0.41)))
                                        ,CategoryCard(name:"Plants",image:"plant",shadowCard:Color(#colorLiteral(red: 0.4549019608, green: 0.6470588235, blue: 0.05882352941, alpha: 0.41))),CategoryCard(name:"Fruits",image:"harvest",shadowCard:Color(#colorLiteral(red: 0.3647058824, green: 0.5529411765, blue: 1, alpha: 0.41)))]
struct CategoryCard:Identifiable {
  var id: String { return name }
  var name:String
  var image:String
  var shadowCard:Color
}
struct CategoryCardItem:View {
  var isSelected:Bool
  var categoryCard:CategoryCard
  var body: some View {
    HStack {
      Image(categoryCard.image)
        .aspectRatio(contentMode: .fit)
      Text(categoryCard.name)
        .font(.title)
        .fontWeight(.semibold)
    }
    .frame(width: 153)
    .padding()
    .background(Color.white.cornerRadius(40).shadow(color: categoryCard.shadowCard, radius: 10, x: 0.0, y: 10.0))
    .scaleEffect(CGSize(width: isSelected ? 0.9 : 0.85, height: isSelected ? 0.9 : 0.85))
    .opacity(isSelected ? 1 : 0.7)
    .animation(.spring(response: 0.1, dampingFraction: 0.5, blendDuration: 0.2))
  }
}
struct ItemView:View {
  var body: some View {
    VStack(spacing:0) {
      HStack(spacing:20) {
        Image(systemName: "suit.heart.fill")
          .font(.system(size: 30))
          .foregroundColor(Color(#colorLiteral(red: 0.9535607696, green: 0.3586173952, blue: 0.6093664169, alpha: 1)))
          .padding()
          .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(Circle()).shadow(radius: 10))
        Image(systemName: "cart.fill")
          .font(.system(size: 30))
          .foregroundColor(Color(#colorLiteral(red: 0.4079675078, green: 0.5571517944, blue: 0.9987358451, alpha: 1)))
          .padding()
          .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(Circle()).shadow(radius: 10))


      }.offset(x: 0, y: -10.0)
      Image("flower")
        .resizable()
        .frame(width: 128, height: 130)
        .offset(x: 0, y: -20.0)
      VStack(spacing:0) {
        Text("White Rose")
          .font(.system(size: 24))
          .fontWeight(.bold)
        Text("Length : 10cm")
          .font(.system(size: 17))
          .foregroundColor(.secondary)
          .fontWeight(.bold)
        Text("$19.05")
          .font(.system(size: 27))
          .foregroundColor(Color(#colorLiteral(red: 0.8799404502, green: 0.3541530967, blue: 0.4222243726, alpha: 1)))
          .fontWeight(.bold)
      } .offset(x: 0, y: -10.0)
      Spacer(minLength: 0)
    }
    .frame(width:175 ,height:288)
    .background(Color.white.cornerRadius(40).shadow(color: .gray, radius: 10, x: 0.0, y: 10.0))
  }
}
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
