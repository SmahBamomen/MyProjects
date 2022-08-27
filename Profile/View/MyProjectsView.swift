//
//  MyProjectsView.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import SwiftUI

struct MyProjectsView: View {
 
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    var body: some View {
        ScrollView {
                    LazyVGrid(columns: columns, spacing: 25) {
                        AllProjects().padding(.horizontal)
                          
                    } 
                    
                }
     
    }
}

