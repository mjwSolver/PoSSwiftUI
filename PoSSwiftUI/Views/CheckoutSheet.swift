//
//  CheckoutSheet.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 03/05/23.
//

import Foundation
import SwiftUI

struct CheckoutSheet: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var theModelData: ModelData
    
    @Binding var paymentSucceeded: Bool
    
    var theCart:ShoppingCart {
        theModelData.theShoppingCart
    }
    
    @State private var userPayment = ""

    var body: some View {
        VStack {
            let theFinalBill = theCart.calculateTotalBill()
            Text("Total Bill")
                .font(.title)
            Text("Rp. \(theFinalBill),00-")
                .font(.subheadline)
            
            TextField("Your payment", text: $userPayment)
                .multilineTextAlignment(.center)
                .padding(.bottom)
             
            Button("Pay"){
                if processPayment(finalBill: theFinalBill) {
                    paymentSucceeded = true
                    dismiss()
//                    self.presentationMode.wrappedValue.dismiss()

                }
            }
            
            HStack{
                Text("Swipe down to cancel")
                    .padding(.top)
//                Button("Back") { dismiss() }
//                    .padding()
            }

        }
    }
    
    func processPayment(finalBill theFinalBill:Int)-> Bool {
        
        let thePayment = Int(userPayment) ?? -1
        let isValid = thePayment != -1
        
        if !isValid {
            return false
        }
                
        if thePayment <= 0 {
            return false
        }
        
        if thePayment < theFinalBill {
            return false
        }
        
        return true
    }
    
}


