//
//  ModalData.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 01/05/23.
//

import Foundation

final class ModelData: ObservableObject {
    var theShoppingCart:ShoppingCart = ShoppingCart()
    
//    @Published var ShoppingCart: [CartItem] = [
//        CartItem(
//            menuItem: MenuItem(id: 4, name: "Air mineral", price: 2000),
//            quantity: 3,
//            storeName: "🔺 Tuku-Tuku"
//        ),
//        CartItem(
//            menuItem: MenuItem(id: 1, name: "Tahu isi", price: 10000),
//            quantity: 2,
//            storeName: "🔺 Tuku-Tuku"
//        ),
//        CartItem(
//            menuItem: MenuItem(id: 4, name: "Air mineral", price: 2000),
//            quantity: 2,
//            storeName: "🔺 Tuku-Tuku"
//        ),
//    ]
    
    var dummyCart = [
        CartItem(
            menuItem: MenuItem(id: 4, name: "Air mineral", price: 2000),
            quantity: 3,
            storeName: "🔺 Tuku-Tuku"
        ),
        CartItem(
            menuItem: MenuItem(id: 1, name: "Tahu isi", price: 10000),
            quantity: 2,
            storeName: "🔺 Tuku-Tuku"
        ),
        CartItem(
            menuItem: MenuItem(id: 9, name: "Normal Coffee", price: 12000),
            quantity: 3,
            storeName: "㐯 Xiang Jia"
        ),
        CartItem(
            menuItem: MenuItem(id: 4, name: "Air mineral", price: 2000),
            quantity: 2,
            storeName: "🔺 Tuku-Tuku"
        ),
    ]
    
    init(){
        // Turn this off after diagnosing
//        self.theShoppingCart.contents.append(contentsOf: dummyCart)
    }
}

//Cafeteria(name: "🔺 Tuku-Tuku", menuList: MENU_TUKUTUKU),
//Cafeteria(name: "㐯 Xiang Jia", menuList: MENU_XIANGJIA),
