//
//  BookView.swift
//  Travel
//
//  Created by Abed Qassim on 06/12/2020.
//

import SwiftUI

struct BookView: View {
  var size = UIScreen.main.bounds
  var compliation:(()->Void)?
  @State var search = ""
  var categoryList:[Category] = [Category(id: 1, image: "1", title: "Uphills", color: Color(#colorLiteral(red: 0.9764705882, green: 0.8705882353, blue: 1, alpha: 1))),Category(id: 2, image: "2", title: "Work of art", color: Color(#colorLiteral(red: 1, green: 0.9176470588, blue: 0.7294117647, alpha: 1))),Category(id: 3, image: "3", title: "Sea & Beach", color: Color(#colorLiteral(red: 0.6862745098, green: 0.937254902, blue: 1, alpha: 1))),Category(id: 4, image: "4", title: "Nature", color: Color(#colorLiteral(red: 0.8745098039, green: 1, blue: 0.7803921569, alpha: 1)))]

  var body: some View {
    ZStack {
      Rectangle()
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7333333333, green: 0.8666666667, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.9607843137, green: 0.8352941176, blue: 1, alpha: 1)),Color(#colorLiteral(red: 1, green: 0.8745098039, blue: 0.7333333333, alpha: 1)),Color(#colorLiteral(red: 0.8352941176, green: 0.8941176471, blue: 1, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3))
        .foregroundColor(.clear)

      VStack(alignment:.leading,spacing:30) {
        HStack {
          Button(action: {
            compliation?()
          }, label: {
            Image(systemName: "chevron.backward")
              .font(.system(size: 32))
              .foregroundColor(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
          })
          Spacer(minLength: 0)
          Button(action: {

          }, label: {
            Image(systemName: "magnifyingglass")
              .font(.system(size: 32))
              .foregroundColor(.gray)
          })
        }
        .padding(.top,40)

        Text("Explore")
          .font(.title)
          .fontWeight(.light)

        HStack {
          TextField("Search Destination...", text: $search)
          Spacer(minLength: 0)
          Button(action: {

          }, label: {
            Image(systemName: "magnifyingglass")
              .font(.system(size: 22))
              .foregroundColor(.white)
          })
          .padding()
          .background(Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)))
          .clipShape(Circle())
          .offset(x: 15.0)
        }
        .padding()
        .frame(height: 70)
        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).cornerRadius(40))
        HStack(spacing:13) {
          ForEach(categoryList,id:\.id) { cateogry in
            CategoryView(image: cateogry.image, title: cateogry.title, color: cateogry.color)
          }
        }

        Text("Popular")
          .font(.system(size: 35))
          .fontWeight(.light)


        HStack(alignment:.top,spacing:20) {

          VStack(alignment:.leading) {
            PopularView(height: 206, isFavorate: false)
            PopularView(height: 128, isFavorate: false)
          }
          VStack(alignment:.leading) {
            PopularView(height: 128, isFavorate: false)
            PopularView(height: 206, isFavorate: false)
          }
        }

        Spacer(minLength: 0)
      }.padding()
      .padding(.horizontal)
    }.edgesIgnoringSafeArea(.all)
  }
}
struct Category:Identifiable {
  var id:Int
  var image:String
  var title:String
  var color:Color
}
struct CategoryView:View {
  var image:String
  var title:String
  var color:Color
  var body: some View {
    VStack {
      Button(action: {

      }, label: {
        Image(image)
          .resizable()
          .frame(width: 36.24, height: 36.24)
          .foregroundColor(.white)
      })
      .padding(.vertical , 20)
      .padding(.horizontal , 20)
      .background(color.cornerRadius(20))
      Text(title)
        .font(.system(size: 12))
        .fontWeight(.bold)
    }
  }
}

struct PopularView:View {
  var height:Int
  @State var isFavorate:Bool
  var body: some View {
    ZStack(alignment:.top) {

      Image("bg")
        .resizable()
        .frame(height: CGFloat(height))
        .cornerRadius(10)
      Rectangle()
        .background(Blur(style: .systemUltraThinMaterialLight))
        .foregroundColor(.clear)
        .cornerRadius(10)
        .frame(height: 85)
      HStack {
        VStack(alignment:.leading,spacing:10) {
          Text("Parision brigde")
            .font(.system(size: 10))
            .foregroundColor(.white)
          Text("Venice, Italy")
            .font(.system(size: 8))
            .foregroundColor(.secondary)
        }.padding(.trailing)
        Spacer(minLength: 0)
        Button(action: {
          withAnimation {
            isFavorate.toggle()
          }
        }, label: {
          Image(systemName: isFavorate ? "suit.heart.fill":"suit.heart")
            .font(.system(size: 22))
            .foregroundColor(isFavorate ? Color(#colorLiteral(red: 0.9098039216, green: 0.7333333333, blue: 0.3254901961, alpha: 1)): Color(.gray))
        })
        .padding(.vertical,10)
        .padding(.horizontal,10)
        .background(Color(.white))
        .clipShape(Circle())
      }
      .padding(.vertical)
      .padding(.horizontal)
    }
  }
}
struct BookView_Previews: PreviewProvider {
  static var previews: some View {
    BookView()
  }
}
