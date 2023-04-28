//
//  CartItem.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import Foundation

class CartItem: MenuItem {
    
    var quantity = 0
    var storeName = ""
    
    init(menuItem: MenuItem, quantity: Int, storeName: String){
        super.init(id: menuItem.id, name: menuItem.name, price: menuItem.price)
        self.quantity = quantity
        self.storeName = storeName
    }
    
    init(id:Int, name:String, price: Int, quantity: Int, storeName: String){
        super.init(id: id, name: name, price: price)
        self.quantity = quantity
        self.storeName = storeName
    }
    
    func IncrementQuantity(amount:Int){
        self.quantity += amount
    }
    
    func DecrementQuantity(amount:Int){
        
        if(self.quantity - amount < 0){
            self.quantity = 0
        } else {
            self.quantity -= amount
        }
        
    }
}

