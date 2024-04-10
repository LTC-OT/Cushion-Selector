//
//  PreLaunchView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-15.
//

import SwiftUI

struct PreLaunchView: View {

   var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
   @State var showSheet: Bool = false
    
    @State private var isAnimatingImage: Bool = false
    
    @State private var pulsateAnimation: Bool = false
    
    @State private var showMainView = false
    
    @State var angle: Double = 360
    
    @State var opacity: Double = 1
    
    @State var scale:  CGFloat = 1
    
    
    @State private var isPresentingActionSheet = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    
    var body: some View {
        
        Group {
            ZStack {
                
                TrapeziumShapeView()
           

                  .edgesIgnoringSafeArea(.top)
          
               
                VStack {
                    
                    Text("Therapeutic Cushions")
                      .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                    
                }
                .foregroundColor(.white)
                .font(.largeTitle)

                .padding(.top, 90)
                
                Spacer()
                VStack {
                    
                    Image("CushionLaunch")
                        .resizable()
                        .aspectRatio (contentMode: .fit)
                        .frame(width: 270, height: 210, alignment: .center)

                        .scaleEffect(self.pulsateAnimation ? 1.2 : 0.9)
                        .opacity(self.pulsateAnimation ? 1 : 0.9)
                        .onAppear () {
                            withAnimation(.spring(response: 2.0, dampingFraction: 0.2, blendDuration: 1.5)){
                                pulsateAnimation = true
                            }
                        }.padding(.bottom, 170)
                      .onTapGesture {
                          self.hapticImpact.impactOccurred()
                         isPresentingActionSheet = true
                      }
                      .sheet(isPresented: $isPresentingActionSheet) {
                         FactsViewOne()
                      }
                    
                    VStack (spacing: 5){
                        Text("Application for ")
                         
                           
                        Text("OT Students")
                           
                        Text("in LTC")
                            
                    }
                    .fontWeight(.regular)
                    .font(.title3)
                    
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 30)

                }
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 2)) {
                self.angle = 0.5
                self.scale = 1.5
            }
            
            withAnimation(Animation.linear.delay(1.75)){
                self.showMainView = true }
        }

    }
}


#Preview {
        PreLaunchView()
            
    }

