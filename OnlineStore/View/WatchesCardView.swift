//
//  CardView.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 24/12/2021.
//

import SwiftUI

struct WatchesCardView: View{
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
                .matchedGeometryEffect(id: "heart\(item.id)", in: animation)

                Spacer(minLength: 0)
                   
                Text(item.price)
                    .font(.custom("LobsterTwo-Bold", size: 16))
                    .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                    .matchedGeometryEffect(id: "price\(item.id)", in: animation)

                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            } .padding(.top, 15)
            .padding(.horizontal)
                Image(item.Img)
                .resizable()
                .frame(width: 130, height: 160)
                .matchedGeometryEffect(id: "image\(item.id)", in: animation)
            Text(item.title)
                .font(.custom("LobsterTwo-Bold", size: 20))
                .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
            Text(item.subTitle)
                .font(.custom("LobsterTwo-Bold", size: 11))
                .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.5))
        }
        .padding(.bottom, 15.0)
        
            .background(item.backgroundColor)
            .cornerRadius(15)
    }
}
