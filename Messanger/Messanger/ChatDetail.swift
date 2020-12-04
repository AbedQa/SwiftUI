//
//  ChatDetail.swift
//  Messanger
//
//  Created by Abed Qassim on 23/11/2020.
//

import SwiftUI

struct ChatDetail: View {
  @State var isDismiss:Bool = false
  @State var message:String = ""
  var body: some View {
    if isDismiss {
      ContentView().transition(.slide)
    }else {
      ZStack {
        Color(#colorLiteral(red: 0.9647058824, green: 0.9843137255, blue: 0.9960784314, alpha: 1)).edgesIgnoringSafeArea(.all)
        //Menu
        VStack {
          VStack {
            ZStack {
              HStack(spacing:15) {
                Button(action: {
                  isDismiss.toggle()
                }, label: {
                  Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fill)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                })
                
                HStack {
                  StoryView(image: "1", width: 50, height: 50)
                  VStack(alignment:.leading,spacing:5) {
                    Text("Molly Clark")
                      .font(.system(size: 22, weight: .bold, design: .default))
                      .foregroundColor(.white)
                    Text("Online")
                      .font(.system(size: 14, weight: .bold, design: .default))
                      .foregroundColor(Color.white.opacity(0.6))
                    
                  }
                }
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                  
                }, label: {
                  SearchView(imageName: "phone",paddingVertical: 2,paddingHorizontal: 2,size: 15)
                  
                })
                Button(action: {
                  
                }, label: {
                  SearchView(imageName: "video", paddingVertical: 2, paddingHorizontal: 2, size: 15)
                  
                })
                
              }
              .padding(.horizontal , 20)
            }
            .padding(.top)
          }
          .frame(height: 144)
          .background(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)).clipShape(CustomClip(corner: [.bottomLeft,.bottomRight], size: 30)).shadow(radius: 30))
          .edgesIgnoringSafeArea(.top)
          ScrollView(.vertical,showsIndicators:false) {
            VStack(spacing:50) {
              LeftSideChat(leftMessage: "Hi Ankur! What’s Up?", leftImage: "1", time: "Yesterday 14:26 PM")
              RightSideChat(rightMessage: "Oh, hello! All perfectly fine I'm just heading out for something", rightImage: "2", time: "Yesterday 14:38 PM")
              RightSideChat(rightMessage: "Yeah sure I'll be there this weekend with my brother", rightImage: "2", time: "Yesterday 14:50 PM")
              LeftSideChat(leftMessage: "Yes I am so happy", leftImage: "1", time: "Yesterday 14:38 PM")
            }
          }
          .padding(.top,30)
          
          Spacer(minLength: 0)
          
          ZStack {
            HStack {
              Button(action: {
                
              }, label: {
                Image(systemName: "camera")
                  .font(.system(size: 22))
                  .foregroundColor(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)))
              })
             
              TextField("Type your message", text: $message)
              
              Spacer(minLength: 0)
              Button(action: {
                
              }, label: {
                VStack {
                  Image(systemName: "paperplane.fill")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal,12)
                    .padding(.vertical,12)
                }.background(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)).clipShape(CustomClip(corner: .allCorners, size: 17)))
              })

            }.padding()
            .frame(width: UIScreen.main.bounds.width - 40)
            .background(Color(#colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 1, alpha: 1)).clipShape(CustomClip(corner: .allCorners, size: 10)))
          }.padding()
          
        }
      }.edgesIgnoringSafeArea(.all)
    }
  }
}

struct LeftSideChat:View {
  var leftMessage:String
  var leftImage:String
  var time:String
  var body: some View {
    HStack(spacing:20) {
      StoryView(image: leftImage, width: 50, height: 50)
      VStack(alignment:.leading) {
        VStack {
          Text(leftMessage)
            .padding(.vertical,15)
            .padding(.horizontal,20)
          
        }.background(Color(#colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 1, alpha: 1)).clipShape(CustomClip(corner: .allCorners, size: 13)))
        .padding(.horizontal,0)
        Text(time)
          .font(.system(size: 12))
          .foregroundColor(Color.black.opacity(0.6))
      }
      Spacer(minLength: 0)
    }.padding(.horizontal)
  }
}
struct RightSideChat:View {
  var rightMessage:String
  var rightImage:String
  var time:String
  var body: some View {
    HStack(spacing:20) {
      Spacer(minLength: 0)
      VStack(alignment:.trailing) {
        VStack {
          Text(rightMessage)
            .padding(.vertical,15)
            .padding(.horizontal,20)
            .foregroundColor(.white)
          
        }.background(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)).clipShape(CustomClip(corner: .allCorners, size: 13)))
        .padding(.horizontal,0)
        HStack {
          Text(time)
            .font(.system(size: 12))
            .foregroundColor(Color.black.opacity(0.6))
          Image(systemName: "eye")
            .font(.system(size: 14))
            .foregroundColor(Color(#colorLiteral(red: 0.3450980392, green: 0.4745098039, blue: 0.9333333333, alpha: 1)))
        }
      }
      StoryView(image: rightImage, width: 50, height: 50)
      
    }.padding(.horizontal)
  }
}

struct ChatDetail_Previews: PreviewProvider {
  static var previews: some View {
    ChatDetail()
  }
}
