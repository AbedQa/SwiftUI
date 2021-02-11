//
//  DetailView.swift
//  Plants
//
//  Created by Abed Qassim on 09/02/2021.
//

import SwiftUI

struct DetailView: View {
  var title: String
  var price: String
  var placeTitle: String
  var size = UIScreen.main.bounds
  var callBack: (()->())


    var body: some View {
      ZStack(alignment:.top) {
        Color(#colorLiteral(red: 0.9764705882, green: 0.9725490196, blue: 0.9921568627, alpha: 1))

        //Category & //Slider
        HStack {

          //Category
          VStack(spacing: 40) {
            Button(action: {

            }, label: {
              Image("light")
              .padding()
            })
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(CustomShape(size: .allCorners, cornerRaduis: 10)).shadow(color: Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)).opacity(0.29), radius: 10, x: 0.0, y: 0.0))

            Button(action: {

            }, label: {
              Image("water")
              .padding()
            })
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(CustomShape(size: .allCorners, cornerRaduis: 10)).shadow(color: Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)).opacity(0.29), radius: 10, x: 0.0, y: 0.0))

            Button(action: {

            }, label: {
              Image("water2")
              .padding()
            })
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(CustomShape(size: .allCorners, cornerRaduis: 10)).shadow(color: Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)).opacity(0.29), radius: 10, x: 0.0, y: 0.0))

            Button(action: {

            }, label: {
              Image("img")
              .padding()
            })
            .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(CustomShape(size: .allCorners, cornerRaduis: 10)).shadow(color: Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)).opacity(0.29), radius: 10, x: 0.0, y: 0.0))
          }
          .padding(.top , 80)
          .padding(.leading)

          Spacer(minLength: 0)

          //Slider
          ImageSlider()
            .shadow(color: Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)).opacity(0.29), radius: 10, x: 0.0, y: 0.0)

        }


        VStack {

        //Side Menu
        HStack {
          Button(action: {
            callBack()
          }, label: {
            Image(systemName: "arrow.backward")
              .font(.system(size: 23))
              .foregroundColor(.black)
          })

          Spacer(minLength: 0)

          Button(action: {

          }, label: {
            Image("more")
              .font(.system(size: 23))
              .foregroundColor(.black)
          })

        }.padding(.horizontal)
        .padding(.top , 40)

        Spacer(minLength: 0)

        //Detail Bottom
        VStack(spacing: 20) {
          HStack {
            Text(title)
              .font(.system(size: 30, weight: .bold, design: .default))
            Spacer(minLength: 0)
            Text(price)
              .font(.system(size: 30, weight: .bold, design: .default))
              .foregroundColor(Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)))
          }.padding(.horizontal)

          HStack {
            Text(placeTitle)
              .foregroundColor(Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)))
              .font(.system(size: 20, weight: .light, design: .default))
            Spacer(minLength: 0)

          }.padding(.horizontal)

          HStack {
            Button(action: {

            }, label: {
              Text("Buy Now")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(width: size.width / 2, height: 50, alignment: .center)
            })
            .padding(.vertical , 20)
            .background(Color(#colorLiteral(red: 0.04705882353, green: 0.5960784314, blue: 0.4117647059, alpha: 1)))
            .clipShape(CustomShape(size: .topRight, cornerRaduis: 20))


            Spacer(minLength: 0)

            Button(action: {

            }, label: {
              Text("Description")
                .foregroundColor(.black)
                .frame(width: size.width / 2, height: 50, alignment: .center)
            })
            .padding(.vertical , 20)
            .clipShape(CustomShape(size: .topRight, cornerRaduis: 20))

          }
        }

          }


      }.edgesIgnoringSafeArea(.all)
      
    }
}


struct ImageSlider: View {
  var size = UIScreen.main.bounds
  @State var indexSliderSelection = 0
  let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()

  var body: some View {
    ZStack(alignment: .bottom) {
      Image("\(indexSliderSelection + 1)")
        .resizable()
        .clipped()
        .clipShape(CustomShape(size: [.topLeft , .bottomLeft], cornerRaduis: 40))
        .offset(x: 40.0, y: 0)
        .frame(width: size.width * 0.8, height: size.height * 0.7, alignment: .center)
        .animation(.spring())

      HStack(alignment:.center) {
        Button(action: {
          withAnimation {
            indexSliderSelection = 0
          }
        }, label: {
          if indexSliderSelection == 0  {
            Rectangle()
              .frame(width: 40, height: 10)
              .clipShape(CustomShape(size: .allCorners, cornerRaduis: 10))
              .foregroundColor(.white)
              .padding(.bottom)
          } else {
            Circle()
              .frame(width: 15, height: 15)
              .foregroundColor(indexSliderSelection != 0 ? Color.white.opacity(0.7) : .white)
              .padding(.bottom)
          }
        })


        Button(action: {
          withAnimation {
            indexSliderSelection = 1
          }
        }, label: {
          if indexSliderSelection == 1  {
            Rectangle()
              .frame(width: 40, height: 10)
              .clipShape(CustomShape(size: .allCorners, cornerRaduis: 10))
              .foregroundColor(.white)
              .padding(.bottom)
          } else {
            Circle()
              .frame(width: 15, height: 15)
              .foregroundColor(indexSliderSelection != 1 ? Color.white.opacity(0.4) : .white)
              .padding(.bottom)
          }
        })


        Button(action: {
          withAnimation {
            indexSliderSelection = 2
          }
        }, label: {
          if indexSliderSelection == 2  {
            Rectangle()
              .frame(width: 40, height: 10)
              .clipShape(CustomShape(size: .allCorners, cornerRaduis: 10))
              .foregroundColor(.white)
              .padding(.bottom)
          } else {
            Circle()
              .frame(width: 15, height: 15)
              .foregroundColor(indexSliderSelection != 2 ? Color.white.opacity(0.7) : .white)
              .padding(.bottom)
          }
        })


        Button(action: {
          withAnimation {
            indexSliderSelection = 3
          }
        }, label: {
          if indexSliderSelection == 3  {
            Rectangle()
              .frame(width: 40, height: 10)
              .clipShape(CustomShape(size: .allCorners, cornerRaduis: 10))
              .foregroundColor(.white)
              .padding(.bottom)
          } else {
            Circle()
              .frame(width: 15, height: 15)
              .foregroundColor(indexSliderSelection != 3 ? Color.white.opacity(0.7) : .white)
              .padding(.bottom)
          }
        })

      }
      .offset(x: 20.0, y: 0)

    }.onReceive(timer) { input in
      if indexSliderSelection > 2 {
        indexSliderSelection = 0
      } else {
        indexSliderSelection += 1
      }
    }.animation(.spring())
  }
}

