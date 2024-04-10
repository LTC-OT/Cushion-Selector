//
//  CushionPelvicTilt.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionPelvicTilt: View {
    @State  var client = EnterData()
   
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false

    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (antPelvic())
                   
               if client.antPelvicTilt == true {
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
    
    func antPelvic() -> String {
        var ant = ""
        if client.antPelvicTilt == true {
            ant = """
Anterior pelvic Tilt

An anterior pelvic tilt occurs when the top of the pelvis moves forward, hyperextending the lumbar area and causing the spine to assume a more lordotic position.

Placing the pelvic positioning belt directly over the anterior superior iliac spine (ASIS) pulls the pelvis back into a neutral position

A correctable tilt can be improved by using positioning aids. An anti-thrust cushion is lower on the back half which helps tilt your pelvis backwards into a neutral position.

Utilize a cushion and back support that maximizes contact with the seat surface for optimal pelvic and spinal stability and pressure redistribution.


Product: Geo Matrx Hybrid deep, ROHO QUADTRO, ROHO Dual compartment, Vicair Adjuster O2, Vicair Academy Adjuster, Spex high Contour, Jay Fusion, Jay Union
"""
        }
        //        else { ant = ""}
        return (ant)
    }
}

#Preview {
        CushionPelvicTilt()
    }

