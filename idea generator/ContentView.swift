//
//  ContentView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ContentView: View {
        
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
    
    @State var sports = [Sport(title: "Soccer",
                               description: "Soccer is a game played by two teams of eleven players using a round ball. Players kick the ball to each other and try to score goals by kicking the ball into a large net.",
                               benefits: "increases aerobic capacity and cardiovascular health, lowers body fat and improves muscle tone, builds strength, flexibility and endurance, increases muscle and bone strength, improves health due to shifts between walking, running and sprinting.",
                               equipment: "Football, shin guards",
                               link: "https://www.onlinesocceracademy.com/soccer-training-videos"),
                         Sport(title: "Badminton",
                               description: "A game with rackets in which a shuttlecock is hit back and forth across a net.",
                               benefits: "Aids weight loss, Tones your body, Improves heart function, Improves metabolic rate, Increases bone density, Minimises the risk of diabetes, Increases concentration, Decreases stress.",
                               equipment: "Racket and shuttlecock",
                               link: "https://www.youtube.com/watch?v=S2-G_tbIj80"),
                         Sport(title: "Bowling",
                               description: "a game in which you roll a heavy ball down a narrow track towards a group of wooden objects and try to knock down as many of them as possible",
                               benefits: "Muscle toning and strengthening, Weight loss, Improve social life, Reduce risk of disease, Stress relief, Healthy heart, improves Hand-eye coordination",
                               equipment: "bowling ball, a pair of bowling shoes",
                               link: "https://www.youtube.com/watch?v=0DzlSU6CaW8")]
    
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
    

    
    var body: some View {
        TabView {
            HomeView(placesToGo: $placesToGo, crafts: $crafts, sport: $sports)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            SavedView(placesToGo: $placesToGo, crafts: $crafts, sport: $sports)
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
