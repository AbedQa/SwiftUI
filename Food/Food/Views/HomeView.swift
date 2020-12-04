//
//  HomeView.swift
//  Food
//
//  Created by Abed Qassim on 02/12/2020.
//

import SwiftUI

struct HomeView: View {
  var size = UIScreen.main.bounds
  @State var isShowMenu:Bool = false
  @State var search:String = ""
  var body: some View {
    ZStack {
      SideMenuView()
      VStack {
        ScrollView(.vertical, showsIndicators: false) {
          VStack {
            HStack {
              Button(action: {
                isShowMenu.toggle()
              }, label: {
                Image(systemName: "text.alignleft")
                  .font(.system(size: 30))
                  .foregroundColor(.black)
              })
              Spacer(minLength: 0)
              Button(action: {

              }, label: {
                Image("notifications")
                  .resizable()
                  .frame(width: 30, height: 30)
                  .foregroundColor(.black)
              })
            }.padding(.top,60)
            .padding(.horizontal)
            VStack(alignment:.leading,spacing:20) {

              Text("Hello, Emma")
                .foregroundColor(Color(#colorLiteral(red: 0.6980392157, green: 0.7176470588, blue: 0.7764705882, alpha: 1)))
              Text("What would you like to cook today?")
                .multilineTextAlignment(.leading)
                .font(.system(size: 26, weight: .bold, design: .default))
              HStack {
                HStack {
                  Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(#colorLiteral(red: 0.6980392157, green: 0.7176470588, blue: 0.7764705882, alpha: 1)))
                    .font(.system(size: 22))
                    .padding(.leading)
                  TextField("Search....", text: $search)
                    .padding(.horizontal)
                }
                .padding(.vertical)
                .background(Color(#colorLiteral(red: 0.968627451, green: 0.9725490196, blue: 0.9882352941, alpha: 1)).cornerRadius(20))
                Button(action: {

                }, label: {
                  Image(systemName: "line.horizontal.3.decrease.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                })
                .padding(.vertical,10)
                .padding(.horizontal,10)
                .background(Color(#colorLiteral(red: 0.968627451, green: 0.9725490196, blue: 0.9882352941, alpha: 1)).cornerRadius(12))
              }
              HStack {
                Text("Today's Fresh Recipes")
                  .multilineTextAlignment(.leading)
                  .font(.system(size: 26, weight: .bold, design: .default))
                Spacer(minLength: 0)

                Text("See All")
                  .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3529411765, blue: 0, alpha: 1)))
                  .multilineTextAlignment(.leading)
                  .font(.system(size: 20, weight: .bold, design: .default))
                  .onTapGesture {
                    print("See All")
                  }
              }
              ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:50) {
                  ForEach (1..<6) { i in
                    if i == 5 {
                      RecipesView(foodImage: i % 2 == 0 ? "image" : "image2", isFavorate: i % 2 == 0, recipeType: "Breakfast", recipeTitle: "Toast with Berries", recipeStarCount: 5, caloriesCountTitle: "120 Calories", time: "10 mins", serving: "1 Serving").padding(.trailing)
                    }
                    else {
                      RecipesView(foodImage: i % 2 == 0 ? "image" : "image2", isFavorate: i % 2 == 0, recipeType: "Breakfast", recipeTitle: "Toast with Berries", recipeStarCount: 5, caloriesCountTitle: "120 Calories", time: "10 mins", serving: "1 Serving")
                    }

                  }
                }.padding()
              }
              HStack {
                Text("Recommended")
                  .multilineTextAlignment(.leading)
                  .font(.system(size: 26, weight: .bold, design: .default))
                Spacer(minLength: 0)

                Text("See All")
                  .foregroundColor(Color(#colorLiteral(red: 0.9607843137, green: 0.3529411765, blue: 0, alpha: 1)))
                  .multilineTextAlignment(.leading)
                  .font(.system(size: 20, weight: .bold, design: .default))
                  .onTapGesture {
                    print("See All")
                  }
              }
              ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:20) {
                  ForEach (1..<6) { i in
                    RecommendedView(foodImage: i % 2 == 0 ? "image" : "image2", isFavorate: i % 2 == 0, recipeType: "Breakfast", recipeTitle: "Toast with Berries", recipeStarCount: 5, caloriesCountTitle: "120 Calories", time: "10 mins", serving: "1 Serving")
                  }
                }.padding()
              }
            }
            .padding(.top)
            .frame(width: size.width - 30)
          }
        }
        Spacer(minLength: 0)
      }.background(Color(.white).shadow(color: .gray, radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)).edgesIgnoringSafeArea(.all).offset(x: isShowMenu ? 300.0 : 0).rotationEffect(Angle(degrees: isShowMenu ? -10 : 0))
      .rotation3DEffect(Angle(degrees: isShowMenu ? 10: 0), axis: (x: isShowMenu ? 120 : 0, y: isShowMenu ? 234 : 0, z: isShowMenu ? 0 : 0))
      .animation(.spring())

    }
  }
}
struct RecipesView:View {
  var foodImage:String
  var isFavorate:Bool
  var recipeType:String
  var recipeTitle:String
  var recipeStarCount:Int
  var caloriesCountTitle:String
  var time:String
  var serving:String
  var body: some View {
    ZStack(alignment:.topLeading) {
      Image(foodImage)
        .offset(x: 40, y: 10.0)
      VStack(alignment:.leading) {
        Image(systemName: !isFavorate ? "heart" : "suit.heart.fill")
          .font(.system(size: 23))
          .foregroundColor(!isFavorate ? .gray : .red)
        Spacer(minLength: 0)
        VStack(alignment:.leading,spacing:4) {
          Text(recipeType)
            .font(.system(size: 9))
            .foregroundColor(Color(#colorLiteral(red: 0.07058823529, green: 0.5607843137, blue: 0.6823529412, alpha: 1)))
            .padding(.top)
          Text(recipeTitle)
            .font(.system(size: 14))
          HStack(spacing:0) {
            ForEach (1..<6) { i in
              if i <= recipeStarCount {
                Image(systemName: "star.fill")
                  .font(.system(size: 8))
                  .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4968384504, blue: 0, alpha: 1)))
              }else {
                Image(systemName: "star.fill")
                  .font(.system(size: 8))
                  .foregroundColor(.gray)
              }
            }
          }
          Text(caloriesCountTitle)
            .font(.system(size: 8, weight: .bold, design: .default))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4968384504, blue: 0, alpha: 1)))
          HStack {
            HStack(spacing:5) {
              Image(systemName: "clock")
                .font(.system(size: 8))
                .foregroundColor(.gray)
              Text(time)
                .font(.system(size: 8, weight: .bold, design: .default))
                .foregroundColor(.gray)
            }
            HStack(spacing:5) {
              Image("serving")
                .font(.system(size: 8))
                .foregroundColor(.gray)
              Text(serving)
                .font(.system(size: 8, weight: .bold, design: .default))
                .foregroundColor(.gray)
            }
          }
        }
        Spacer(minLength: 0)
      }.padding()
    }
    .frame(width: 147, height: 200)
    .background(Color(#colorLiteral(red: 0.968627451, green: 0.9725490196, blue: 0.9882352941, alpha: 1)).cornerRadius(12))
  }
}
struct RecommendedView:View {
  var foodImage:String
  var isFavorate:Bool
  var recipeType:String
  var recipeTitle:String
  var recipeStarCount:Int
  var caloriesCountTitle:String
  var time:String
  var serving:String
  var size = UIScreen.main.bounds
  var body: some View {
    HStack {
      Image(foodImage)
      Spacer(minLength: 0)
      VStack(spacing:10) {
        VStack(alignment:.leading,spacing:4) {
          Text(recipeType)
            .font(.system(size: 12))
            .foregroundColor(Color(#colorLiteral(red: 0.07058823529, green: 0.5607843137, blue: 0.6823529412, alpha: 1)))

          Text(recipeTitle)
            .font(.system(size: 18))
            .fontWeight(.bold)
          HStack {
            HStack(spacing:0) {
              ForEach (1..<6) { i in
                if i <= recipeStarCount {
                  Image(systemName: "star.fill")
                    .font(.system(size: 8))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4968384504, blue: 0, alpha: 1)))
                }else {
                  Image(systemName: "star.fill")
                    .font(.system(size: 8))
                    .foregroundColor(.gray)
                }
              }
            }
            Text(caloriesCountTitle)
              .font(.system(size: 12, weight: .bold, design: .default))
              .foregroundColor(Color(#colorLiteral(red: 1, green: 0.4968384504, blue: 0, alpha: 1)))
          }
          HStack {
            HStack(spacing:5) {
              Image(systemName: "clock")
                .font(.system(size: 12))
                .foregroundColor(.gray)
              Text(time)
                .font(.system(size: 12, weight: .bold, design: .default))
                .foregroundColor(.gray)
            }
            HStack(spacing:5) {
              Image("serving")
                .font(.system(size: 12))
                .foregroundColor(.gray)
              Text(serving)
                .font(.system(size: 12, weight: .bold, design: .default))
                .foregroundColor(.gray)
            }
          }
        }
      }
      Spacer(minLength: 0)
      VStack {
        Image(systemName: !isFavorate ? "heart" : "suit.heart.fill")
          .font(.system(size: 23))
          .foregroundColor(!isFavorate ? .gray : .red)
        Spacer(minLength: 0)
      }.padding(.top , 10)
      .padding(.leading , 10)
      .padding(.trailing , 10)

    }
    .padding(.vertical , 20)
    .background(Color(#colorLiteral(red: 0.968627451, green: 0.9725490196, blue: 0.9882352941, alpha: 1)).cornerRadius(12))
    
  }
}
struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
