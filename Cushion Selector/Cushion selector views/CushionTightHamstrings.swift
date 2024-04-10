//
//  CushionTightHamstrings.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionTightHamstrings: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (tightHams())
                  
               
               if client.tightHamstrings == true {
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
    func tightHams() -> String {
        var th = ""
        if client.tightHamstrings == true {
            th = """

Tight Hamstrings

A modular cushion can be used to achieve positioning goals for the pelvis, hips, and lower extremities through adjustments to the base of the cushion.

The base of an adjustable cushion. The placement of the positioning pieces can be adjusted to achieve different positioning effects on the cushion.

Right and left sides can be adjusted independently. In addition, front and rear of the cushion can be adjusted to achieve different effects.

Removal of the cells from the front of the cushion and addition to the rear of the cushion to accommodate lower extremity positioning for tight hamstrings and for pelvic positioning.

Drop front of cushion down/build up at rear for sloping seat surface 

Open seat to back angle 

Decrease thigh to calf angle with footplate position

Product: Jay Fusion, Vicair Adjuster O2,

"""
        }
        //        else { th = ""}
        return (th)
    }
}

#Preview {
        CushionTightHamstrings()
    }

