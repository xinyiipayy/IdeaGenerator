//
//  ContentView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var craftsManager = CraftsManager()
    @StateObject var sportsManager = SportsManager()
    @StateObject var placesToGoManager = PlacesToGoManager()
    
    var body: some View {
        TabView {
            HomeView(placesToGo: $placesToGoManager.placesToGo, crafts: $craftsManager.crafts, sports: $sportsManager.sports)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SavedView(placesToGo: $placesToGoManager.placesToGo, crafts: $craftsManager.crafts, sports: $sportsManager.sports)
                .tabItem {
                    Label("Saved", systemImage: "bookmark.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
