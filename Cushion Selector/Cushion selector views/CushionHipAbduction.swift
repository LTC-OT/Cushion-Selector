//
//  CushionHipAbduction.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionHipAbduction: View {
    
    @State  var client = EnterData()
   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State private var showModal: Bool = false
    
    var body: some View {
        
       ZStack {

          VStack(alignment: .center, spacing: 5){
                   Text (hipabd())
                       
                   
                   if client.hipAbduction == true {
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
        func hipabd() -> String {
            var habd = ""
            if client.hipAbduction == true {
                habd = """
 Hip Abduction
 
 Probably the most important aspect of wheelchair seating is getting the position of the hips correctly positioned. Once the hips are positioned well the other aspects of the seating can be addressed.
 
 On this page I've listed several types of supports and positioners that can be used alone or in combination with other products to help the user maintain their hip position
 
 Lateral knee supports/thigh guides
 
 Deeper leg troughs
 
 Customised abduction shaping in cushion
 
  A special cushion is designed to create the optimum pelvic foundation, capacity to adjust on-the-spot in solving for both symmetrical and asymmetrical sitting postures by strategic placement in the adjustable base cell system to further contour the cushion for correction or control.
 
  The technology of the construction produces a broad distribution pattern with low peak pressures, and pressure analysis data suggest that the pressure distribution characteristics of the cushion makes it an excellent candidate for people that are at risk of skin ulcers. Further pressure management and pressure redistribution is adjusted by simply rearranging and modifying the cells at any time.
 
 Product: Matrx Vi Invacare, Prism Supreme II
 
 """
            }
            //        else { habd = ""}
            return (habd)
        }
}

#Preview {
        CushionHipAbduction()
    }

