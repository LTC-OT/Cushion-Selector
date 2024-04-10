//
//  QuizButton.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-01-29.
//

import SwiftUI

struct QuizButton: View {

    
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
                            Image("Quiz")
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
                                Text("Cushion Quiz")
                                    .font(.title)
                                    .font(.system(.title, design: .serif))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding(.horizontal, 35)
                                
                            }
                            // HEADLINE
                            Text("Test your knowledge of variety of cushion's topics, answer a multiple choice test, find out how much you  have learned using this application, try several times to get the best score, a good opportunity to integrate knowledge ")
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
                        QuizView()
                    }
                }
            
            .padding(.vertical, 100)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    QuizButton()
    
}

