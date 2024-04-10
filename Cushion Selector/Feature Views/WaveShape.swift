//
//  WaveShape.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2023-05-06.
//

import SwiftUI

struct WaveShape: Shape {
    
        func path(in rect: CGRect) -> Path {
            var path = Path()
            
            
            path.move(to: CGPoint.zero)
            path.addLine(to: CGPoint (x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint (x: rect.maxX, y: rect.maxY))
            
            path.addCurve (to: CGPoint (x: rect.minX, y: rect.maxY),
                           control1: CGPoint (x: rect.midX * 0.75, y: rect.midY),
                           control2: CGPoint (x: rect.maxX * 0.75, y: rect.maxY * 0.75))
            path.closeSubpath()
            
            
            return path
        
    }
}

struct WaveShapeView : View {
    var body: some View {
        VStack(spacing: 40.0) {
            WaveShape()
                .fill(Color.teal).opacity(0.3)
            
        }
    }
}

struct WaveShapeView_Previews: PreviewProvider {
    static var previews: some View {
        WaveShapeView()
        
        
        
    }
}
