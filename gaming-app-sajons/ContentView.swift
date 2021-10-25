//
//  ContentView.swift
//  gaming-app-sajons
//
//  Created by MAC on 10/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            HomePageView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            TrendingPageView(showNavsInside: false)
                .tabItem {
                    Label("Trending", systemImage: "flame.fill")
                }
            
            Text("Live")
                .tabItem {
                    Label("Live Now", systemImage: "tv")
                }
            
            Text("Account")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
