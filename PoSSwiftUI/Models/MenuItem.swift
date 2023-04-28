//
//  MenuItem.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import Foundation

class MenuItem: Item, Identifiable {
    
    var id = 0
    var name = ""
    var price = 0
    
    init(id:Int, name:String, price:Int){
        self.id = id
        self.name = name
        self.price = price
    }
    
}
