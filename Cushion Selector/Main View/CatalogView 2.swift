//
//  CatalogView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-15.
//

import SwiftUI

struct CatalogView: View {
   
   var feature: [Feature] = featureData
   
   @State private var sortOption = 0
   
   func sortItems() -> [Feature] {
      switch sortOption {
      case 0:
         return feature.sorted(by: { $0.price < $1.price })
      case 1:
         return feature.sorted(by: { $0.brand < $1.brand })
      case 2:
         return feature.sorted(by: { $0.model < $1.model })
      default:
         return feature
      }
   }
   
   
   var body: some View {
      
      ZStack {
          
          FeatureCardSheetView()
    
         ScrollView {
     
            VStack {
               
               Picker(selection: $sortOption, label: Text("Sort by")) {
                  Text("Price").tag(0)
                  Text("Brand").tag(1)
                  Text("Model").tag(2)
               }
               .pickerStyle(SegmentedPickerStyle())
               .padding(.horizontal, 30)
               
               Text("Cushions Catalog")
                  .foregroundColor(.white)
                  .fontWeight(.semibold)
                  .font(.system(.title, design: .serif))
 
               
               ScrollView(.horizontal, showsIndicators: false) {
                  HStack(alignment: .center, spacing: 0) {
                     
                     ForEach(sortItems(), id: \.self) { item in
                        FeatureCardView(feature: item)
                     }
                  }
               }
               
               
            }
         }
      }
   }
}


struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
            
    }
}
