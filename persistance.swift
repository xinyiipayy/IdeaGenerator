//
//  persistance.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 5/11/22.
//

import Foundation
import SwiftUI

//persistence for places to go
var defaultPlaces = [Place(title: "Universal Studios Singapore",
                           description: "Universal Studios Singapore is a theme park located within the Resorts World Sentosa at Sentosa, Singapore. It features 28 rides, shows, and attractions in seven themed zones. It is one of the six Universal Studios theme parks around the world.",
                           address: "8 Sentosa Gateway, 098269",
                           openingHours: "11am - 6pm, 7:30pm - 12:30am",
                           link: ["universal studios website", "https://www.rwsentosa.com/en/attractions/universal-studios-singapore"],
                           image: ["a", "b", "c"]),
                     Place(title: "Jewel Changi Airport",
                           description: "Lush, 10-floor retail complex with hundreds of shops & eateries, indoor gardens & a 40-m waterfall",
                           address: "78 Airport Blvd., Singapore 819666",
                           openingHours: "Open 24 hours",
                           link: ["jewel changi airport website", "https://www.jewelchangiairport.com/en/ticketing.html"],
                           image: ["a", "b", "c"]),
                     Place(title: "Wild Wild Wet",
                           description: "Wild Wild Wet is one of Singapore's largest water parks that promises a day of thrills and spills for the whole family.",
                           address: "1 Pasir Ris Cl, Singapore 519599",
                           openingHours: "12pm - 6pm",
                           link: ["book tickets here!", "https://www.wildwildwet.com"],
                           image: ["a", "b", "c"])]
class PlacesToGoManager: ObservableObject {
    @Published var placesToGo: [Place] = defaultPlaces {
        didSet {
            save()
        }
    }
    let samplePlace: [Place] = defaultPlaces
    init() {
        load()
    }
    func getArchiveURL() -> URL {
        let plistName = "placesToGos.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsDirectory.appendingPathComponent(plistName)
    }
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedPlaces = try? propertyListEncoder.encode(placesToGo)
        try? encodedPlaces?.write(to: archiveURL, options: .noFileProtection)
    }
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        var finalPlaces: [Place]!
        if let retrievedPlaceData = try? Data(contentsOf: archiveURL),
           let decodedPlaces = try? propertyListDecoder.decode([Place].self, from: retrievedPlaceData) {
            finalPlaces = decodedPlaces
        } else {
            finalPlaces = samplePlace
        }
        if finalPlaces == [] {
            placesToGo = defaultPlaces
        } else {
            placesToGo = finalPlaces
        }
    }
}


//persistence for crafts
var defaultCrafts = [Craft(title: "Crochet",
                           description: "Crochet is a process of creating textiles by using a crochet hook to interlock loops of yarn, thread, or strands of other materials.",
                           materials: "Yarn, crochet hook",
                           link: ["tutorial", "https://m.youtube.com/watch?v=GcOzdAzmtNM"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Bullet Journaling",
                           description: "Bullet journaling can be a useful aid to our wellbeing; we can track our habits and moods, our medication and appointments, our self-care and our triggers. Having all of that information in one place, and indeed, having an outlet for it can be incredibly helpful in managing our mental health. ",
                           materials: "Notebook",
                           link: ["tutorial", "https://m.youtube.com/watch?v=fm15cmYU0IM"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Calligraphy",
                           description: "Calligraphy is a visual art related to writing. It is the design and execution of lettering with a pen, ink brush, or other writing instrument.",
                           materials: "Notebook, brush pen ",
                           link: ["tutorial", "https://www.youtube.com/watch?v=sBoVGqiSzr4&vl=en"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Resin Art",
                           description: "Resin art is anything created through the use of combining some resin and hardener for purely aesthetic purposes.",
                           materials: "Resin",
                           link: ["tutorial", "https://youtu.be/7byPuhRgUNo"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Painting",
                           description: "Painting, the expression of ideas and emotions, with the creation of certain aesthetic qualities, in a two-dimensional visual language",
                           materials: "canvas, paintbrushes, paint, water",
                           link: ["tutorial", "https://youtu.be/7whhcFfz51Q"],
                           image: ["a", "b", "c"])]

class CraftsManager: ObservableObject {
    @Published var crafts: [Craft] = defaultCrafts {
        didSet {
            save()
        }
    }
    let sampleCraft: [Craft] = defaultCrafts
    init() {
        load()
    }
    func getArchiveURL() -> URL {
        let plistName = "crafts.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsDirectory.appendingPathComponent(plistName)
    }
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedCrafts = try? propertyListEncoder.encode(crafts)
        try? encodedCrafts?.write(to: archiveURL, options: .noFileProtection)
    }
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        var finalCrafts: [Craft]!
        if let retrievedCraftData = try? Data(contentsOf: archiveURL),
           let decodedCrafts = try? propertyListDecoder.decode([Craft].self, from: retrievedCraftData) {
            finalCrafts = decodedCrafts
        } else {
            finalCrafts = sampleCraft
        }
        if finalCrafts == [] {
            crafts = defaultCrafts
        } else {
            crafts = finalCrafts
        }
    }
}


//persistence for sports
var defaultSports = [Sport(title: "Soccer",
                           description: "Soccer is a game played by two teams of eleven players using a round ball. Players kick the ball to each other and try to score goals by kicking the ball into a large net.",
                           benefits: "increases aerobic capacity and cardiovascular health, lowers body fat and improves muscle tone, builds strength, flexibility and endurance, increases muscle and bone strength, improves health due to shifts between walking, running and sprinting.",
                           equipment: "Football, shin guards",
                           link: ["tutorial", "https://www.onlinesocceracademy.com/soccer-training-videos"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Badminton",
                           description: "A game with rackets in which a shuttlecock is hit back and forth across a net.",
                           benefits: "Aids weight loss, Tones your body, Improves heart function, Improves metabolic rate, Increases bone density, Minimises the risk of diabetes, Increases concentration, Decreases stress.",
                           equipment: "Racket and shuttlecock",
                           link: ["tutorial", "https://www.youtube.com/watch?v=S2-G_tbIj80"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Bowling",
                           description: "a game in which you roll a heavy ball down a narrow track towards a group of wooden objects and try to knock down as many of them as possible",
                           benefits: "Muscle toning and strengthening, Weight loss, Improve social life, Reduce risk of disease, Stress relief, Healthy heart, improves Hand-eye coordination",
                           equipment: "bowling ball, a pair of bowling shoes",
                           link: ["tutorial", "https://www.youtube.com/watch?v=0DzlSU6CaW8"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Capture The Flag",
                           description: "Capture the flag is a traditional outdoor sport where two or more teams each have a flag and the objective is to capture the other team's flag, located at the team's 'base', and bring it safely back to their own base.",
                           benefits: "improves cardiovascular health",
                           equipment: "Two flags",
                           link: ["tutorial", "https://www.youtube.com/watch?v=AwQKf5Mn5Zc"],
                           image: ["a", "b", "c"])]
class SportsManager: ObservableObject {
    @Published var sports: [Sport] = defaultSports {
        didSet {
            save()
        }
    }
    let sampleSport: [Sport] = defaultSports
    init() {
        load()
    }
    func getArchiveURL() -> URL {
        let plistName = "sports.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        return documentsDirectory.appendingPathComponent(plistName)
    }
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedSports = try? propertyListEncoder.encode(sports)
        try? encodedSports?.write(to: archiveURL, options: .noFileProtection)
    }
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        var finalSports: [Sport]!
        if let retrievedSportData = try? Data(contentsOf: archiveURL),
           let decodedSports = try? propertyListDecoder.decode([Sport].self, from: retrievedSportData) {
            finalSports = decodedSports
        } else {
            finalSports = sampleSport
        }
        if finalSports == [] {
            sports = defaultSports
        } else {
            sports = finalSports
        }
    }
}

