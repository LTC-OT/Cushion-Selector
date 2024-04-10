//
//  ClientProfile.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2022-01-08.
//

import SwiftUI
import Observation


@Observable

class EnterData {
    
    
    var posturaldeficits: Bool = false
    var postPelvicTilt: Bool = false
    var antPelvicTilt: Bool = false
    var pelvicObliquity: Bool = false
    var pelvicMigration: Bool = false
    var pelvicRotation: Bool = false
    var tightHamstrings: Bool = false
    var limitedHipFlexion: Bool = false
    var extensorThrust: Bool = false
    var legLengthDiscrepancy: Bool = false
    var windsWeeping: Bool = false
    var hipAdduction: Bool = false
    var hipAbduction: Bool = false
    var painfulOrDislocatedHip: Bool = false
    var skinCoccyx: Bool = false
    var woundStage: Int = 0
   
    
    
}
struct ClientProfile: View {
  
    
  @State  var client = EnterData()
    
    var woundStageA = ["", "Stage I or II", "Stage III or IV"]
    
    
    
    func clearAll() {
        client.posturaldeficits = false
        client.postPelvicTilt = false
        client.antPelvicTilt = false
        client.pelvicObliquity = false
        client.pelvicMigration = false
        client.pelvicRotation = false
        client.hipAdduction = false
        client.hipAbduction = false
        client.limitedHipFlexion = false
        client.extensorThrust = false
        client.tightHamstrings = false
        client.legLengthDiscrepancy = false
        client.windsWeeping = false
        client.painfulOrDislocatedHip = false
        client.skinCoccyx = false
        client.woundStage = 0
    }
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section (header: Text ("Postural Deficits").fontWeight(.heavy)) {
                    VStack (alignment: .leading) {

                            HStack {
                                Toggle("Evidence of postural deficits", isOn: $client.posturaldeficits)
                               

                            if client.posturaldeficits {Text("Yes")}  else {Text("No")}
                        }
                    }
                }
                
                Section (header: Text("Postural Pelvic Status").fontWeight(.heavy)) {
                    VStack(alignment: .leading) {
                        
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Posterior Pelvic Tilt", isOn: $client.postPelvicTilt)}
                                    if client.postPelvicTilt {Text("Yes")}  else {Text("No")}
                                }
                            }
                            
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Anterior Pelvic Tilt", isOn: $client.antPelvicTilt)}
                                    if client.antPelvicTilt {Text("Yes")}  else {Text("No")}
                                }
                            }
                            
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Pelvic Obliquity", isOn: $client.pelvicObliquity)}
                                    if client.pelvicObliquity {Text("Yes")}  else {Text("No")}
                                }
                            }
                            
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Pelvic Migration", isOn: $client.pelvicMigration)}
                                    if client.pelvicMigration {Text("Yes")}  else {Text("No")}
                                }
                            }
                            
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Pelvic Rotation", isOn: $client.pelvicRotation)}
                                    if client.pelvicRotation {Text("Yes")}  else {Text("No")}
                                }
                            }
                            
                        }
                    }
                }
                
                Section (header: Text("Postural Hips Status").fontWeight(.heavy)) {
                    VStack(alignment: .leading) {
                        
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Hip Adduction", isOn: $client.hipAdduction)}
                                    if client.hipAdduction {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Hip Abduction", isOn: $client.hipAbduction)}
                                    if client.hipAbduction {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Limited Hip Flexion", isOn: $client.limitedHipFlexion)}
                                    if client.limitedHipFlexion {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Extensor Thrust", isOn: $client.extensorThrust)}
                                    if client.extensorThrust {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Tight Hamstring", isOn: $client.tightHamstrings)}
                                    if client.tightHamstrings {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Leg Length Discrepancy", isOn: $client.legLengthDiscrepancy)}
                                    if client.legLengthDiscrepancy {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("WindsWeeping", isOn: $client.windsWeeping)}
                                    if client.windsWeeping {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Painful or Dislocated Hip", isOn: $client.painfulOrDislocatedHip)}
                                    if client.painfulOrDislocatedHip{Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                    }
                }
                
                Section (header: Text("Skin Integrity").fontWeight(.heavy)) {
                    VStack(alignment: .leading) {
                        
                        Section {
                            VStack {
                                HStack {
                                    HStack {
                                        Toggle("Evidence of skin integrity issues", isOn: $client.skinCoccyx)}
                                    if client.skinCoccyx {Text("Yes")}  else {Text("No")}
                                }
                            }
                        }
                        Section {
                            VStack {
                                HStack {
                                    Picker("Wound Stage", selection: $client.woundStage){
                                        ForEach(0..<woundStageA.count, id: \.self){
                                            Text(self.woundStageA [$0]).tag($0)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                
                Section(header: Text("Cushion Recommended")
                    .fontWeight(.heavy)){
                        NavigationLink(destination: CushionDetail(client: client)) {
                            HStack {
                                Image("CushionRec")
                                    .resizable()
                                    .frame(width: 60, height: 20, alignment: .leading).cornerRadius(10)
                                
                                Text("Press to select cushion")
                            }
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
                    
                }.foregroundColor(.gray)
                
            } .navigationBarTitle("Enter Client Data", displayMode: .inline)
        }
    }
}

#Preview {
        ClientProfile()
    }

