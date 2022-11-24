//
//  IdeaStruct.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 22/10/22.
//

import Foundation
import UIKit

enum Category: Codable {
    case craft
    case sport
    case place
}


struct Craft: Identifiable, Codable, Equatable {
    var id = UUID()
    
    var category: Category = .craft
    var title: String
    var description: String
    var materials: [String]
    var link: [String]
    var isSaved: Bool = false
    var image: [String]
    var notes: String = ""
}

struct Sport: Identifiable, Codable, Equatable {
    var id = UUID()
    
    var category: Category = .sport
    var title: String
    var description: String
    var benefits: [String]
    var equipment: [String]
    var link: [String]
    var suggestedPlace: [String]
    var isSaved: Bool = false
    var image: [String]
    var notes: String = ""
}

struct Place: Identifiable, Codable, Equatable {
    var id = UUID()
    
    var category: Category = .place
    var title: String
    var description: String
    var address: String
    var mapsLink: String
    var openingHours: String
    var link: [String]
    var isSaved: Bool = false
    var image: [String]
    var notes: String = ""
}

