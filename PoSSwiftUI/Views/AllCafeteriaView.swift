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
            }
            .navigationTitle("UC PoS")
        }
    }
}

struct AllCafeteriaView_Previews: PreviewProvider {
    static var previews: some View {
        AllCafeteriaView()
            .environmentObject(ModelData())
    }
}
