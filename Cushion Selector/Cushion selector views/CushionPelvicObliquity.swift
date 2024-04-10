//
//  CushionPelvicObliquity.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionPelvicObliquity: View {
    
    @State  var client = EnterData()
   
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (pelvicObliq())
                  
               
               if client.pelvicObliquity == true {
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
    func pelvicObliq() -> String {
        var pob = ""
        if client.pelvicObliquity == true {
            pob = """
Pelvic Obliquity

Pelvic obliquity is when one side of the pelvis is higher than the other, resulting in a lateral curvature of the spine. One common consequence of pelvic obliquity is pressure ulcers located under an IT.

Correcting a flexible obliquity or accommodating a fixed obliquity provides the best alignment for biomechanical function so you can:

The right solution depends on whether your obliquity is correctable or fixed. A correctable obliquity allows the pelvis to be repositioned properly.

If the obliquity is in the early stages, an adjustable quadrant cushion can help.

Secure it at a 90 degree angle to counteract the obliquity. If you’re looking for one simple solution, a no lean cushion can be used with both correctable and fixed conditions.

Place the built-up side under the lower half of your pelvis if it’s correctable. This will help keep your pelvis equal and balanced.

If you have fixed obliquity, place the built-up side under the higher half. This will reduce pressure and give you more stability than a flat cushion.

Product: Vicair Vector O2 Cushion, Invacare Matrx Flovair Gentle Contour Cushion, ROHO dual compartment
"""
        }
        //        else { pob = ""}
        return (pob)
    }
}

#Preview {
        CushionPelvicObliquity()
    }

