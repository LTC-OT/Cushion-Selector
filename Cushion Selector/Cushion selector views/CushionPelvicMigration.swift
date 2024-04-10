//
//  CushionPelvicMigration.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionPelvicMigration: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (pelvicMigra())
                   
               if client.pelvicMigration == true {
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
    func pelvicMigra() -> String {
        var pm = ""
        if client.pelvicMigration == true {
            pm = """
Pelvic Migration

A term used when the pelvis creeps forward while sitting.

This could lead to you slipping out of the wheelchair and falling. The forward sliding is often due to weakness or self-propulsion.

To prevent sliding forward in the wheelchair, an anti-thrust cushion can be helpful. The back two-thirds are lower while the front one-third is higher making it easier to stay in your seat. Another alternative is a pommel cushion.

The pommel is a built-up area in the front, center area that provides slide control.

Sitting in a wheelchair with proper posture can be difficul

Product: Geo-Matrix Gold, ROHO Quadtro, JAY® Union™ Cushion
"""
        }
        //        else { pm = ""}
        return (pm)
    }
}

#Preview {
        CushionPelvicMigration()
    }

