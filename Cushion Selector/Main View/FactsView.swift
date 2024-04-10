//
//  FactsView.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2023-05-13.
//

import SwiftUI
struct FactModel: Hashable {
    let title: String
    let description: String
    
}

struct FactsView: View {
    let facts: [FactModel] = [
        FactModel(title: "Fact 1",description: "It's important to note that while therapeutic cushions can provide relief and support, they should not replace proper medical treatment or advice. Seniors should consult with healthcare professionals to determine the most suitable cushion for their specific needs and conditions."),
        FactModel(title: "Fact 2",description: "In addition to their therapeutic benefits, some cushions come with additional features like built-in massagers, heating elements, or adjustable air chambers, providing customizable comfort options for seniors."),
        FactModel(title: "Fact 3",description: "Therapeutic cushions can also provide relief for seniors with conditions like sciatica, arthritis, or lower back pain. The cushions help distribute weight evenly and reduce pressure on sensitive areas, allowing for greater comfort and pain management."),
        FactModel(title: "Fact 4",description: "Some cushions are specifically designed for wheelchair users, with features such as non-slip bottoms, straps for secure attachment, and cutouts to accommodate wheelchair handles and seat belts."),
        FactModel(title: "Fact 5",description: "Certain therapeutic cushions are designed to promote circulation by incorporating features such as contoured shapes, raised edges, or specialized materials that improve blood flow to the legs and reduce swelling."),
        FactModel(title: "Fact 6",description: "Many therapeutic cushions for seniors come with a removable and washable cover, making them easy to clean and maintain. This feature is particularly useful for seniors who may have incontinence issues or those prone to spills and accidents."),
        FactModel(title: "Fact 7",description: "Gel cushions are another popular type of therapeutic cushion. They contain a gel-like substance that helps to dissipate pressure and provide a cooling effect. Gel cushions are beneficial for seniors who spend long periods sitting or have issues with heat retention."),
        FactModel(title: "Fact 8",description: "Some therapeutic cushions for seniors are made from memory foam, a material that molds to the body's contours, providing personalized support and cushioning. Memory foam cushions can help relieve pressure points and distribute weight evenly."),
        FactModel(title: "Fact 9",description: "These cushions often feature ergonomic designs that promote proper posture and alignment, which can help reduce the risk of developing musculoskeletal issues and improve overall comfort"),
        FactModel(title: "Fact 10",description: "Therapeutic cushions for seniors are designed to provide comfort and support to alleviate pain and pressure in specific areas of the body, such as the back, hips, and coccyx (tailbone).")
        
    ]
    @State private var currentFactIndex = 0
    @State private var isAnimated: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showHeadline: Bool = false
    @State var showSheet: Bool = false
    
    
    
    func getRandomFact() -> FactModel {
        let randomIndex = Int.random(in: 0..<facts.count)
        return facts[randomIndex]
    }
    
    
    
    var body: some View {
        
        ZStack {
            
            VStack (spacing: 10){
                Text(getRandomFact().title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                
                Text(getRandomFact().description)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal, 10)
                
            }
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            
            
//            .onAppear{
//                withAnimation(Animation.linear(duration: 1.0).speed(0.5)){
//                    isAnimated.toggle()
//                }
//                
//            }
            
//            .onTapGesture {
//                self.hapticImpact.impactOccurred()
//                self.showSheet = true
//            }
            .sheet(isPresented: self.$showSheet) {
                
                FactsViewOne()
                    .cornerRadius(40)
                    .presentationDetents([.fraction(0.35)])
                    .presentationDragIndicator(.visible)
//                    .onTapGesture {
//                        self.showSheet = false
//                    }
            }
 
        }
        .frame(width: 350, height: 250)
        .cornerRadius(20)

    }
}

#Preview {
    FactsView()
        .previewLayout(.sizeThatFits)
}

