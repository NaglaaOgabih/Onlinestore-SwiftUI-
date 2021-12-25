//
//  Detail.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 24/12/2021.
//

import SwiftUI

struct Detail: View {
    @Binding var selectedItem : Item
    @Binding var show : Bool
    var animation: Namespace.ID
    @State var loadContent = false
    
    var body: some View {
        ScrollView{
            VStack{
                HStack(spacing: 25){
                    Button(action: {
                        withAnimation(.spring()){show.toggle()}
                        
                    }){
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.053, green: 0.023, blue: 0.181)/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    Button(action: {}){
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.053, green: 0.023, blue: 0.181)/*@END_MENU_TOKEN@*/)
                    }
                    Button(action: {}){
                        Image(systemName: "bag")
                            .font(.title)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.053, green: 0.023, blue: 0.181)/*@END_MENU_TOKEN@*/)
                    }
                    
                }
                .padding()
                
                VStack{
                Image(selectedItem.Img)
                    .resizable()
                    .frame(width: 130, height: 170)
                    .matchedGeometryEffect(id: "image\(selectedItem.id)", in: animation)
                    Text(selectedItem.title)
                    .font(.custom("LobsterTwo-Bold", size: 22))
                    .foregroundColor(Color(red: 0.053, green: 0.023, blue: 0.181))
                    
                    Text(selectedItem.subTitle)
                    .font(.custom("LobsterTwo-Bold", size: 16))
                    .foregroundColor(Color(red: 0.053, green: 0.023, blue: 0.181,opacity: 0.5))
                    .padding(.top, 1)
                    
                    HStack{
                        Button(action: {}){
                            Text(selectedItem.price)
                                .font(.custom("LobsterTwo-Bold", size: 22))
                                .foregroundColor(Color(red: 0.047, green: 0.011, blue: 0.177))
                                .matchedGeometryEffect(id: "price\(selectedItem.id)", in: animation)
                                .padding(.horizontal,15)
                                .background(Color.white.opacity(0.5))
                                .cornerRadius(10)
                                Spacer()
                        
                            Image("heart")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .matchedGeometryEffect(id: "heart\(selectedItem.id)", in: animation)
                        }
                    }
                    .padding()
                }
                Spacer()
                
            }
            .background(selectedItem.backgroundColor)
            .cornerRadius(15)
            .padding(.all)
            VStack{
                VStack(alignment: .leading, spacing: 10){
                Text("Exclusive Offer")
                    .font(.custom("LobsterTwo-Bold", size: 16))
                    .foregroundColor(Color(red: 0.053, green: 0.023, blue: 0.181))
                Text("Frame + Lens For 35$(it's 50% off)")
                        .font(.custom("LobsterTwo-Bold", size: 16))
                        .foregroundColor(Color(red: 0.053, green: 0.023, blue: 0.181))
            }
            .frame(width: UIScreen.main.bounds.width - 60, alignment: .leading)
            .padding()
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.982, green: 0.928, blue: 0.916)/*@END_MENU_TOKEN@*/)
            .cornerRadius(15)
                Spacer()
                Button(action: {}){
                    Text("Try Product In 3D")
                        .font(.custom("LobsterTwo-Bold", size: 20))
                        .foregroundColor(Color(red: 0.053, green: 0.023, blue: 0.181))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(red: 0.053, green: 0.023, blue: 0.181),lineWidth: 1)
                        )
                }
                .padding(.top,55)
                Button(action: {}){
                    Text("Add To Cart")
                        .font(.custom("LobsterTwo-Bold", size: 20))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 100)
                        .background(Color(red: 0.053, green: 0.023, blue: 0.181))
                        .cornerRadius(15)
                }
                .padding(.vertical)
                
            }
            .frame(height: loadContent ? nil : 0)
            .opacity(loadContent ? 1 : 0)
            
            Spacer(minLength: 0)
        }
        .onAppear{
            withAnimation(Animation.spring().delay(0.45)){
                loadContent.toggle()
            }
        }
    }
}
