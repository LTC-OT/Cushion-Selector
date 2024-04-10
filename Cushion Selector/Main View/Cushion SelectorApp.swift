//
//  CushionsApp.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-11.
//

import SwiftUI

@main
struct Cushion_SelectorApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()
                    
            }
            
        }
    }
}
