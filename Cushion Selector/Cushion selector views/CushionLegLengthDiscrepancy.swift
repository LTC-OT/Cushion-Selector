//
//  CushionLegLengthDiscrepancy.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionLegLengthDiscrepancy: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (legLength())
                 
               
               if client.legLengthDiscrepancy == true {
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
    func legLength() -> String {
        var ll = ""
        if client.legLengthDiscrepancy == true {
            ll = """
Leg Length Discrepancy

Leg discrepancy cut-out in cushion

Product: Spex High Contour Cushion, Jay Union, Ki Mobility Axiom SP Fluid

"""
        }
        //        else { ll = ""}
        return (ll)
    }
}

#Preview {
        CushionLegLengthDiscrepancy()
    }

