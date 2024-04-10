//
//  TerminologyView.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2021-12-15.
//

import SwiftUI

struct TerminologyView: View {
 
    
    @State var terminologies: [Terminology] = terminologyData
    
    @State private var searchText  =  ""
    
    @State var titles = terminologyData
    
    var body: some View {
        NavigationView    {
            
            List {
                
                ForEach(terminologies) { item in
                    
                    NavigationLink(
                        destination: TerminologyDetailView(terminology: item)) {
                            TerminologyRowView(terminology: item)
                                .padding(.vertical, 4)
                        }
                }
            }
            .navigationBarTitle("Terminology", displayMode: .inline)
        }//Navigation
        
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic) ){}
        
        .onChange(of: searchText, initial: true) { searchText, bool in
            
            if !searchText.isEmpty {
                terminologies = titles.filter {$0.title.contains(searchText) }
            } else {
                terminologies = titles
            }
        }
    }
}


#Preview {
        TerminologyView()
    }

