//
//  CushionCatalogButton.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-01-29.
//

import SwiftUI

struct CushionCatalogButton: View {
   
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
                            Image("Catalog")
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
                                Text("Cushion Catalog")
                                    .font(.title)
                                    .font(.system(.title, design: .serif))
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding(.horizontal, 35)
                                
                            }
                            // HEADLINE
                            Text("Cushion Catalog of different brands and models, describing features, specs information, when is recommended to be used and average price of the item, and offers a internet link to the manufacturing companies")
                            
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
//                        CatalogView()
                        ModelCushions()
                    }
                }
            
            .padding(.vertical, 100)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
        CushionCatalogButton()

    }

