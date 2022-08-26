//
//  ContentView.swift
//  Profile
//
//  Created by samah on 28/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            HomeView()
                .tabItem{
                    Image(systemName:"house.fill")
                    Text("Home")
                }
          ChatView()
                .tabItem{
                    Image(systemName:"bubble.left.and.bubble.right.fill")
                    Text("Chat")
                }
          
           
        }.accentColor(Color(red: 0.10980392156862745, green: 0.7019607843137254, blue: 0.7058823529411765))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
