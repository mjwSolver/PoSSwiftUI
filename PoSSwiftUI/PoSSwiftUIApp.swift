//
//  PoSSwiftUIApp.swift
//  PoSSwiftUI
//
//  Created by MacBook Pro on 28/04/23.
//

import SwiftUI

@main
struct PoSSwiftUIApp: App {
    @StateObject private var modeldata = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modeldata)
        }
    }
}
