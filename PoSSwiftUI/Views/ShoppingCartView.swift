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
        
        if(theModelData.theShoppingCart.contents.isEmpty) {
            Text("Your shopping cart is empty")
        } else {
            VStack {
                List {
                    
                    ForEach(theModelData.theShoppingCart.contents){ cartItem in
                        VStack(alignment: .leading) {
                            Text(cartItem.name)
                                .fontWeight(.medium)
                            Text("\(cartItem.price) x \(cartItem.quantity) = \(cartItem.price*cartItem.quantity)")
                                .fontWeight(.light)
                        }
                        
                    }
                    
                    // Print total here
                    
                    
                    // Option to break
                    Section(header: Text("")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    ){
                        HStack{
                            Spacer()
//                            NavigationLink {
//
//                            } label: {
//                                Text("Checkout?")
//                            }
//                            Button("Checkout?", action:{})
                            Spacer()
                        }
                    }
                    
                }
                            
            }
            .navigationTitle("🛒 Shopping Cart")
        }
        
    }
    
    // This is a little bit incorrect as the logic should be stored elsewhere
    
    
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
