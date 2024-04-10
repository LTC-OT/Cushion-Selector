//
//  CushionHipAdduction.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionHipAdduction: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (hipadd())
                  
               
               if client.hipAdduction == true {
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
    func hipadd() -> String {
        var hadd = ""
        if client.hipAdduction == true {
            hadd = """
Hip Adduction

Abduction and adduction of the hip joint are a continuum; neutral positioning is when the knee joint and hip bones are in line and symmetrical.

If the knee is medial (knees together touching) the hip joint is adducted. In contrast, if the knee joint is lateral to the hip joint (knees apart), the hip is abducted.

Medial knee support/pommel 

Deeper leg troughs 

Customised adduction shaping in cushion. A Dreamline adjustable integrated cushion

A special cushion is designed to create the optimum pelvic foundation, capacity to adjust on-the-spot in solving for both symmetrical and asymmetrical sitting postures by strategic placement in the adjustable base cell system to further contour the cushion for correction or control.

The technology of the construction produces a broad distribution pattern with low peak pressures, and pressure analysis data suggest that the pressure distribution characteristics of the cushion makes it an excellent candidate for people that are at risk of skin ulcers. Further pressure management and pressure redistribution is adjusted by simply rearranging and modifying the cells at any time.

Product: Prism Supreme II, Matrx® Vi Cushion

"""
        }
        //        else { hadd = ""}
        return (hadd)
    }
}

#Preview {
        CushionHipAdduction()
    }

