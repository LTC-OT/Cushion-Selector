//
//  TerminologyButton.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-01-29.
//

import SwiftUI

struct TerminologyButton: View {
    
    
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
                            Image("Terminology")
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
                                Text("Cushion Terminology")
                                    .font(.title)
                                    .font(.system(.title, design: .serif))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding(.horizontal, 35)
                                
                            }
                            // HEADLINE
                            Text("Terminology used to describe cushion types, classification by user needs, by function, by constructional materials, dedicated terms, cushion management, information about types of covers and maintenance recommendations.")
                                .multilineTextAlignment(.leading)
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
                        TerminologyView()
                    }
                }
            
            .padding(.vertical, 100)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
        TerminologyButton()

    }

