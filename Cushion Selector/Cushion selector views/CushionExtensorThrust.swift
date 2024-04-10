//
//  CushionExtensorThrust.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionExtensorThrust: View {
    
    @State   var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (extensorThr())
                   
               
               if client.extensorThrust == true {
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
    func extensorThr() -> String {
        var et = ""
        if client.extensorThrust == true {
            et = """
Extensor thrusts are a symptom of muscle control problems. The condition causes the major muscles in the body to contract simultaneously. As the extensor muscles are generally stronger than the flexor muscles

Extensor thrust wedges also exist with the specific aim to decrease the seat-to-back angle, which often reduces the frequency of extensor thrusts
Increase hip and knee flexion

Other options is a dynamic seat moves with respect to the wheelchair frame and contains both resistive and dissipative elements to absorb the energy during an extensor thrust

Product: Vicair Academy Adjuster Cushion, JAY® Union™ Cushion, ROHO dual compartment, Matrx Vi Invacare, Geo-Matrx Hybrid- Deep
"""
        }
        //        else { et = ""}
        return (et)
    }
}

#Preview {
        CushionExtensorThrust()
    }

