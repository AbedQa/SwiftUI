//
//  HomeView.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI

struct HomeView: View {
  var padding:CGFloat = 20
  @State var search = ""
  @State var indexSelect = 0
  var callBack: (()->())
  var size = UIScreen.main.bounds
    var body: some View {
      ZStack(alignment:.top) {


        Color(#colorLiteral(red: 0.04344524443, green: 0.5960595608, blue: 0.4094848037, alpha: 1))
          .frame(width: size.width, height: size.height * 0.3)
          .clipShape(CustomShape(size: [.bottomLeft,.bottomRight], cornerRaduis: 36))



        VStack(spacing: padding * 2) {
          HStack {
            Text("Hi Ankur !")
              .font(.system(size: 30, weight: .bold, design: .default))
              .foregroundColor(.white)
            Spacer(minLength: 0)
            Image("profile")
              .resizable()
              .frame(width: 75, height: 75)
              .clipShape(Circle())
          }
          .padding(.horizontal)

          HStack {
            TextField("Search" , text: $search)
              .padding()

            Image(systemName: "magnifyingglass")
              .padding(.trailing)
              .foregroundColor(Color(#colorLiteral(red: 0.467638135, green: 0.7861530185, blue: 0.6807405949, alpha: 1)))
          }
          .frame(width: size.width - (padding * 2) , height: 50)
          .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).cornerRadius(10).shadow(radius: 10))


          ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing:20) {
              HeadCategory(title: "Recomended")

              ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:20) {
                  ForEach(1..<4) { i in

                    Button(action: {
                      callBack()
                    }, label: {
                      FlowerView(imageName: "\(i)", imageTitle: "SAMANTHA", price: "$400", palceTitle: "INDOOR")
                    })

                  }
                }

              }

                HeadCategory(title: "Featured Plants")

                ScrollView(.horizontal, showsIndicators: false) {
                  HStack(spacing:20) {
                    ForEach(4..<6) { i in

                      FeaturedPlantsView(imageName: "\(i)")
                    }
                  }

                }
            }
            .padding(.bottom)
          }
          .padding(.horizontal)
          .padding(.bottom , padding * 4)
        }
        .padding(.top , (size.height * 0.3) - (padding * 7))



        VStack {
          HStack {
            Image("menu")
            Spacer(minLength: 0)
          }
          .padding(.horizontal)
          .padding(.top , padding * 2)
          Spacer(minLength: 0)

          HStack {

            Button(action: {
              withAnimation {
                indexSelect = 0
              }
            }, label: {
              Image(systemName: indexSelect == 0 ?  "star.fill" : "star")
                .font(.system(size: 23))
                .foregroundColor(indexSelect == 0 ? Color(#colorLiteral(red: 0.03293199092, green: 0.508110404, blue: 0.3533848524, alpha: 1)) :Color.gray)
            })

            Spacer(minLength: 0)

            Button(action: {
              withAnimation {
                indexSelect = 1
              }
            }, label: {
              Image(systemName: indexSelect == 1 ?  "suit.heart.fill" : "suit.heart")
                .font(.system(size: 23))
                .foregroundColor(indexSelect == 1 ? Color(#colorLiteral(red: 0.03293199092, green: 0.508110404, blue: 0.3533848524, alpha: 1)) :Color.gray)
            })

            Spacer(minLength: 0)

            Button(action: {
              withAnimation {
                indexSelect = 3
              }
            }, label: {
              Image(systemName: indexSelect == 3 ?  "person.fill" : "person")
                .font(.system(size: 23))
                .foregroundColor(indexSelect == 3 ? Color(#colorLiteral(red: 0.03293199092, green: 0.508110404, blue: 0.3533848524, alpha: 1)) :Color.gray)
            })

          }
          .padding(.horizontal)
          .padding(.vertical)
          .frame(width: size.width, height: 80, alignment: .center)
          .background(Color(.white).shadow(color: Color(#colorLiteral(red: 0.4392156863, green: 0.4392156863, blue: 0.4392156863, alpha: 1)), radius: 10, x: 0.0, y: 0.0))
        }


      }.edgesIgnoringSafeArea(.all)
      
    }
}
