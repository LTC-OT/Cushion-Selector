//
//  CushionPainfulOrDislocation.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionPainfulOrDislocation: View {
    
    @State   var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (Paindislohip())
                 
               
               if client.painfulOrDislocatedHip == true {
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
    func Paindislohip() -> String {
        var pdh = ""
        if client.painfulOrDislocatedHip == true {
            pdh = """
Painful or Dislocated Hip

Appropriare seating system should be allowing to sit with your back straight and your feet flat on the floor. a system can prevent cross your legs.

Do not lean forward when you sit in a chair.

Syatem can assist you to keep your knees apart. A wedge between your knees when you sit or lie. Do not twist your knees. Do not lift your knees higher than your hips.

Do not sit in a low chair. Use armrests and your upper body strength to push yourself up from a sitting position.

Do not bend at the waist to pick up an object from the floor, use a tool to pick it up.

Use softer materials under and/or around hip.

Avoid lateral contact with hip

Product: Geo-Matrx Hybrid- Deep, Geo-Matrx Bronze, ROHO single compartment

"""
        }
        //        else { pdh = ""}
        return (pdh)
    }
}

#Preview {
        CushionPainfulOrDislocation()
    }

