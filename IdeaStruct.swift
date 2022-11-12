//
//  IdeaStruct.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 22/10/22.
//

import Foundation
struct Craft: Identifiable, Codable {
    var id = UUID()
    
    var title: String
    var description: String
    var materials: String
    var estTime: String
    var link: String
    var otherInfo: String?
    var isSaved: Bool = false
    var picture: String?
}

struct Sport: Identifiable, Codable {
    var id = UUID()
    
    var title: String
    var description: String
    var equipment: String
    var estTime: String
    var link: String
    var otherInfo: String?
    var isSaved: Bool = false
    var picture: String?
}

struct Place: Identifiable, Codable {
    var id = UUID()
    
    var title: String
    var description: String
    var address: String
    var openingHours: String
    var link: String
    var otherInfo: String?
    var isSaved: Bool = false
    var picture: String?
}
