//
//  TabButton.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 23/12/2021.
//

import SwiftUI

struct TabButton: View {
    var title: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring()){selected = title}
        }){
            Text(title)
                .font(.custom("LobsterTwo-Bold", size: 15))
                .foregroundColor(selected == title ? .white : Color(red: 0.047, green: 0.011, blue: 0.177))
                .padding(.vertical, 10)
                .padding(.horizontal, selected == title ? 20 : 0)
                .background(
                    ZStack{
                        if selected == title{
                            Color(red: 0.047, green: 0.011, blue: 0.177)
                            .clipShape(Capsule())
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                )
        }
    }
}
