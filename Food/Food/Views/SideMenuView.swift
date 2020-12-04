//
//  SideMenuView.swift
//  Food
//
//  Created by Abed Qassim on 03/12/2020.
//

import SwiftUI

struct SideMenuView: View {
  @State var indexSelectdId = 1
  var body: some View {
    VStack {
      HStack {
        HStack {
          Button(action: {

          }, label: {
            Image("1")
              .resizable()
              .frame(width: 60, height: 60)
              .clipShape(Circle())
              .foregroundColor(.black)
          })
          VStack(alignment:.leading,spacing:4) {
            Text("Emma Holmes")
            Text("View Profile")
              .foregroundColor(.secondary)

          }
        }

        Spacer(minLength: 0)
        Button(action: {

        }, label: {
          Image("notifications")
            .resizable()
            .frame(width: 30, height: 30)
            .foregroundColor(.black)
        })
      }.padding(.horizontal)
      HStack {

        VStack(alignment:.leading,spacing:50) {
          ForEach (0..<itemMenuList.count) { i in
            Button(action: {
              indexSelectdId = i + 1
            }, label: {
              ItemMenu(title: itemMenuList[i].title, image: itemMenuList[i].image, isSelect: itemMenuList[i].id == indexSelectdId)
            })

          }
        }.padding(.top , 100)
        Spacer(minLength: 0)
      }.padding(.horizontal,30)

      Spacer(minLength: 0)
    }
  }
}
let itemMenuList:[ItemMenuModel] = [ItemMenuModel(id:1,title:"Home",image:"house", isSelect: true)
                                    ,ItemMenuModel(id:2,title:"Favorites",image:"suit.heart", isSelect: false)
                                    ,ItemMenuModel(id:3,title:"Recently Viewed",image:"eye", isSelect: false)
                                    ,ItemMenuModel(id:4,title:"Settings",image:"gearshape", isSelect: false)

                                    ,ItemMenuModel(id:5,title:"About Us",image:"info.circle", isSelect: false)
                                    ,ItemMenuModel(id:6,title:"Help",image:"info.circle", isSelect: false)
                                    ,ItemMenuModel(id:7,title:"Sign Out",image:"pip.exit", isSelect: false)
]
struct ItemMenuModel:Identifiable {
  var id: Int
  var title:String
  var image:String
  @State var isSelect:Bool
}
struct ItemMenu:View {
  var title:String
  var image:String
  var isSelect:Bool
  var body: some View {
    HStack {
      Image(systemName: image)
        .font(.system(size: 22))
        .foregroundColor(isSelect ? .orange : .secondary)
      Text(title)
        .font(.system(size: 22))
        .foregroundColor(isSelect ? .orange : .secondary)
    }

  }
}

struct SideMenuView_Previews: PreviewProvider {
  static var previews: some View {
    SideMenuView()
  }
}
