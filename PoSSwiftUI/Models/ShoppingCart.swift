//
//  ShoppingCart.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 02/05/23.
//

import Foundation

class ShoppingCart {
    
    init() {}
    
    var contents: [CartItem] = []
    
    func isSimilarItemInCartOf(id: Int) -> Bool{
        
        for theItems in contents {
            if theItems.id == id {
                return true
            } else { continue }
        }
        
        return false;
        
    }
    
    func retrieveItemInCart(id: Int) -> Int {
        
        if !isSimilarItemInCartOf(id: id) {
//            return CartItem(id: -1, name: "Blank", price: 0, quantity: 0)
            return -1
        }
        
        for (theIndex, theItems) in contents.enumerated() {
            if theItems.id == id {
                return theIndex
            } else { continue }
        }
            
//        return CartItem(id: -1, name: "Duplicate ID", price: 0, quantity: 0)
        return -1
        
    }
    
    func extractAllStoreNames() -> [String] {
        
        var AllTheStores: [String] = []
        
        for theItems in contents {
      
            if !AllTheStores.contains( theItems.storeName ) {
                AllTheStores.append( theItems.storeName )
            }
            
        }
        
        return AllTheStores
    }
    
}

