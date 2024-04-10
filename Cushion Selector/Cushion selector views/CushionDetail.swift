//
//  CushionDetail.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2022-01-08.
//

import SwiftUI
import Observation


struct CushionDetail: View {
   
   @State  var client = EnterData()
   
   var body: some View {
       ZStack {
           NavigationStack {
               Form {
                   Section("Pelvic"){
                       VStack {
                           CushionCardPostPelvic(client:client)
                           CushionPelvicTilt(client:client)
                           CushionPelvicObliquity(client:client)
                           CushionPelvicMigration(client:client)
                           CushionPelvicRotation(client:client)
                       }
                   }//Section
                   Section ("Hips") {
                       VStack {
                           CushionTightHamstrings(client:client)
                           CushionLimitedHipFlexion(client:client)
                           CushionExtensorThrust(client:client)
                           CushionLegLengthDiscrepancy(client:client)
                           CushionHipAbduction(client:client)
                           CushionHipAdduction(client:client)
                           CushionPainfulOrDislocation(client:client)
                           CushionWindsWeeping(client:client)
                       }
                   }//Section
                   
                   Section ("Skin Integrity") {
                       VStack {
                           CushionWoundC(client: client)
                           CushionWoundC1(client:client)
                       }
                   }//Section
                   
                   
               }// Form
               
                   .navigationTitle("Cushion Recommendation")
                   .navigationBarTitleDisplayMode(.inline)
               
           }//NavigationStack
           Circle()
           
               .foregroundColor(.accentColor)
               .opacity(0.3)
               .offset(x: -200, y: 100)
       }
       
   }//MainView
   
}



#Preview {
       CushionDetail()
    }

