//
//  FeatureBuildingView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-11.
//

import SwiftUI

struct FeatureBuildingView: View {
    // MARK: - PROPERTIES
    
    var feature: Feature
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "tag.fill")
                    .foregroundColor(.red)
                Text("Price: $ \(feature.price)")
            }
        }
        .font(.subheadline)

    }
}

#Preview {
        FeatureBuildingView(feature: featureData[0])
            .previewLayout(.fixed(width: 320, height: 60))
        
    }

