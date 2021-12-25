//
//  Profile.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 24/12/2021.
//

import SwiftUI
struct Profile: View {
    @Binding var showProfile : Bool
    var animation: Namespace.ID
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    Button(action: {
                        withAnimation(.spring()){showProfile.toggle()}
                    }){
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.053, green: 0.023, blue: 0.181)/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50,alignment: .leading)
                    .padding(.bottom,40)
                    .padding(.top,10)
                    Image("ProfileImg")
                        .resizable()
                        .frame(width: 85, height: 85)
                        .cornerRadius(15)
                        .padding(.bottom, 17)
                    Text("Naglaa Ogabih")
                        .font(.custom("LobsterTwo-Bold", size: 27))
                        .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                        .padding(.bottom,1)
                    
                    Text(verbatim: "Ogabihnaglaa@gmail.com")
                        .font(.custom("LobsterTwo-Bold", size: 17))
                        .foregroundColor(Color(red: 0.053, green: 0.027, blue: 0.185,opacity: 0.5))
                        .padding(.bottom,55)
                }
                .frame(width: UIScreen.main.bounds.width)
                .background(Color.white)
               
                .cornerRadius(20)
                VStack{
                    Button(action: {}){
                        Image("history")
                            .resizable()
                            .frame(width: 25, height: 25,alignment: .leading)
                        Text("Purchase History")        .font(.custom("LobsterTwo-Bold", size: 22))
                            .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                            .padding(.all,10)
                            .frame(alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50,alignment: .leading)
                    .padding(.leading,30)
                    Divider()
                        .frame(height: 1)
                        .padding(.horizontal, 30)
                        .background(Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.7))
                    Button(action: {}){
                        Image("user")
                            .resizable()
                            .frame(width: 25, height: 25,alignment: .leading)
                        Text("Invite A Friend")        .font(.custom("LobsterTwo-Bold", size: 22))
                            .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                            .padding(.all,10)
                            .frame(alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50,alignment: .leading)
                    .padding(.leading,30)
                    
                    Divider()
                        .frame(height: 1)
                        .padding(.horizontal, 30)
                        .background(Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.7))
                    
                    Button(action: {}){
                        Image("information")
                            .resizable()
                            .frame(width: 25, height: 25,alignment: .leading)
                        Text("Help & Support")        .font(.custom("LobsterTwo-Bold", size: 22))
                            .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                            .padding(.all,10)
                            .frame(alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50,alignment: .leading)
                    .padding(.leading,30)
                    
                    Divider()
                        .frame(height: 1)
                        .padding(.horizontal, 30)
                        .background(Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.7))
                    
                    Button(action: {}){
                        Image("logout")
                            .resizable()
                            .frame(width: 25, height: 25,alignment: .leading)
                        Text("Logout")        .font(.custom("LobsterTwo-Bold", size: 22))
                            .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                            .padding(.all,10)
                            .frame(alignment: .leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 50,alignment: .leading)
                    .padding(.leading,30)
                    
                    Divider()
                        .frame(height: 1)
                        .padding(.horizontal, 30)
                        .background(Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.7))
                    
                }
                .padding(.top,60)
                .frame(width: UIScreen.main.bounds.width - 50)
            }
        }.background(Color.white)
//            .background(Color(red: 0.053, green: 0.027, blue: 0.185,opacity: 0.05))
    }
}
