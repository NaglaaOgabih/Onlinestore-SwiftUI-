//
//  Home.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 23/12/2021.
//

import SwiftUI
struct Home: View {
    @State var selected = tabs[0]
    @Namespace var animation
    @State var show = false
    @State var showProfile = false
    @State var selectedItem : Item = watchItems[0]
    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                ZStack{
                    VStack{
                        HStack(spacing: geometry.size.width - 140 ){
                            Button(action: {}){
                                Image("menu-1")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            }
                            Button(action: { withAnimation(.spring()){
                                showProfile.toggle()
                            }}){
                                Image("ProfileImg")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }.cornerRadius(20)
                        }.frame(maxWidth: .infinity)
                        
                        VStack(alignment: .leading, spacing: 2.0){
                            Text("Let's")
                                .font(.custom("LobsterTwo-Bold", size: 25))
                                .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                            Text("Get Started")
                                .font(.custom("LobsterTwo-Bold", size: 35))
                                .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                        }.padding([.top, .leading], 25.0).frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(spacing :0){
                            ForEach(tabs, id: \.self){ tab in
                                TabButton(title: tab, selected: $selected, animation: animation)
                                if tabs.last != tab{Spacer(minLength: 0)}
                            }
                        }
                        .padding()
                        if selected == tabs[0]{
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 10), count: 2),spacing: 10){
                                ForEach(watchItems){ item in
                                    WatchesCardView(item: item, animation: animation)
                                        .onTapGesture {
                                            withAnimation(.spring()){
                                                selectedItem = item
                                                show.toggle()
                                            }
                                        }
                                }
                            }
                            .padding()
                        }else if selected == tabs[1]{
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 10), count: 2),spacing: 10){
                                ForEach(perfumeItems){ item in
                                    Perfumes(item: item, animation: animation)
                                }
                            }
                            .padding()
                        }
                        
                    }
                    .padding(.top, 15.0)
                    .opacity(show ? 0 : 1)
                    .opacity(showProfile ? 0 : 1)
                    
                    if show{
                        Detail(selectedItem: $selectedItem, show: $show, animation: animation)
                    }
                    if showProfile{
                        Profile(showProfile: $showProfile, animation: animation)
                    }
                }
            }
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
var tabs = ["Watches","Perfumes","Glasses","Shoes"]
