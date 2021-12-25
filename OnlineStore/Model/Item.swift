//
//  Item.swift
//  OnlineStore
//
//  Created by Naglaa Ogabih on 23/12/2021.
//

import SwiftUI

struct Item : Identifiable{
    var id = UUID().uuidString
    var title : String
    var subTitle : String
    var price : String
    var Img : String
    var backgroundColor : Color
}
var watchItems = [
    Item(title: "Michael Kors", subTitle: "Pavé Two-Tone Watch", price: "613$", Img: "MK11",backgroundColor: Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.1)),
    Item(title: "Rolex", subTitle: "Day-Date 36 Watch", price: "4150$", Img: "Rolex2", backgroundColor: Color(red: 0.785, green: 0.294, blue: 0.19,opacity: 0.1)),
    Item(title: "Rolex", subTitle: "Datejust 36 Watch", price: "3460$", Img: "Rolex1", backgroundColor: Color(red: 0.785, green: 0.294, blue: 0.19,opacity: 0.1)),
    Item(title: "Michael Kors", subTitle:"Pavé Rose Gold-Tone Watch", price: "364$", Img: "MK2", backgroundColor: Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.1))

]
var perfumeItems = [
    Item(title: "Kilian Paris", subTitle: "Black Phantom", price: "366$", Img: "perfume2",backgroundColor:Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.1) ),
    Item(title: "Kilian Paris", subTitle: "Good Girl Gone Bad By Kilian", price: "298$", Img: "perfume1",backgroundColor: Color(red: 0.785, green: 0.294, blue: 0.19,opacity: 0.1) ),
    Item(title: "Louis Vuitton", subTitle: "Matiere Noire Edp Women", price: "69$", Img: "louis-vuitton1",backgroundColor:  Color(red: 0.785, green: 0.294, blue: 0.19,opacity: 0.1)),
    Item(title: "Louis Vuitton", subTitle: "Mille Feux Edp Women", price: "63$", Img: "louis-vuitton2",backgroundColor:  Color(red: 0.047, green: 0.011, blue: 0.177,opacity: 0.1) )

]
