//
//  ShoppingCartView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 01/05/23.
//

import SwiftUI

struct ShoppingCartView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var theModelData: ModelData
    @State private var showCheckOut = false
    @State private var paymentSucceeded = false
        
    var body: some View {
        
        let theCart = theModelData.theShoppingCart
        
        if(theCart.contents.isEmpty) {
            Text("Your shopping cart is empty")
        } else {
            
            let storesVisited = theCart.extraAllStoreNames()
            
            VStack {
                List {
                    
                    ForEach(storesVisited) { storeVisit in
                        Section(header:Text(storeVisit.myName)){
                            
                            let selectedItems = theCart.contents.filter {
                                $0.storeName == storeVisit.myName }
                            
                            ForEach(selectedItems) { cartItem in
                                
                                VStack(alignment: .leading) {
                                    Text(cartItem.name)
                                        .fontWeight(.medium)
                                    Text("\(cartItem.price) x \(cartItem.quantity) = \(cartItem.price*cartItem.quantity)")
                                        .fontWeight(.light)
                                }
                                
                            }
                            
//                            Text("SubTotal: Rp. \(subTotal)")
                            
                        }
                    }
                    
                    // Print total here
                    Section(header: Text("YOUR TOTAL PURCHASE")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    ){
                        let finalBill = theCart.calculateTotalBill()
                        Text("Rp. \(finalBill).00-")
                    }
                    
                    // Option to break
                    Section(header: Text("")
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    ){
                        HStack{
                            Spacer()
                            Button("Checkout?", action:{
                                showCheckOut.toggle()
                            })
                            .sheet(
                                isPresented: $showCheckOut,
                                onDismiss: {
                                    if paymentSucceeded {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                }) {
                                    CheckoutSheet(paymentSucceeded: $paymentSucceeded)
                                
//                                if ($paymentSucceeded.wrappedValue) {
//                                   self.presentationMode.wrappedValue.dismiss()
//                                }
                                
                            }
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
