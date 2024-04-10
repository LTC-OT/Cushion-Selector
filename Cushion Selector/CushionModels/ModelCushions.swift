//
//  ModelCushions.swift
//  Cushion Selector
//
//  Created by Jaime Fagnilli on 2024-03-14.
//

import SwiftUI

struct ModelCushionsDetails: View {
    var feature: Feature
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){

            VStack {
                Section(header: Text("Cushion Model").font(.headline).bold().foregroundColor(Color.primary)) {
                    Text("\(feature.model)").font(.title).bold().foregroundColor(Color.accentColor).bold()
                    HStack {
                        Text("$ \(feature.price, specifier: "%.2f") CAD").foregroundColor(Color.secondary)
                        Image(systemName: "tag.fill").foregroundColor(.red)

                    }
                    Image(feature.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300, alignment: .center)
                        .padding(.top)
                    
                    Text("\(feature.components)")
                        .foregroundColor(Color.secondary)
                        .frame(width: 350, height: .infinity, alignment: .center)
              
                }

                
            }
           .padding()
        }
        .navigationBarTitle("Wheelchairs Models")
        
    }
}

struct ModelCushions: View {
    @State var feature: [Feature] = featureData
    
    @State private var selectedModelPrice: Feature?
    @State private var isDetailViewPresented: Bool = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 10){
                    ForEach(feature) { item in
                        Button(action: {
                            selectedModelPrice = item
                            isDetailViewPresented.toggle()
                        }, label: {
                            VStack(alignment: .center, spacing: 5) {
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 90, height: 90, alignment: .center)
                                    .padding(.top)
                                    .shadow(color: isDetailViewPresented ? .gray.opacity(0.5) : .black.opacity(0.5), radius: isDetailViewPresented ? 2 : 5, x: 5, y: isDetailViewPresented ? 2 : 5)
                                    .scaleEffect(isDetailViewPresented ? 0.99 : 1.0)
                                    .animation(.easeInOut(duration: 0.5), value: isDetailViewPresented)
                                
                                Text(" \(item.model)")
                                    .font(.headline)
                                    .font(.system(.title, design: .serif))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.accentColor)

                                
                                HStack {
                                    Text("$ \(item.price, specifier: "%.2f") CAD")
                                        .foregroundColor(Color.secondary)
                                        
                                    Image(systemName: "tag").foregroundColor(.red)

                                }
                                .font(.caption)
                                .padding()
                                
                                
                            }
                            .frame(width: 180, height: 180, alignment: .topLeading)
                            .foregroundColor(Color.accentColor)
                            .background(Color.gray.cornerRadius(10).opacity(0.3))
                            .cornerRadius(25)
                        })
                        .sheet(isPresented: Binding(
                            get: { isDetailViewPresented },
                            set: { _ in isDetailViewPresented = false }
                            
                        )) {
                            if let selectedModelPrice = selectedModelPrice {
                                ModelCushionsDetails(feature: selectedModelPrice)
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium, .large])
                            }
                        }
                    }
                }
            }
            
//            .padding(.vertical, 50)
            .padding(.horizontal, 10)
            .navigationBarTitle("Cushion Models", displayMode: .inline)
            
        }
    }
}

#Preview {
    ModelCushions()
}
