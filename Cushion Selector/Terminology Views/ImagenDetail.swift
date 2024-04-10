//
//  ImagenDetail.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2022-01-02.
//

import SwiftUI

struct ImagenDetail: View {
    
    @State  var isAnimatingImage: Bool = false
    
    @State  var pulsateAnimation: Bool = false
    
    @State  var numberOfShakes: CGFloat = 0
    
    
    var terminology : Terminology
    
    var body: some View {
        
        VStack {
            Image(terminology.image)
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250, alignment: .center)
                .background()
                .cornerRadius(10)
//                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.55), radius: 12, x: 0, y: 8)
                .shadow(color: .accentColor, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
            
                .modifier(ShakeEffect(shakeNumber: numberOfShakes))
                .onAppear {
                    withAnimation(.easeIn(duration: 2.0)) {
                        numberOfShakes = 3
                    }
                }
        }
    }
}

struct ShakeEffect: AnimatableModifier {
    var shakeNumber: CGFloat = 0
    
    var animatableData: CGFloat  {
        get {
            shakeNumber
        } set {
            shakeNumber = newValue
        }
    }
    
    func body(content: Content) -> some View {
        content
            .offset(x: sin(shakeNumber * .pi * 4) * 4)
    }
    
}

#Preview {
        
        ImagenDetail(terminology: terminologyData[0])
        
            .previewLayout(.sizeThatFits)

    }

