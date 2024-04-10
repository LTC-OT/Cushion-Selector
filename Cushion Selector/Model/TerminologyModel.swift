//
//  TerminologyModel.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-15.
//

import Foundation
import SwiftUI

struct Terminology: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var definition: String
   
}
