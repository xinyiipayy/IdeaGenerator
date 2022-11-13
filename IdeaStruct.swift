//
//  IdeaStruct.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 22/10/22.
//

import Foundation

enum Category: Codable {
    case craft
    case sport
    case place
}


struct Craft: Identifiable, Codable {
    var id = UUID()
    
    var category: Category = .craft
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
    
    var category: Category = .sport
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
    
    var category: Category = .place
    var title: String
    var description: String
    var address: String
    var openingHours: String
    var link: String
    var otherInfo: String?
    var isSaved: Bool = false
    var picture: String?
}
