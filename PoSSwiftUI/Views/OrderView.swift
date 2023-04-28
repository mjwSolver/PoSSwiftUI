//
//  OrderView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import SwiftUI
import Combine

struct OrderView: View {
    
    var theMenuItem: MenuItem
    @State private var numberOfOrders = ""
    
    var body: some View {
        
        NavigationView {
            
//            HStack {
            VStack(alignment: .leading) {
                Text(theMenuItem.name)
                    .font(.title)
                
                Text("Rp. \(theMenuItem.price)")
                    .padding(.bottom)
                    
                HStack {
                    TextField("Number of Orders?", text: $numberOfOrders)
                        .keyboardType(.numberPad)
                    
                    Button("Confirm Order", action: acceptTheInput)
                        .buttonStyle(.bordered)
                }
           
                }
                
//            }
            
        }
        .padding(20)

    }
    
    
    func acceptTheInput(){
//        let orders: Int? = Int(numberOfOrders)
        
//        guard let ordersAsInt = Int(numberOfOrders) {
////            something?
//        }
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(theMenuItem: AllCafeteriaMenu()
            .THE_CAFETERIAS[0]
            .menuList[0])
    }
}
