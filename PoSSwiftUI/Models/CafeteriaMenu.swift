//
//  CafeteriaMenu.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import Foundation

final class AllCafeteriaMenu {
        
    let MENU_TUKUTUKU = [
        MenuItem(id: 1, name: "Tahu isi", price: 10000),
        MenuItem(id: 2, name: "Nasi kuning", price: 12000),
        MenuItem(id: 3, name: "Nasi campur", price: 12000),
        MenuItem(id: 4, name: "Air mineral", price: 2000),
        MenuItem(id: 5, name: "NU Green Tea Honey", price: 5000),
        MenuItem(id: 6, name: "Nissin Cup Noodle", price: 5000),
        MenuItem(id: 7, name: "Itoe Oolong Tea", price: 7000),
        MenuItem(id: 8, name: "Donat Coklat", price: 5000),
    ]

    let MENU_XIANGJIA = [
        MenuItem(id: 9, name: "Normal Coffee", price: 12000),
        MenuItem(id: 10, name: "Kaya Toast Ori", price: 12000),
        MenuItem(id: 11, name: "Waterfall Coffee", price: 10000),
        MenuItem(id: 12, name: "Raining Coffee", price: 20000),
        MenuItem(id: 13, name: "Floating Coffee", price: 15000),
        MenuItem(id: 14, name: "Green Noodles", price: 25000),
        MenuItem(id: 15, name: "Fish Noodles", price: 25000),
        MenuItem(id: 16, name: "Nasi Telur", price: 15000),
    ]

    let MENU_RABURI = [
        MenuItem(id: 17, name: "Katsu Ramen", price: 32000),
        MenuItem(id: 18, name: "Katsu Karaage", price: 30000),
        MenuItem(id: 19, name: "Ramen Soya", price: 23000),
        MenuItem(id: 20, name: "Ramen Seaweed", price: 29000),
        MenuItem(id: 21, name: "Nasi Katsu", price: 27000),
        MenuItem(id: 22, name: "Nasi Karaage", price: 26000),
        MenuItem(id: 23, name: "Nasi Telur", price: 23000),
        MenuItem(id: 24, name: "Nasi Beef Shortplate", price: 36000),
    ]

    let MENU_GOTRI = [
        MenuItem(id: 25, name: "Nasi Goreng Pedas", price: 25000),
        MenuItem(id: 26, name: "Nasi Lauk Gila", price: 20000),
        MenuItem(id: 27, name: "Nasi Mie Instan", price: 15000),
        MenuItem(id: 28, name: "Nasi Ekonomis", price: 10000),
        MenuItem(id: 29, name: "Mie Goreng Kecap Asin", price: 22000),
        MenuItem(id: 30, name: "Mie Ayam Jamur", price: 26000),
        MenuItem(id: 31, name: "Mie Goreng Pangsit", price: 25000),
        MenuItem(id: 32, name: "Mie Special", price: 30000),
    ]

    let MENU_MADAM_LIE = [
        MenuItem(id: 33, name: "Nasi Sayur Ayam", price: 25000),
        MenuItem(id: 34, name: "Nasi Ayam Sayur", price: 20000),
        MenuItem(id: 35, name: "Nasi Ayam Goreng Pedas", price: 15000),
        MenuItem(id: 36, name: "Nasi Goreng Special", price: 10000),
        MenuItem(id: 37, name: "Nasi Goreng + Telur", price: 22000),
        MenuItem(id: 38, name: "Jus Oren", price: 26000),
        MenuItem(id: 39, name: "Jus Melon", price: 25000),
        MenuItem(id: 40, name: "Teh Manis", price: 30000)
    ]

    let MENU_EW = [
        MenuItem(id: 41, name: "American Cheese Steak", price: 32000),
        MenuItem(id: 42, name: "Singaporean John Bread", price: 35000),
        MenuItem(id: 43, name: "Roti Gak Jelas", price: 32000),
        MenuItem(id: 44, name: "Spicy Tuna Mayo", price: 35000),
        MenuItem(id: 45, name: "Spicy Thai Tom Yum Beef", price: 32000),
        MenuItem(id: 46, name: "Cubano Classic", price: 35000),
        MenuItem(id: 47, name: "German Curry Worst", price: 32000),
        MenuItem(id: 48, name: "Vietnamese Grilled Chicken", price: 35000),
    ]

    let MENU_GIJOE = [
        MenuItem(id: 49, name: "Donut Sprinkles", price: 12000),
        MenuItem(id: 50, name: "Coffee Biasa Aja", price: 10000),
        MenuItem(id: 51, name: "Americano", price: 22000),
        MenuItem(id: 52, name: "Deep Latte", price: 25000),
        MenuItem(id: 53, name: "Matcha Mix Tea", price: 19000),
        MenuItem(id: 54, name: "Puffy Cupcake", price: 14000),
        MenuItem(id: 55, name: "Coffee GI Special", price: 22000),
        MenuItem(id: 56, name: "Chocolate Donuts", price: 10000),
    ]

    let MENU_KOPTE = [
        MenuItem(id: 57, name: "Kopi Hitam", price: 8000),
        MenuItem(id: 58, name: "Kopi Hitam Manis", price: 10000),
        MenuItem(id: 59, name: "Kopi Teh Tarik", price: 13000),
        MenuItem(id: 60, name: "Kopi Tarik Cincau", price: 13000),
        MenuItem(id: 61, name: "Tarik Kopi Kopte", price: 12000),
        MenuItem(id: 62, name: "Kopi Chocolate Tarik", price: 13000),
        MenuItem(id: 63, name: "Sweet Tea", price: 10000),
        MenuItem(id: 64, name: "Teh Tawar", price: 8000),
    ]
    
    var THE_CAFETERIAS: [Cafeteria] {
        [
            Cafeteria(name: "🔺 Tuku-Tuku", menuList: MENU_TUKUTUKU),
            Cafeteria(name: "㐯 Xiang Jia", menuList: MENU_XIANGJIA),
            Cafeteria(name: "🇯🇵 Raburi", menuList: MENU_RABURI),
            Cafeteria(name: "🦚 Gotri", menuList: MENU_GOTRI),
            Cafeteria(name: "💚 Madam Lie", menuList: MENU_MADAM_LIE),
            Cafeteria(name: "🥪 E&W Sandwich", menuList: MENU_EW),
            Cafeteria(name: "☕️ GI Joe", menuList: MENU_GIJOE),
            Cafeteria(name: "☕️ Kopte", menuList: MENU_KOPTE),
        ]
    }
    
    init(){}
    
}
