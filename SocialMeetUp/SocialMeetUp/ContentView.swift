//
//  ContentView.swift
//  SocialMeetUp
//
//  Created by Abed Qassim on 10/02/2021.
//

import SwiftUI

struct Category: Identifiable {
  var id:Int
  var imageName: String
  var borderColor: Color
  var title: String
  var isActive: Bool
}

struct ItemCategory: Identifiable {
  var id = UUID()
  var time: String
  var title: String
  var description: String
  var backgroundColor: Color
  var icon: String
  var paddingTop: CGFloat
  var zIndex: Double
  var height: CGFloat
}

struct ItemCategoryGroup: Identifiable {
  var id: Int
  var categoryList: [ItemCategory]

}
var size = UIScreen.main.bounds

var categoryItemGroupList: [ItemCategoryGroup] = [
  ItemCategoryGroup(id: 0, categoryList: [ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.831372549, green: 0.4980392157, blue: 0.6509803922, alpha: 1)), icon: "icon" ,paddingTop :  size.height * 0.2 , zIndex: 2 , height: size.height * 0.55),
                                          ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.5411764706, green: 0.337254902, blue: 0.6745098039, alpha: 1)), icon: "icon2",paddingTop :  size.height * 0.5 , zIndex: 1 , height: size.height * 0.9),
                                                   ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.1411764706, green: 0.07450980392, blue: 0.1960784314, alpha: 1)), icon: "icon3",paddingTop :  size.height * 0.84 , zIndex: 0 , height: size.height * 1.3)]),

  ItemCategoryGroup(id: 1, categoryList: [ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.7058823529, green: 0.7725490196, blue: 0.3568627451, alpha: 1)), icon: "icon6",paddingTop :  size.height * 0.2 , zIndex: 2 , height: size.height * 0.55),
                                          ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.3215686275, green: 0.568627451, blue: 0.1803921569, alpha: 1)), icon: "icon4",paddingTop :  size.height * 0.5 , zIndex: 1 , height: size.height * 0.9),
                                          ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.1450980392, green: 0.2431372549, blue: 0.07058823529, alpha: 1)), icon: "icon5",paddingTop :  size.height * 0.84 , zIndex: 0 , height: size.height * 1.3)]),


  ItemCategoryGroup(id: 2, categoryList:  [ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.3058823529, green: 0.7411764706, blue: 0.937254902, alpha: 1)), icon: "icon2",paddingTop :  size.height * 0.2 , zIndex: 2 , height: size.height * 0.55),
                                           ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.2745098039, green: 0.4, blue: 0.8980392157, alpha: 1)), icon: "icon7",paddingTop :  size.height * 0.5 , zIndex: 1 , height: size.height * 0.9),
                                           ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.07450980392, green: 0.1490196078, blue: 0.2549019608, alpha: 1)), icon: "icon4",paddingTop :  size.height * 0.84 , zIndex: 0 , height: size.height * 1.3)]),


  ItemCategoryGroup(id: 3, categoryList: [ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.831372549, green: 0.4980392157, blue: 0.6509803922, alpha: 1)), icon: "icon",paddingTop :  size.height * 0.2 , zIndex: 2 , height: size.height * 0.55),
                                          ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.5411764706, green: 0.337254902, blue: 0.6745098039, alpha: 1)), icon: "icon",paddingTop :  size.height * 0.5 , zIndex: 1 , height: size.height * 0.9),
                                          ItemCategory(time: "TODAY 5:30 PM", title: "Experimental Pop Music  Session", description: "join Marie, John & 10 others",backgroundColor: Color(#colorLiteral(red: 0.1411764706, green: 0.07450980392, blue: 0.1960784314, alpha: 1)), icon: "icon",paddingTop :  size.height * 0.84 , zIndex: 0 , height: size.height * 1.3)])

]

var categoryList: [Category] = [
  Category(id: 0, imageName: "trending_up", borderColor: Color(#colorLiteral(red: 0.831372549, green: 0.4980392157, blue: 0.6509803922, alpha: 1)), title: "TRADING", isActive: true),
  Category(id: 1, imageName: "heart", borderColor: Color(#colorLiteral(red: 0.7058823529, green: 0.7725490196, blue: 0.3568627451, alpha: 1)), title: "HEALTH", isActive: false),
  Category(id: 2, imageName: "award", borderColor: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), title: "SPORT", isActive: false),
  Category(id: 3, imageName: "book_open", borderColor: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)), title: "LEARNING", isActive: false),
]



struct ContentView: View {

    @State var indexActive = 0
    @State var open = false
    @State var groupSelected = 0
    var size  = UIScreen.main.bounds


    var body: some View {

      ScrollView(.vertical, showsIndicators: false) {
        ZStack(alignment:.top) {

          ScrollView(.horizontal, showsIndicators: false){
              HStack(spacing: 40) {
                ForEach(categoryList) { category in
                  CategoryView(borderColor: category.borderColor, imageName: category.imageName, title: category.title, isActive: indexActive == category.id) {
                    withAnimation {
                      indexActive = category.id
                      groupSelected = category.id
                      open.toggle()
                    }
                  }
                }
              }
          }
        .padding()
        .padding(.leading)
        .frame(width: size.width, height: size.height * 0.25)
        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).clipShape(CustomShape(place: [.bottomLeft], size: 80)).shadow(radius: 10))
        .zIndex(3)

          ZStack(alignment:.top) {
            ForEach(categoryItemGroupList[groupSelected].categoryList) { category in
              ItemCategoryView(time: category.time, title: category.title, description: category.description, paddingTop: category.paddingTop, height: category.height, backgroundColor: category.backgroundColor, zIndex: category.zIndex, icon: category.icon)
                .animation(.spring(response: 0.7, dampingFraction: 0.3, blendDuration: 0.2))
            }
          }


        }
        .padding(.bottom)
        .background(Color(#colorLiteral(red: 0.5843137255, green: 0.6, blue: 0.7019607843, alpha: 1)))
      }
      .background(Color(#colorLiteral(red: 0.5843137255, green: 0.6, blue: 0.7019607843, alpha: 1)))

      .edgesIgnoringSafeArea(.all)
    }
}



struct ItemCategoryView: View {

  var time: String
  var title: String
  var description: String
  var paddingTop: CGFloat
  var height: CGFloat
  var backgroundColor: Color
  var zIndex: Double
  var icon: String
  var size = UIScreen.main.bounds
  var body: some View {
    VStack {

      HStack {

      VStack(alignment: .leading,spacing:10) {
        Text(time)
          .foregroundColor(Color.white.opacity(48))
          .font(.system(size: 13))

        Text(title)
          .foregroundColor(Color.white)
          .font(.system(size: 24))
          .fontWeight(.bold)

          Text(description)
            .foregroundColor(Color.white.opacity(48))
            .font(.system(size: 13))
        }

        Spacer()

        Image(icon)
      }
      .padding(.top , paddingTop)
      .padding(.horizontal)
    }
    .frame(width: size.width, height: height)
    .background(backgroundColor.clipShape(CustomShape(place: [.bottomLeft], size: 80)).shadow(radius: 10))
    .zIndex(zIndex)
  }
}

struct CustomShape: Shape {
  var place: UIRectCorner
  var size: Int

  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: place, cornerRadii: CGSize(width: size, height: size))
    return Path(path.cgPath)
  }
}

struct CategoryView: View {
  var borderColor: Color
  var imageName: String
  var title: String
  var isActive: Bool
  var onPress: (()->())

  var body: some View {
    VStack {
      ZStack {
        Button(action: {
          onPress()
        }, label: {
          Image(imageName)
            .foregroundColor(isActive ? .black : .gray)

        }).padding()
        .background(Circle().stroke(isActive ?  borderColor : .gray, lineWidth: 2))
      }
      Text(title)
        .fontWeight(.bold)
        .font(.system(size: 12))
        .foregroundColor(isActive ? .black : .gray)

    }
    .frame(height: 100)

  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
