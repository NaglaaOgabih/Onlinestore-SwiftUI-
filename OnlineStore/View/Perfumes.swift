//
//  Perfumes.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 24/12/2021.
//

import SwiftUI

struct Perfumes: View {
    var item : Item
    var animation : Namespace.ID
    var body: some View {
        VStack{
            HStack{
                Button(action: {}){
                    Image("heart")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Spacer(minLength: 0)
                Text(item.price)
                    .font(.custom("LobsterTwo-Bold", size: 16))
                    .foregroundColor(Color(red: 0.207, green: 0.041, blue: 0.253))
                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            } .padding(.top, 15)
            .padding(.horizontal)
            Image(item.Img)
                .resizable()
                .frame(width: 120, height: 160)
            Text(item.title)
                .font(.custom("LobsterTwo-Bold", size: 20))
                .foregroundColor(Color(red: 0.207, green: 0.041, blue: 0.253))
            Text(item.subTitle)
                .font(.custom("LobsterTwo-Bold", size: 11))
                .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.5))
        }.padding(.bottom, 15)
            .background(item.backgroundColor)
            .cornerRadius(15)
    }
}
