//
//  CushionWoundC1.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionWoundC1: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false

    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (woundC1())
                
               
               if  client.woundStage == 2 {
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
    
    func woundC1() -> String {
        var wc1 = ""
        if client.posturaldeficits == false &&   client.woundStage == 2 {
            wc1 = """
Pressure ulcer on coccyx area , wound stage III or IV, should be managed with a specialty cushion such as:

Air dry flotation category cushions to to provide agressive inmersion , body weight re-distribution  in order to facilitate healing process

Product: Vicair Academy Adjustr, ROHO Quadtro,

"""
        } else if client.posturaldeficits == true &&   client.woundStage == 2 { wc1 = """
Pressure ulcer on coccyx area , wound stage III or IV and postural deficits, should be managed with a specialty cushion such as:

If client presents with skin integrity issues as well as postural issues you should be looking cushion  can promote healing process as well as postural deficts

Air dry flotation or compartment designs category cushions with sifnificant inmersion, body weight re-distribution, adjustable surfaces to compensate and manage postural deficts, these features are highly recommended for severe cases

Poduct: ROHO® Nexus SPIRIT® Cushion, Vicair Academy Adjustr, ROHO Quadtro,
"""
        }
        //        else {wc1 = ""}
        return (wc1)
    }
}

#Preview {
        CushionWoundC1()
    }

