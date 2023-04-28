//
//  CafeteriaView.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import SwiftUI

struct CafeteriaView: View {
    
    var theCafeteria: Cafeteria
    
    var body: some View {
        NavigationStack{
//            Text("Menu Selection")
            List{
//                Text("Select a Menu")
//                    .font(.headline)
                ForEach(theCafeteria.menuList){ menuItem in
                    
                    HStack{
                        
                        NavigationLink {
                            
                        } label: {
                            HStack {
                                Text(menuItem.name)
                                    .padding(.horizontal)
                                Spacer()
                                Text("Rp.\(menuItem.price)")
                            }
                        }
                        

                    }
                    
                }
                
            }
            .navigationTitle("Select a Menu")
        }
        
    }
}

struct CafeteriaView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaView(theCafeteria: AllCafeteriaMenu().THE_CAFETERIAS[0])
    }
}
