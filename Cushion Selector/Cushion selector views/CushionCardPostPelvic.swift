//
//  CushionCardPostPelvic.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-04-10.
//

import SwiftUI

struct CushionCardPostPelvic: View {
    
    @State  var client = EnterData()
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading, spacing: 5){
                Text (postPelvic())
                
                
                if client.postPelvicTilt == true {
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
    
    func postPelvic() -> String {
        var ppt = ""
        if client.postPelvicTilt == true  {
            ppt = """
Posterior Pelvic Tilt

In a posterior pelvic tilt, the top of the pelvis is tipped rearward. This rotational movement of the pelvis results in a flexed or kyphotic trunk.


If the pelvic tilt is correctable/flexible, there are products that can help adjust your position. One easy solution is a ½ lumbar roll. Attach it behind your pelvis to keep you in the proper position while seated.

Use a cushion with medial and lateral contour to promote LE alignment and pelvic stability.

Ensure appropriate cushion depth to prevent resident from sliding forward seeking reduced pressure behind the knees

Add a rigid insert to prevent hammocking of the seat and cushion and keep the pelvis from collapsing into a posterior pelvic tilt

Product: Geo Matrx Hybrid deep, ROHO QUADTRO, ROHO Dual compartment, Vicair Adjuster O2, Vicair Academy Adjuster, Spex high Contour, Jay Fusion, Jay Union
"""
            
        }
        //        else { ppt = ""}
        return (ppt)
        
    }
}

#Preview {
        CushionCardPostPelvic()
    }

