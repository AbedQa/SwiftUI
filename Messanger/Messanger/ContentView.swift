//
//  ContentView.swift
//  Messanger
//
//  Created by Abed Qassim on 22/11/2020.
//

import SwiftUI

struct ContentView: View {
  @State var showDetail:Bool = false
  var body: some View {
    if showDetail {
      ChatDetail()
        .transition(.opacity)
    }else {
      ZStack {
        Color(#colorLiteral(red: 0.9647058824, green: 0.9843137255, blue: 0.9960784314, alpha: 1)).edgesIgnoringSafeArea(.all)
        //Menu
        VStack {
          VStack{
            ZStack {
              Text("MESSAGE")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .bold, design: .default))
              HStack {
                Button(action: {
                  
                }, label: {
                  Image("menu")
                    .aspectRatio(contentMode: .fill)
                    .font(.system(size: 43))
                    .foregroundColor(.black)
                })
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                  
                }, label: {
                  StoryView(image: "1",width: 50,height: 50)
                })
              }
              .padding(.horizontal , 20)
            }
            ScrollView(.horizontal, showsIndicators: false) {
              HStack(spacing:20) {
                Button(action: {
                  
                }, label: {
                  SearchView(imageName: "magnifyingglass")
                })
                StoryView(image: "1")
                StoryView(image: "2")
                StoryView(image: "3")
                StoryView(image: "4")
                
              }.padding(.horizontal,20)
            }.padding(.top,40)
          }.frame(height: 244)
          .background(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)).clipShape(CustomClip(corner: [.bottomLeft,.bottomRight], size: 40)).shadow(radius: 30))
          .edgesIgnoringSafeArea(.top)
          
          ScrollView (/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
            VStack(spacing:25) {
              ForEach (chatList,id:\.id) { chat in
                Button(action: {
                  showDetail.toggle()
                }, label: {
                  ChatView(profileImage: chat.profileImage, username:chat.username, lastMessage: chat.lastMessage, time: chat.time, hasNewMessage: chat.hasNewMessage, countNewMessage: chat.countNewMessage)
                  
                })
                
              }
              
            }
          }.padding(.top,10)
          Spacer(minLength: 0)
          HStack(spacing:50) {
            Button(action: {
              
            }, label: {
              Image(systemName: "message")
                .font(.system(size: 20))
                .foregroundColor(.black)
            })
            Button(action: {
              
            }, label: {
              Image(systemName: "phone")
                .font(.system(size: 20))
                .foregroundColor(.black)
            })
            
            Button(action: {
              
            }, label: {
              Image(systemName: "plus")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .background(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)).clipShape(CustomClip(corner: .allCorners, size: 14)))
            })
            
            Button(action: {
              
            }, label: {
              Image(systemName: "person.crop.circle")
                .font(.system(size: 20))
                .foregroundColor(.black)
            })
            Button(action: {
              
            }, label: {
              Image(systemName: "gearshape")
                .font(.system(size: 20))
                .foregroundColor(.black)
            })
            
            
            
          }
          .padding(.horizontal,20)
          .edgesIgnoringSafeArea(.bottom)
        }
      }
    }
  }
}
struct StoryView:View {
  var image:String
  var width:CGFloat = 60
  var height:CGFloat = 60
  
  var body: some View {
    Image(image)
      .resizable()
      .frame(width: width, height: height)
      .clipShape(CustomClip(corner: .allCorners, size: 10))
      .shadow(radius: 10)
  }
}

struct SearchView:View {
  var imageName:String
  var paddingVertical:CGFloat = 20
  var paddingHorizontal:CGFloat = 20
  var size:CGFloat = 20
  var body: some View {
    VStack {
      Image(systemName: imageName)
        .font(.system(size: size))
        .foregroundColor(.white)
      
    }
    .padding(.vertical , 20)
    .padding(.horizontal , 20)
    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.2))
    .clipShape(CustomClip(corner: .allCorners, size: 10))
    
  }
}
let chatList:[Chat] = [Chat(id: 1, profileImage: "1", username: "Julian Dasilva", lastMessage: "Hi Julian! See you after work?", time: "12:00", hasNewMessage: true, countNewMessage: "12"),Chat(id: 2, profileImage: "2", username: "Mike Lyne", lastMessage: "I must tell you my interview this...", time: "13:50", hasNewMessage: true, countNewMessage: "2"),Chat(id: 3, profileImage: "3", username: "Claire Kumas", lastMessage: "Yes I can do this to you in the...", time: "13:30", hasNewMessage: false, countNewMessage: ""),Chat(id: 4, profileImage: "4", username: "Blair Dota", lastMessage: "By the way, did not you see my...", time: "13:30", hasNewMessage: false, countNewMessage: "")]
struct ChatView:View {
  var profileImage:String
  var username:String
  var lastMessage:String
  var time:String
  var hasNewMessage:Bool
  var countNewMessage:String
  var body: some View {
    HStack {
      Image(profileImage)
        .resizable()
        .frame(width: 80, height: 80)
        .clipShape(CustomClip(corner: .allCorners, size: 10))
        .shadow(radius: 1)
      Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
      HStack {
        VStack(alignment: .leading) {
          Text(username)
            .font(.system(size: 25, weight: .bold, design: .default))
            .foregroundColor(hasNewMessage ? Color(#colorLiteral(red: 0.3889322877, green: 0.4270994961, blue: 1, alpha: 1)) : .black)
            .padding(.top)
          Spacer(minLength: 0)
          Text(lastMessage)
            .font(.system(size: 17))
            .padding(.vertical,5)
            .padding(.horizontal,5)
            .foregroundColor(Color.black.opacity(0.6))
        }.padding(.leading)
        Spacer(minLength: 0)
        VStack(alignment: .trailing) {
          Text(time)
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(Color.black.opacity(0.6))
            .padding(.top)
          Spacer(minLength: 0)
          if hasNewMessage {
            VStack {
              Text(countNewMessage)
                .font(.system(size: 14))
                .foregroundColor(.white)
                .padding(.vertical,10)
                .padding(.horizontal,10)
            }.background(Color(#colorLiteral(red: 0.3889322877, green: 0.4270994961, blue: 1, alpha: 1)).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/))
          }
        }.padding(.leading)
        
      }
    }.padding(.horizontal, 20)
  }
}
struct Chat:Identifiable {
  var id:Int
  var profileImage:String
  var username:String
  var lastMessage:String
  var time:String
  var hasNewMessage:Bool
  var countNewMessage:String
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
