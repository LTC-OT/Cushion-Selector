//
//  FeatureModel.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-11.
//

import Foundation
import SwiftUI

struct Feature: Identifiable, Hashable {
    var id = UUID()
    var brand: String
    var model: String
    var image: String
    var link: String
    var components: String
    var price: Int
    
  
}
