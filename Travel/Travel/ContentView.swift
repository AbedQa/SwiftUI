//
//  ContentView.swift
//  Travel
//
//  Created by Abed Qassim on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
  var size = UIScreen.main.bounds

  @State var flipped = false
  var body: some View {
    let flipDegrees = flipped ? 180.0 : 0
    ZStack {
      BookView(compliation:{
        flipped.toggle()
      }).flipRotate(-180 + flipDegrees).opacity(flipped ? 1.0 : 0.0)
      .frame(width: size.width,height: size.height)
      HomeView(compliation:{
        flipped.toggle()
      })
      .flipRotate(flipDegrees).opacity(flipped ? 0.0 : 1.0)

    }

    .animation(.easeInOut(duration: 0.8))
  }

}

struct HomeView:View {
  var size = UIScreen.main.bounds
  @State var height = 350
  @State var indexSelected = -1
  var compliation:(()->Void)?
  var body: some View {
    ZStack {
      Image("bg")
      VStack {
        Spacer(minLength: 0)
        Rectangle()
          .frame(width: 75, height: 5)
          .background(Blur(style: .systemUltraThinMaterial))
          .foregroundColor(.clear)
          .gesture(DragGesture(minimumDistance: 0).onChanged(onDragChange(_:)))
        ZStack {
          Rectangle()
            .background(Blur(style: .systemUltraThinMaterial))
            .foregroundColor(.clear)
            .cornerRadius(20)
            .frame(width: size.width, height: CGFloat(height))
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
          HStack {
            VStack(alignment: .leading,spacing:10) {
              HStack {
                Image(systemName: "star.fill")
                  .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                  .font(.system(size: 18))
                Image(systemName: "star.fill")
                  .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                  .font(.system(size: 18))
                Image(systemName: "star.fill")
                  .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                  .font(.system(size: 18))
                Image(systemName: "star.fill")
                  .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                  .font(.system(size: 18))
                Image(systemName: "star.fill")
                  .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                  .font(.system(size: 18))
              }.padding(.top,20)
              Text("Mostar, Bosnia\nand Herzegovina")
                .font(.title)
                .foregroundColor(.white)
                .fontWeight(.heavy)
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in nisi non turpis porta posuere interdum at libero. Phasellus pharetra in tellus quis mattis. Duis placerat elementum ornare. Quisque tincidunt imperdiet velit vel convallis. Pellentesque vestibulum tristique eros, quis viverra nunc convallis vitae. Suspendisse potenti. Maecenas vel vestibulum lectus. Proin dapibus lorem leo, vitae mollis augue sollicitudin eget. Suspendisse finibus convallis pharetra.Aenean sit amet enim ut magna aliquet dapibus. Pellentesque maximus diam nec tortor venenatis, nec convallis sem blandit. Donec lobortis porta magna eu placerat. Ut sollicitudin sapien eget tempor varius. Curabitur tincidunt tincidunt mattis. Fusce mattis diam vel eros facilisis tristique. Nunc purus diam, volutpat at neque sed, vehicula imperdiet neque. Pellentesque ultricies blandit felis sollicitudin mattis. Cras sodales pretium viverra. Suspendisse diam ipsum, dapibus nec ipsum eget, tristique tempor quam. Nulla facilisi. Etiam vulputate auctor diam, quis imperdiet nibh mattis sed. Donec consequat dui mauris, non rhoncus ipsum eleifend vel. In at maximus odio. Mauris mollis, dolor nec porttitor pretium, lectus quam tempus risus, nec ultrices enim ligula et purus.Morbi lorem lorem, volutpat nec eros at, luctus lobortis justo. Etiam gravida rutrum justo vel iaculis. Cras non convallis ex, eu dictum nunc. Pellentesque sit amet mi et dui tincidunt dictum vel a odio. Nulla sodales est non erat cursus bibendum. Fusce iaculis augue rhoncus odio blandit fermentum at in urna. Donec pellentesque malesuada orci, vitae imperdiet nulla volutpat et. Integer dignissim iaculis aliquam. Suspendisse fringilla hendrerit nulla auctor dapibus.")
                .font(.system(size: 15))
                .foregroundColor(.white)
                .fontWeight(.heavy)
              Spacer(minLength: 0)
              ZStack {
                Rectangle()
                  .background(Blur(style: .systemUltraThinMaterialDark))
                  .foregroundColor(.clear)
                  .cornerRadius(20)
                  .frame( height: 85)
                HStack(spacing:10) {
                  ForEach(1...5,id:\.self) { i in
                    Button(action: {
                      withAnimation {
                        indexSelected = indexSelected == i ? -1 : i
                      }
                    }, label: {
                      CardItem(image: "bg")
                        .offset(x: 0, y: indexSelected == i ? -30.0 : 0)
                    })
                  }
                }.padding()
              }
              HStack {
                Button(action: {

                }, label: {
                  Text("Book Destination")
                    .foregroundColor(.white)
                })
                .padding()
                .frame(width: 258, height: 55)
                .background(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                .cornerRadius(15)
                Button(action: {
                  compliation?()
                }, label: {
                  Image(systemName: "arrow.right")
                    .font(.system(size: 22))
                    .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
                })
                .padding()
                .frame(width: 70, height: 55)
                .background(Color(.white))
                .cornerRadius(15)
              }.padding(.horizontal)
              .padding(.bottom)
            }.padding(.horizontal)
            Spacer(minLength: 0)
          }
          .padding()
          .frame(width: size.width, height: CGFloat(height))
          .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        }
      }.frame(width: size.width, height: size.height)
    }.edgesIgnoringSafeArea(.all)
  }
  func onDragChange(_ value:DragGesture.Value)  {
    var height = CGFloat(self.height) - (value.location.y - value.startLocation.y)
    print(height)
    print(UIScreen.main.bounds.height)
    if height < 350 {
      height = 350
    }else if height >= UIScreen.main.bounds.height - 40 {
      height = UIScreen.main.bounds.height - 80
    }
    self.height = Int(height)
  }
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
extension View {

  func flipRotate(_ degrees : Double) -> some View {
    return rotation3DEffect(Angle(degrees: degrees), axis: (x: 1.0, y: 0.0, z: 0.0))
  }

  func placedOnCard(_ color: Color) -> some View {
    return padding(5).frame(width: 250, height: 150, alignment: .center).background(color)
  }
}
