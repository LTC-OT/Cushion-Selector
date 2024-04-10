//
//  CushionWindsWeeping.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionWindsWeeping: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
               Text (windswee())
                 
               
               if client.windsWeeping == true {
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
    func windswee() -> String {
        var ws = ""
        if client.windsWeeping == true {
            ws = """
Usually goes hand in hand with a rotation or an obliquity and causes one leg to adduct and the other leg to abduct, presenting as if the legs were “swept” away together to one side of the chair.

Winds Weeping

Hip and thigh lateral supports

Provide more adductor/abductor support on the cushion with higher contouring/deeper leg troughs

Look for a cushion that can be adjusted (built-up or minimized) to accommodate for internal rotation and adduction of one LE and external rotation and abduction of the opposite LE.

Avoid use of ELRs that decrease femoral contact with seat surface and promote windswept posture.

Product: Prism Supreme II Cushion, Spex High Contour Cushion, Vicair Vector O2 Cushion
"""
        }
        //        else { ws = ""}
        return (ws)
    }
}

#Preview {
        CushionWindsWeeping()
    }

