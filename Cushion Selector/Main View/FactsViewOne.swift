//
//  FactsViewOne.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2023-05-13.
//

import SwiftUI

struct FactsViewOne: View {
 
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 60)
                .foregroundColor(.accentColor)
                .opacity(0.3)
  
           VStack{
                
                FactsView()
                   .presentationDetents([.fraction(0.35)])
                   .presentationDragIndicator(.visible)
                   .padding()

          }
       }
       .frame(width: 350, height: 250)
      
       .padding()
    }
}

#Preview {
        FactsViewOne()
          .previewLayout(.sizeThatFits)
    }

