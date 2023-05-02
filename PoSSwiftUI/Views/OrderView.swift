//
//  OrderView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import SwiftUI
import Combine

//struct SaveDetails: Identifiable {
//    let name: String
//    let error: String
//    let id = UUID()
//}

struct OrderView: View {
    @EnvironmentObject var theModelData: ModelData
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var theMenuItem: MenuItem
    var theStoreName: String
    
    @State private var numberOfOrders = ""
    @State private var orders = -1
    @State private var showInvalidInputError = false
    
    @State private var showingPopup = false
    
    var body: some View {
        
        NavigationView {
            
//            ZStack {
                VStack(alignment: .leading) {
                    Text(theMenuItem.name)
                        .font(.title)
                    
                    Text("Rp. \(theMenuItem.price).00")
                        .padding(.bottom)
                        
                    HStack {
                        TextField("Number of Orders?", text: $numberOfOrders)
                            .keyboardType(.numberPad)
                        
                        Button("Confirm Order", action: {
                            
                            guard let ordersAsInt = Int($numberOfOrders.wrappedValue) else {
                                // set to false and trigger it
                                showInvalidInputError = true
                                return
                            }
                            
                            orders = ordersAsInt
                            showingPopup = true
//                            self.presentationMode.wrappedValue.dismiss()
                            
                        })
                        .buttonStyle(.bordered)
//                        This isn't deprecated but its more work than I know why
//                        .alert(
//                            "Invalid Input Alert",
//                            isPresented: $showInvalidInputError,
//                            presenting:...
//                        )
//                        .alert
                        // Warning: this is deprecated
                        .alert(isPresented: $showInvalidInputError,
                               content: {
                            // to pop up here and indicate an error
                            Alert(
                                title: Text("Invalid Input"),
                                message: Text("Invalid Input"),
                                dismissButton: .default(Text("OK"))
                            )
                        })
                        .alert(
                            "Confirm the Order",
                            isPresented: $showingPopup,
                            actions: {
//                                let theMessage =
//                                "\(theMenuItem.name) \n \(theMenuItem.price) x \(ordersAsInt) = $Rp. \(theMenuItem.price * ordersAsInt).00-"
                                
                                // well that was useless...
                                
//                                Alert(
//                                    title: Text("Order confirmation"),
//                                    message: Text(theMessage),
//                                    dismissButton: .default(Text("Confirm Order"))
//                                )
                                Button("Back", role: .cancel, action: {})
                                Button("Confirm", action: {
                                    
                                    processTheOrder(is: orders)
                                    self.presentationMode.wrappedValue.dismiss()
                                    
                                })
                            }, message: {
                                let theMessage =
                                "\(theMenuItem.name) \n \(theMenuItem.price) x \(orders) = $Rp. \(theMenuItem.price * orders).00-"
                                
                                Text(theMessage)
                            })
                        
                    }
               
                }
                
//            }
            
        }
        .padding(20)
    
    }
        
    func processTheOrder(is theAmount:Int){
        // Take the amount and the name
        // create a CartItem
        // combine with previous order if available
        // Add the order to the ShoppingCart
        
        let theCart = theModelData.theShoppingCart
        let previousItemExist = theCart.isSimilarItemInCartOf(id: theMenuItem.id)
        
        if previousItemExist {
            
            let theIndex = theCart.retrieveItemInCart(id: theMenuItem.id)
            theCart.contents[theIndex].quantity += theAmount
            
            return
        }
        
        let theItem = CartItem(menuItem: theMenuItem, quantity: theAmount, storeName: theStoreName )
        theModelData.theShoppingCart.contents.append(theItem)
        
    }
    
}

// Display the information from the preview screen
// Confirm the number of orders & final expenses with a pop-up
// Cancel then return to change in put, OK to return to the cafeteria

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(
            theMenuItem: AllCafeteriaMenu()
            .THE_CAFETERIAS[0]
            .menuList[0],
            theStoreName: "Tuku-Tuku"
        )
        .environmentObject(ModelData())
    }
}
