//
//  IdeaStruct.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 22/10/22.
//

import Foundation
struct Idea {
    var title: String
    var description: String
    var materials: String?
    var time: String?
    var address: String
    var links: String?
    var openingHours: String?
    var isSaved: Bool = false
    var otherDetails: String?
}

var placesToGo = [
    Idea(title: "Gardens By The Bay",
         description: "One of Asia's premier horticultural destinations, Gardens by the Bay offers a scenic paradise for nature and photography lovers, as well as the whole family.",
         address: "18 Marina Gardens Dr, Singapore 018953",
         links: "https://ticket.gardensbythebay.com.sg",
         openingHours: "5am - 2am"),
    Idea(title: "The Shoppes at Marina Bay Sands Mall",
         description: "Explore Southeast Asia's largest selection of luxury fashion, watch and jewellery brands at The Shoppes, Marina Bay Sands, a luxury shopping mall in Singapore.",
         address: "10 Bayfront Ave, Singapore 018956",
         openingHours: "10.30am - 11pm"),
    Idea(title: "UNIVERSAL STUDIOS SINGAPORE",
         description: "Universal Studios Singapore is a theme park located within the Resorts World Sentosa at Sentosa, Singapore. It features 28 rides, shows, and attractions in seven themed zones. It is one of the six Universal Studios theme parks around the world.",
         address: "8 Sentosa Gateway, 098269",
         links: "https://www.rwsentosa.com/en/attractions/universal-studios-singapore",
         openingHours: "11am - 6pm, 7:30pm - 12:30am"),
]
