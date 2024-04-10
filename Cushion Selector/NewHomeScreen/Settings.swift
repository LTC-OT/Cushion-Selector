//
//  Settings.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2024-02-20.
//

import SwiftUI

struct Settings: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
   
    
    var body: some View {
        Form {
            Section("Color Scheme"){
                Toggle("Dark Mode", isOn: $isDarkMode)
                    .padding()
            }
            .navigationBarTitle("Settings")
            .preferredColorScheme(isDarkMode ? .dark : .light)
            .presentationDetents([.medium, .large, .fraction(0.8), .height(200)])
        }
    }
}

#Preview {
    Settings()
}
