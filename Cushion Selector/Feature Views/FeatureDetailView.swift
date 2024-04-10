//
//  FeatureDetailView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-11.
//

import SwiftUI

struct FeatureDetailView: View {
    
    var feature: Feature
    
    var body: some View {
        
       ZStack {
          Circle()
         
               .foregroundColor(.accentColor)
              .opacity(0.3)
              .offset(x: -200, y: 100)
          ScrollView {
               
               VStack(alignment: .center, spacing: 0) {
                   Spacer()
                   //IMAGE
                   Image(feature.image)
                       .resizable()
                       .scaledToFit()
                       .frame(width: 300, height: 400, alignment: .center)
                       .cornerRadius(10)
                       .background(Color.accentColor.opacity(0.1))
                       .clipShape(CurvedSidedRectangle())
                       .padding(.top, 50)
                   
                       
                   
                   Group {
                       //TITLE
                       Link (feature.model, destination: URL (string: feature.link)!)
                           .padding(.top, 10)
                           .font(.system(.largeTitle, design: .serif))
                           .fontWeight(.bold)
                           .multilineTextAlignment(.center)
                           .padding(.top, 10)
                       
                       //LINK
                       Text(feature.brand)
                           .fontWeight(.bold)
                       //PRICE
                       FeatureBuildingView(feature: feature)
                       
                       //COMPONENTS
                       Text("Features")
                       
                       VStack(alignment: .leading, spacing:5) {
                           Text (feature.components)
                               .padding()

                       }
                   }

                   .padding(.vertical, 12)
               }
          } .edgesIgnoringSafeArea(.top)
       }
    }
}

#Preview {
        FeatureDetailView(feature: featureData[0])
        
    }

