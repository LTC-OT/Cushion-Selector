//
//  FeatureCardView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-11.
//

import SwiftUI

struct FeatureCardView: View {
   // MARK: - PROPERTIES
   
   var feature: Feature
   
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
   
   
   var body: some View {
      VStack(alignment: .center, spacing: 0) {
         // CARD IMAGE
         
         VStack (alignment: .center, spacing: 0){
            Image(feature.image)
               .resizable()
               .scaledToFit()
               .frame(width: 300, height: 400, alignment: .center)
               .background(Color.accentColor.opacity(0.1))
               .cornerRadius(20)
               .shadow(color: Color.accentColor, radius: 8, x: 6, y: 5)
               .clipShape(CurvedSidedRectangle())
            .padding()
         }
         

          
          Text(feature.brand)
              .font(.title2)
             .fontWeight(.bold)
            Link (feature.model, destination: URL (string: feature.link)!)
               .font(.title3)
               .font(.system(.title, design: .serif))
               .fontWeight(.bold)
               .padding()

            
            // HEADLINE
          FeatureBuildingView(feature: feature)
          

         
      }
      .cornerRadius(10)
      .cornerRadius(12)
      
      .onTapGesture {
         self.hapticImpact.impactOccurred()
         self.showModal = true
      }
      .sheet(isPresented: self.$showModal) {
         FeatureDetailView(feature: self.feature)
      }
      
   }
}

#Preview {
      FeatureCardView(feature: featureData[0])
      
      
   }

