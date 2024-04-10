//
//  HomeViewScreen.swift
//  Cushions
//
//  Created by Jaime Fagnilli on 2023-01-29.
//

import SwiftUI

struct HomeViewScreen: View {

    var body: some View {
       
    
            TabView {
                PreLaunchView()
                    .tabItem {
                        Image (systemName: "filemenu.and.cursorarrow")
                        Text("Home")
                    }
                    .tag(0)
                
                SelectorButton()
                    .tabItem {
                        Image (systemName: "filemenu.and.selection")
                        Text("Cushion Selector")
                    }
                    .tag(1)
                
                CushionCatalogButton()
                    .tabItem {
                        Image (systemName: "magazine")
                        Text("Cushion Catalog")
                    }
                    .tag(2)
                
                TerminologyButton()
                    .tabItem {
                        Image (systemName: "doc.text")
                        Text("Terminology")
                    }
                    .tag(3)
                
                QuizButton()
                    .tabItem {
                        Image (systemName: "pencil")
                        Text("Quiz")
                    }
                    .tag(4)
                
            }
         
        
    }
}

#Preview  {
        HomeViewScreen()
        
    }


