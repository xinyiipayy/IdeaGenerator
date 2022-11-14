//
//  persistance.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 5/11/22.
//

import Foundation
import SwiftUI

//persistence for places to go
class PlacesToGoManager: ObservableObject {
    @Published var placesToGo: [Place] = [] {
        didSet {
            save()
        }
    }
    let samplePlace: [Place] = []
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
        placesToGo = finalPlaces
    }
}


//persistence for crafts
class CraftsManager: ObservableObject {
    @Published var crafts: [Craft] = [] {
        didSet {
            save()
        }
    }
    let sampleCraft: [Craft] = []
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
        crafts = finalCrafts
    }
}


//persistence for sports
class SportsManager: ObservableObject {
    @Published var sports: [Sport] = [] {
        didSet {
            save()
        }
    }
    let sampleSport: [Sport] = []
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
        sports = finalSports
    }
}

