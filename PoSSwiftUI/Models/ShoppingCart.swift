//
//  ShoppingCart.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 02/05/23.
//

import Foundation

struct theStore: Identifiable {
    var id: Int
    var myName:String
    
    init(id ID:Int, storeNameIs storeName:String){
        self.id = ID
        self.myName = storeName
    }
}

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
    
//    func extractAllStoreNames() -> [String] {
//
//        var AllTheStores: [String] = []
//
//        for theItems in contents {
//
//            if !AllTheStores.contains( theItems.storeName ) {
//                AllTheStores.append( theItems.storeName )
//            }
//
//        }
//
//        return AllTheStores
//    }
    
    func extraAllStoreNames() -> [theStore] {
        
        var AllTheStores: [String] = []
        var StoresAsStruct: [theStore] = []
        
        for theItems in contents {
      
            if !AllTheStores.contains( theItems.storeName ) {
                AllTheStores.append( theItems.storeName )
            }
            
        }
        
        for (index, storeName) in AllTheStores.enumerated() {
            StoresAsStruct.append(theStore(id:index, storeNameIs: storeName))
        }
        
        return StoresAsStruct

    }
    
    func calculateTotalBill() -> Int {
        
        var finalBill = 0
        
        for menuItem in contents {
            finalBill += menuItem.quantity * menuItem.price
        }
        
        return finalBill
        
    }
    
}

