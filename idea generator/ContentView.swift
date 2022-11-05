//
//  ContentView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var placesToGo = [Place(title: "Gardens By The Bay",
                                   description: "One of Asia's premier horticultural destinations, Gardens by the Bay offers a scenic paradise for nature and photography lovers, as well as the whole family.",
                                   address: "18 Marina Gardens Dr, Singapore 018953",
                                   openingHours: "5am - 2am",
                                   link:"https://ticket.gardensbythebay.com.sg "),
                             Place(title: "Universal Studios Singapore",
                                   description: "Universal Studios Singapore is a theme park located within the Resorts World Sentosa at Sentosa, Singapore. It features 28 rides, shows, and attractions in seven themed zones. It is one of the six Universal Studios theme parks around the world.",
                                   address: "8 Sentosa Gateway, 098269",
                                   openingHours: "11am - 6pm, 7:30pm - 12:30am",
                                   link: "https://www.rwsentosa.com/en/attractions/universal-studios-singapore "),
                             Place(title: "Jewel Changi Airport",
                                   description: "Lush, 10-floor retail complex with hundreds of shops & eateries, indoor gardens & a 40-m waterfall",
                                   address: "78 Airport Blvd., Singapore 819666",
                                   openingHours: "Open 24 hours",
                                   link: "https://www.jewelchangiairport.com/en/ticketing.html ")]
    
    var body: some View {
        TabView {
            HomeView(placesToGo: $placesToGo)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SavedView(placesToGo: $placesToGo)
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
