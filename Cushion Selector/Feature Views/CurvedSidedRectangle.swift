//
//  CurvedSidedRectangle.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2023-05-04.
//

import SwiftUI

struct CurvedSidedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint (x: rect.maxX, y: 0))
       
       path.addLine(to: CGPoint (x: rect.maxX, y: 350))
       path.addQuadCurve (to: CGPoint (x: 0, y: 350), control: CGPoint (x: rect.midX, y: rect.maxY))
       
       
//        path.addLine(to: CGPoint (x: rect.maxX, y: rect.maxX))
//        path.addQuadCurve (to: CGPoint (x: 0, y: rect.maxY), control: CGPoint (x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        
        
        return path
    
   
    }
}

#Preview {
        CurvedSidedRectangle()
    }

