//
//  ShoppingCartView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 01/05/23.
//

import SwiftUI


struct ShoppingCartView: View {
    @EnvironmentObject var theModelData: ModelData
    @State private var isSuccesfulCheckout = false
    
    var body: some View {
        
        if(theModelData.ShoppingCart.isEmpty) {
            Text("Your shopping cart is empty")
        } else {
            VStack {
                List {
                    
                    ForEach(theModelData.ShoppingCart){ cartItem in
                        VStack(alignment: .leading) {
                            Text(cartItem.name)
                                .fontWeight(.medium)
                            Text("\(cartItem.price) x \(cartItem.quantity) = \(cartItem.price*cartItem.quantity)")
                                .fontWeight(.light)
                        }
                        
                    }
                    
                    Section(header: Text("")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    ){
                        Button("Checkout?", action:{})
                    }
                    
                }
                            
            }
            .navigationTitle("🛒 Shopping Cart")
        }
        
    }
}

// Adding the logic to group the purchases together
// Adding the logic to print out each section
// Adding the logic to calculate the final bill
// Pop up to take in input
// Confirm or cancel
// Confirm should double back to cafeteria and empty the shopping cart

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
            .environmentObject(ModelData())
    }
}
