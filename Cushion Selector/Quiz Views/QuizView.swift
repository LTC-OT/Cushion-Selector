//
//  QuizView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-15.
//

import SwiftUI
import Observation

@Observable
class quizQuestions: ObservableObject {
    
     var student0 = 0
     var student1 = 0
     var student2 = 0
     var student3 = 0
     var student4 = 0
     var student5 = 0
     var student6 = 0
     var student7 = 0
     var student8 = 0
     var student9 = 0
    
}

struct QuizView: View {
    
    @ObservedObject var choice = quizQuestions()
    
    var alternatives = ["","a","b","c"]
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    Text("Questions")
                    
                    
                    Text("""
                    1. What is the best wheelchair cushion for pressure sores?
                    
                    a) The Mosaic Wheelchair Cushion by ROHO Group is one of the most highly regarded pressure relief cushions by therapists.
                    b) Doughnut shaped cushion
                    c) Foam cushion with sheepskin cover.
                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student0){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                    2. How do you measure a wheelchair cushion?.
                    
                    a) Take the dimensions of the wheelchair's seat and add 1 inch  to the width number.
                    b) Take the dimensions of previous cushion has been used by the client
                    c) Measure between the broadest part of your hips or thighs when seated, figure out the seat dimension by measuring from the back of your buttocks to the rear of your knees when sitting down.
                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student1){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                3. When should a new foam cushion be replaced?.
                
                a) In the first 5 to 10 years..
                b) In the first 3 to 5 years.
                c) In the first 6 months.
                """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student2){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                4. What you should consider to ensure that a cushion works on sling upholstery
                
                a) Wheelchair has an adjustable drop seat option
                b) Lateral edges on top  of the cushion to compensate hammock effect
                c) Availability of a solid seat insert or rigidiser to create a more solid base
                """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student3){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                }// section one
                
                Section {
                    
                    Text("""
                                    5. What type of cushion can  provide significant pressure redistribution
                                    
                                    a) Cushion made based on  fluid that  conforms and moves with the body
                                    b) Cushion made based on Gel that conforms to bony prominences and moves with the body
                                    c) Cushion made based on air, if the air pressure is in an optimal situation provides significant pressure redistribution
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student4){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    6. How a dedicated cushion manage pelvic obliquity?
                                    
                                    a) A support surface that is uniform flat
                                    b) Selecting a cushion in which you can build up under the low side of the pelvis
                                    c) Support surface that respond to the body weight
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student5){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    
                    Text("""
                                    7. What type of cushion can assist to decrease sliding off from wheelchair seat
                                    
                                    a) A cushion with a strong belt attached to it
                                    b) A gel hybrid cushion that can react to the client body weight
                                    c) A contour cushion with aggressive posterior dent and a bulky wage in front
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student6){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    8. How many layer are recommneded to use on top of a body weight redistribution cushion?
                                    
                                    a) As none as possible
                                    b) One layer is well accepted
                                    c) Only two
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student7){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                }
                
                Section {
                    
                    Text("""
                                    9. What factors should be considered to ensure an adequate cushion is provided to an incontinent client?
                                    a) Ensure the use of soaker pad to prevent cushion damages
                                    b) Ensure provide a cushion with incontinent cover
                                    c) Ensure resident has frequently toiletting activities
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student8){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                    Text("""
                                    10. What are the MOST critical actions to be taken before resident is seated on top of wheelchair cushion?
                                    
                                    a) Ensure resident is wearing Clothes
                                    b) Ensure resident is aligned with cushion's middle line
                                    c) Ensure cushion : it placed in the appropriated direction, therapeutic surface is in contact with resident's bottom,  cushion  is in a sound and clean condition
                                    """)
                    
                    VStack {
                        HStack {
                            Picker("Answer", selection: $choice.student9){
                                ForEach (0..<alternatives.count, id: \.self) {
                                    index in
                                    Text(self.alternatives[index]).tag(index)
                                }
                            }
                        }
                    }
                    
                } //section two
                
                NavigationLink(destination: QuizAnswer(choice: choice)) {
                    HStack {
                        Image(systemName: "bed.double.circle")
                        Text("Support Surface quiz answers")
                        
                    }
                }
                
                Section(header: Text("To Clear Data") .fontWeight(.heavy)) {
                    Button(action: {
                        clearAll()
                    }, label: {
                        HStack {
                            Image(systemName: "slider.horizontal.below.square.filled.and.square")
                            Text("Press Here").foregroundColor(.primary)}
                    })
                }
                
            }
            .navigationBarTitle("Cushions Quiz", displayMode: .inline)
            .font(.system(size: 14))
            
            
        }// Navigation View bracket
    }
    
    func clearAll() {
        
        choice.student0 = 0
        choice.student1 = 0
        choice.student2 = 0
        choice.student3 = 0
        choice.student4 = 0
        choice.student5 = 0
        choice.student6 = 0
        choice.student7 = 0
        choice.student8 = 0
        choice.student9 = 0    }
}


#Preview {
        QuizView()
    }

