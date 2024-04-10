//
//  TrapeziumShapeView.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2023-05-06.
//

import SwiftUI


struct TrapeziumShape: Shape {

    func path (
        in rect: CGRect) -> Path {
            var path = Path()
            path.addEllipse(in: rect)
 
            return path
        }
}

struct TrapeziumShapeView: View {
    var body: some View {
        
        ZStack {
            ZStack {
                Circle()
                
                    .foregroundColor(.accentColor)
                    .opacity(0.3)
                    .offset(x: -200, y: -100)
                
                Circle()
                
                    .foregroundColor(.accentColor)
                    .opacity(0.3)
                    .offset(x: 0, y: 460)
                Circle()
                
                    .foregroundColor(.accentColor)
                    .opacity(0.3)
                    .offset(x: 300, y: -450)
                
            }
        }
    }
}

#Preview {
    TrapeziumShapeView()
}

