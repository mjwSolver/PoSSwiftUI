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
        Text(theCafeteria.name)
    }
}

struct CafeteriaView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaView(theCafeteria: AllCafeteriaMenu().THE_CAFETERIAS[0])
    }
}
