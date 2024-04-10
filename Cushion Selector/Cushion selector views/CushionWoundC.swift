//
//  CushionWoundC.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionWoundC: View {
    
    @State   var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false

    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (woundC())
                 
               
               if  client.woundStage == 1   {
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
    
    func woundC() -> String {
        var wc = ""
        if  client.posturaldeficits == false &&  client.woundStage == 1 {
            wc = """
Pressure ulcer on coccyx area  , wound stage I or II , should be managed with a specialty cushion such as:

Hybrid Gel/foam or Hybrid Air dry flotation /foam category cushions  to provide moderate inmersion and body weight re-distribution in order to facilitate healing process

Product recommended: ROHO simple compartment, Nxt Bio Fit, Vicair



"""
        } else if  client.posturaldeficits == true &&  client.woundStage == 1 { wc = """
Pressure ulcer on coccyx area , wound stage I or II and postural deficits, should be managed with a specialty cushion such as:

Hybrid Gel/foam or Hybrid Air dry flotation /foam category cushions to provide moderate inmersion , body weight re-distribution and a surface can compensate and manage postural deficts

Product recommended: Vicair Academy Adjuster Cushion, ROHO Dual compartment
"""
        }
        //        else {wc = ""}
        return (wc)
    }
}

#Preview {
        CushionWoundC()
    }

