//
//  CushionPelvicRotation.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionPelvicRotation: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    
    var body: some View {
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (pelvRota())
                
               
               if client.pelvicRotation == true {
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
    func pelvRota() -> String {
        var pr = ""
        if client.pelvicRotation == true {
            pr = """
Pelvic Rotation

Pelvic rotation occurs when one ASIS is more forward than the other.

If the client’s range of motion is limited, placing the lower extremities directly in front of the client may result in pulling the pelvis into rotation. Instead, place the legs in an asymmetrical posture, often known as a windswept posture, to allow the pelvis to remain neutral.

Create build-up in pre-ischial support under affected pelvis

Contour the back surface to support pelvis if fixed

Check dimensions of chair and components. A chair that is too wide, for example, can facilitate pelvic rotation

Contoured cushions with good leg troughs

Appropriate lower back support is preferable to a canvas back which may mould to the rotated pelvis

Product: Roho Dual Compartments, Spex High Contour Cushion
"""
        }
        //        else { pr = ""}
        return (pr)
    }
}

#Preview {
        CushionPelvicRotation()
    }

