//
//  TerminologyDetailView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-17.
//

import SwiftUI

struct TerminologyDetailView: View {
    
    @State  var isAnimatingImage: Bool = false
    @State var pulsateAnimation: Bool = false
    @State  var numberOfShakes: CGFloat = 0
    
    var terminology : Terminology
    
    var body: some View {
        NavigationStack {
            
         ScrollView{
             Section {
                  ImagenDetail(terminology: terminology)
              }
             
            Section {
            Text(terminology.definition)
                .multilineTextAlignment(.leading)
                .padding()
                 
        }

                
            }
            .navigationBarTitle(terminology.title, displayMode: .inline)
        }
    }
}


#Preview {
        TerminologyDetailView(terminology: terminologyData[0])

    }

