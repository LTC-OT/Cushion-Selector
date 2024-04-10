//
//  TerminologyRowView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-17.
//

import SwiftUI

struct TerminologyRowView: View {
    var terminology : Terminology
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            HStack {
                Image(systemName: "text.book.closed")
                
                Text(terminology.title)
                    .font(.subheadline)
                 
            }.padding()
        }
    }
}

#Preview {
        TerminologyRowView(terminology: terminologyData[0])
            .previewLayout(.sizeThatFits)
         
    }

