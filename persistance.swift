//
//  persistance.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 5/11/22.
//

import Foundation
import SwiftUI
class placesToGoManager: ObservableObject {
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
