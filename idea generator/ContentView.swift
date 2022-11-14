//
//  ContentView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ContentView: View {
        
    @State var placesToGo = [Place(title: "Universal Studios Singapore",
                                   description: "Universal Studios Singapore is a theme park located within the Resorts World Sentosa at Sentosa, Singapore. It features 28 rides, shows, and attractions in seven themed zones. It is one of the six Universal Studios theme parks around the world.",
                                   address: "8 Sentosa Gateway, 098269",
                                   openingHours: "11am - 6pm, 7:30pm - 12:30am",
                                   link: "https://www.rwsentosa.com/en/attractions/universal-studios-singapore "),
                             Place(title: "Jewel Changi Airport",
                                   description: "Lush, 10-floor retail complex with hundreds of shops & eateries, indoor gardens & a 40-m waterfall",
                                   address: "78 Airport Blvd., Singapore 819666",
                                   openingHours: "Open 24 hours",
                                   link: "https://www.jewelchangiairport.com/en/ticketing.html "),
                             Place(title: "Wild Wild Wet",
                                   description: "Wild Wild Wet is one of Singapore's largest water parks that promises a day of thrills and spills for the whole family.",
                                   address: "1 Pasir Ris Cl, Singapore 519599",
                                   openingHours: "12pm - 6pm",
                                   link: "https://www.wildwildwet.com")]
    
    @State var crafts = [Craft(title: "Crochet",
                               description: "Crochet is a process of creating textiles by using a crochet hook to interlock loops of yarn, thread, or strands of other materials.",
                               materials: "Yarn, crochet hook",
                               link: "https://m.youtube.com/watch?v=GcOzdAzmtNM "),
                         Craft(title: "Bullet Journaling",
                               description: "Bullet journaling can be a useful aid to our wellbeing; we can track our habits and moods, our medication and appointments, our self-care and our triggers. Having all of that information in one place, and indeed, having an outlet for it can be incredibly helpful in managing our mental health. ",
                               materials: "Notebook",
                               link: "https://m.youtube.com/watch?v=fm15cmYU0IM "),
                         Craft(title: "Calligraphy",
                               description: "Calligraphy is a visual art related to writing. It is the design and execution of lettering with a pen, ink brush, or other writing instrument.",
                               materials: "Notebook, brush pen ",
                               link: "https://www.youtube.com/watch?v=sBoVGqiSzr4&vl=en ")]
    
    var body: some View {
        TabView {
            HomeView(placesToGo: $placesToGo, crafts: $crafts)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SavedView(placesToGo: $placesToGo, crafts: $crafts)
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
