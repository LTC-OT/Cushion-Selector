//
//  FeatureCardSheetView.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2023-05-04.
//

import SwiftUI

struct FeatureCardSheetView: View {
   

    var body: some View {
        ZStack {
            
            Circle()
                .frame(width: 300, height: 300, alignment: .trailing)
                .foregroundColor(.accentColor)
                .opacity(0.2)
                .offset(x: -200, y: 300)
            
            VStack {
              Spacer()
               VStack {
                   Text("All About Cushions")
                       .fontWeight(.bold)
                   
                   Text("Everything you wanted to know about cushions.")
                       .font(.system(size: 15, design: .serif))
                       .multilineTextAlignment(.center)
                   
               }.frame(width: 300)
                   .offset(x: 70, y: -20)
              
           }
            .edgesIgnoringSafeArea(.top)
        }
       
    }
}

#Preview {
        FeatureCardSheetView()
    }

