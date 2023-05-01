//
//  AllCafeteriaView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import SwiftUI

struct AllCafeteriaView: View {
    
    private var theCafeterias = AllCafeteriaMenu().THE_CAFETERIAS
    
    var body: some View {
        NavigationStack {
            List {
                Text("Select a Cafeteria")
                    .font(.headline)
                ForEach(theCafeterias){ cafeteria in
                    
                    NavigationLink{
                        CafeteriaView(theCafeteria: cafeteria)
                    } label: {
                        Text(cafeteria.name)
                    }
                    
                }
                
                Section(header: Text("Your Shopping Cart")
                    .foregroundColor(.black)
                    .fontWeight(.medium)
                ) {
                    NavigationLink{
                        ShoppingCartView()
                    } label: {
                        Text("🛒 View My Shopping Cart")
                    }
                }
                
            } // End of the List
            .navigationTitle("UC PoS")

        } // End of the NavigationStack
    }
}

struct AllCafeteriaView_Previews: PreviewProvider {
    static var previews: some View {
        AllCafeteriaView()
            .environmentObject(ModelData())
    }
}
