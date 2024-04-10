//
//  SelectorButton.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-01-29.
//

import SwiftUI

struct SelectorButton: View {
    
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State var showSheet: Bool = false
    @State private var isAnimated: Bool = false
    
    var body: some View {
        
        ZStack {
            TrapeziumShapeView()
            BackgroundPanel()
            
            VStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    // CARD IMAGE
                    VStack {
                        Image("Selector")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(isAnimated ? 1.0 : 0.9)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .padding(.top, 30)
                    
                    // TITLE
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Therapeutic Cushions")
                            .font(.headline)
                            .font(.system(.body, design: .serif))
                            .foregroundColor(.white)
                            .padding(.horizontal, 35)
                        
                        // HEADLINE
                        HStack {
                            Text("Cushion Selector")
                                .font(.title)
                                .font(.system(.title, design: .serif))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.horizontal, 35)
                            
                        }
                        // HEADLINE
                        Text("Provide an Algorithm  to determine the most appropriate therapeutic surface  to manage client's deficits and needs, giving few options to try, based on client's data in regard of postural, safety, comfort  and skin integrity issues")
                        
                            .foregroundColor(.white)
                            .font(.caption2)
                            .padding(.horizontal, 40)
                        
                    }
                    .padding(.top, 10)
                    
                }
                
                
                .onAppear{
                    withAnimation(Animation.linear(duration: 2.0).repeatCount(4)){
                        isAnimated.toggle()       }
                }
                
                .onTapGesture {
                    self.hapticImpact.impactOccurred()
                    self.showSheet = true
                }
                .sheet(isPresented: self.$showSheet) {
                    ClientProfile()
                }
            }
            
            .padding(.vertical, 100)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    SelectorButton()
    
}

