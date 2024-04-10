//
//  CushionLimitedHipFlexion.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionLimitedHipFlexion: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (limitHipFlex())
                   
               if client.limitedHipFlexion == true {
                  Text("Look for recommended cushions in Catalog section:")
                     .padding()
                  
                  
                  VStack {
                     Image ("Catalog")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .onTapGesture {
                           self.hapticImpact.impactOccurred()
                           self.showModal = true
                        }
                        .sheet(isPresented: self.$showModal) {
                           CatalogView()
                        }
                  }
                   
               }
          }
       }
    }
    func limitHipFlex() -> String {
        var lhf = ""
        if client.limitedHipFlexion == true {
            lhf = """

Limeted Hip Flexion

When limited hip flexion is the issue, flexing the hip pushes the pelvis into a posterior tilt. This can be solved by opening the seat-to-back angle.

Accommodate fixed limitation in hip flexion by wedging cushion sloping to the front 

Product: ROHO® Nexus SPIRIT® Cushion, Synergy Spectrum Foam Cushion

"""
        }
        //        else { lhf = ""}
        return (lhf)
    }
}

#Preview {
        CushionLimitedHipFlexion()
    }

