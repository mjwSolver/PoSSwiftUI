//
//  ShoppingCartView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 01/05/23.
//

import SwiftUI

struct ShoppingCartView: View {
    @EnvironmentObject var theModelData: ModelData
    
    var body: some View {
        
        if(theModelData.ShoppingCart.isEmpty) {
            Text("Your shopping cart is empty")
        } else {
            Text("There is something here")
        }
        
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
            .environmentObject(ModelData())
    }
}
