//
//  BackgroundPanel.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2024-03-04.
//

import SwiftUI

struct BackgroundPanel: View {
    var body: some View {
        ZStack{
            
        }
        .frame(width: 350, height: 600, alignment: .center)
        .background(Color.accentColor.gradient)
        .opacity(0.4)
        .cornerRadius(30)
        .shadow(radius: 8, x: 3, y: 3)
    }
}

#Preview {
    BackgroundPanel()
}
