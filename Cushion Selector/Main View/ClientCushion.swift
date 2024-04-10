//
//  ClientCushion.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2022-01-08.
//

import SwiftUI

struct ClientCushion: View {
 
    
 @State  var client = EnterData()
    
    var body: some View {
        
        ZStack {
            
            NavigationStack {
                CushionDetail(client:client)
                
            }
        }
    }
}

#Preview {
        ClientCushion()
    }

