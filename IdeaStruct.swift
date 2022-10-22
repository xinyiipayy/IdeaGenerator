//
//  IdeaStruct.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 22/10/22.
//

import Foundation

enum category {
    case artsAndCraft
    case groupActivities
    case placesToGo
}

struct Idea {
    var title: String
    var intro: String
    var materials: String
    var time: String
    var links: URL
    var isSaved: Bool = false
    var category: category
}

