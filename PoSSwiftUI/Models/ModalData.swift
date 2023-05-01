//
//  ModalData.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 01/05/23.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var ShoppingCart: [CartItem] = []
}
