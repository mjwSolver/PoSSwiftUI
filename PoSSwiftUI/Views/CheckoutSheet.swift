//
//  CheckoutSheet.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 03/05/23.
//

import Foundation
import SwiftUI

struct CheckoutSheet: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}


