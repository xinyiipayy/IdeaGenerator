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
                           image: ["a", "b", "c"],
                           mapsLink: "https://www.google.com/maps/place/Universal+Studios+Singapore/@1.2564088,103.8133586,14.48z/data=!3m1!5s0x31da19042de382df:0x5bbfe003fe5e690!4m12!1m6!3m5!1s0x31da191c912bf9b1:0xdf24c36ca4cabf1a!2sMarina+Bay+Sands!8m2!3d1.284276!4d103.8600246!3m4!1s0x31da1955a615a343:0x3094037d34e6529f!8m2!3d1.2540421!4d103.8238084"),
                     Place(title: "Jewel Changi Airport",
                           description: "Lush, 10-floor retail complex with hundreds of shops & eateries, indoor gardens & a 40-m waterfall",
                           address: "78 Airport Blvd., Singapore 819666",
                           openingHours: "Open 24 hours",
                           link: ["jewel changi airport website", "https://www.jewelchangiairport.com/en/ticketing.html"],
                           image: ["a", "b", "c"],
                           mapsLink: "https://www.google.com/maps/place/Jewel+Changi+Airport/@1.3563107,103.9829797,14.59z/data=!3m1!5s0x31da3c8963249ae3:0xc4789872c75c8dc0!4m5!3m4!1s0x31da17be147e79c3:0xb809d0f172526ac3!8m2!3d1.3602082!4d103.9897593"),
                     Place(title: "Wild Wild Wet",
                           description: "Wild Wild Wet is one of Singapore's largest water parks that promises a day of thrills and spills for the whole family.",
                           address: "1 Pasir Ris Cl, Singapore 519599",
                           openingHours: "12pm - 6pm",
                           link: ["book tickets here!", "https://www.wildwildwet.com"],
                           image: ["a", "b", "c"],
                           mapsLink: "https://www.google.com/maps/place/Wild+Wild+Wet/@1.3775946,103.9522356,17z/data=!3m1!4b1!4m5!3m4!1s0x31da3db15183fc2b:0xb94e26060c533c72!8m2!3d1.3775946!4d103.9544243")]
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
                           materials: ["Yarn", "Crochet hook"],
                           link: ["tutorial", "https://m.youtube.com/watch?v=GcOzdAzmtNM"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Bullet Journaling",
                           description: "Bullet journaling can be a useful aid to our wellbeing; we can track our habits and moods, our medication and appointments, our self-care and our triggers. Having all of that information in one place, and indeed, having an outlet for it can be incredibly helpful in managing our mental health. ",
                           materials: ["Notebook", "Pen"],
                           link: ["tutorial", "https://m.youtube.com/watch?v=fm15cmYU0IM"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Calligraphy",
                           description: "Calligraphy is a visual art related to writing. It is the design and execution of lettering with a pen, ink brush, or other writing instrument.",
                           materials: ["Notebook", "Brush pen"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=sBoVGqiSzr4&vl=en"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Resin Art",
                           description: "Resin art is anything created through the use of combining some resin and hardener for purely aesthetic purposes.",
                           materials: ["Resin"],
                           link: ["tutorial", "https://youtu.be/7byPuhRgUNo"],
                           image: ["a", "b", "c"]),
                     Craft(title: "Painting",
                           description: "Painting, the expression of ideas and emotions, with the creation of certain aesthetic qualities, in a two-dimensional visual language",
                           materials: ["Canvas", "Paintbrushes", "Paint", "Water"],
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
                           benefits: ["Increases aerobic capacity", "Increases muscle and bone strength", "Improves cardiovascular health", "Improves muscle tone", "Improves health due to shifts between walking, running and sprinting", "Builds strength, flexibility and endurance", "Lowers body fat"],
                           equipment: ["Football", "Shin guards"],
                           link: ["tutorial", "https://www.onlinesocceracademy.com/soccer-training-videos"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Badminton",
                           description: "A game with rackets in which a shuttlecock is hit back and forth across a net.",
                           benefits: ["Aids weight loss", "Tones your body", "Improves heart function", "Improves metabolic rate", "Increases bone density", "Minimises the risk of diabetes", "Increases concentration", "Decreases stress"],
                           equipment: ["Racket", "Shuttlecock"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=S2-G_tbIj80"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Bowling",
                           description: "a game in which you roll a heavy ball down a narrow track towards a group of wooden objects and try to knock down as many of them as possible",
                           benefits: ["Muscle toning and strengthening", "Weight loss", "Improve social life", "Reduce risk of disease", "Stress relief", "Healthy heart", "Improves Hand-eye coordination"],
                           equipment: ["Bowling ball", "Bowling shoes"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=0DzlSU6CaW8"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Capture The Flag",
                           description: "Capture the flag is a traditional outdoor sport where two or more teams each have a flag and the objective is to capture the other team's flag, located at the team's 'base', and bring it safely back to their own base.",
                           benefits: ["Improves cardiovascular health"],
                           equipment: ["2 flags"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=AwQKf5Mn5Zc"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Basketball",
                           description: "a variation of basketball played on a half-court with just three players on each team.",
                           benefits: ["Strengthen muscular endurance", "builds healthy bones", "improves balance and coordination", "develops fundamental movement skills", "improves body composition", "boosts heart health", "develops self-confidence", "lowers stress", "encourages team spirit", "develops communication skills"],
                           equipment: ["Basketball"],
                           link: ["https://sportsedtv.com/sport/basketball-instructional-videos"],
                           image: ["a","b","c"]),
                     Sport(title: "Abseiling",
                           description: "The sport or activity of descending a rock face or other near-vertical surface by using a doubled rope coiled round the body and fixed at a higher point.",
                           benefits: ["Strengthens Your Muscles While Being Low Impact","Improves Your Flexibility", "Challenges Your Cardiovascular System", "Combats Chronic Disease", "Improve Coordination"],
                           equipment: ["a rope", "a climbing harness"],
                           link: ["https://www.youtube.com/watch?v=PNbKJKYBGik"],
                           image: ["a", "b", "c"]),
                     Sport(title: "Aeromodeling",
                           description: "activity using remotely controlled flying model aircraft",
                           benefits: ["Hone life skills", "understand theory through real life application"],
                           equipment: ["Drone"],
                           link: ["https://www.youtube.com/watch?v=GZDmhJ79wv0"],
                           image: ["a","b","c"]),]
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

