//
//  ContentView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-11.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State private var isSheetPresented = false
    
    var body: some View {
        NavigationStack {
            HomeViewScreen()
                .preferredColorScheme(isDarkMode ? .dark : .light)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isSheetPresented = true}
                        ) {
                            Image(systemName: "gear")
                        }
                    }
                }
                .sheet(isPresented: $isSheetPresented) {
                    Settings()
                    
                }
        }
        
    }
}

#Preview {
    ContentView()
    
}

