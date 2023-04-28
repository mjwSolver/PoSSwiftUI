//
//  CafeteriaMenu.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import Foundation

class Cafeteria {
    let name: String;
    let menuList: [MenuItem]
    
    init(name:String, menuList:[MenuItem]) {
        self.name = name
        self.menuList = menuList
    }
    
    func printMenuList() {
        for (index, menuItem) in self.menuList.enumerated() {
            print("[\(index + 1)] \(menuItem.name)")
        }
    }
    
}
