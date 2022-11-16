//
//  persistance.swift
//  idea generator
//
//  Created by Katelyn Kang Jia Xuan on 5/11/22.
//

import Foundation
import SwiftUI

//persistence for places to go
var defaultPlaces = [Place(title: "Gardens By The Bay",
                           description: "One of Asia's premier horticultural destinations, Gardens by the Bay offers a scenic paradise for nature and photography lovers, as well as the whole family.",
                           address: "18 Marina Gardens Dr, Singapore 018953",
                           mapsLink: "https://www.google.com/maps/place/Gardens+by+the+Bay/@1.2815999,103.8642279,17.38z/data=!4m5!3m4!1s0x31da1904937e1633:0x62099677b59fca76!8m2!3d1.2815683!4d103.8636132",
                           openingHours: "5am - 2am",
                           link: ["Book your tickets now!", "https://ticket.gardensbythebay.com.sg"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "The Shoppes At Marina Bay Sands Mall",
                           description: "Explore Southeast Asia's largest selection of luxury fashion, watch and jewellery brands at The Shoppes, Marina Bay Sands, a luxury shopping mall in Singapore.",
                           address: "10 Bayfront Ave, Singapore 018956",
                           mapsLink: "https://www.google.com/maps/place/Marina+Bay+Sands/@1.284276,103.8578359,17z/data=!3m2!4b1!5s0x31da19042de382df:0x5bbfe003fe5e690!4m5!3m4!1s0x31da191c912bf9b1:0xdf24c36ca4cabf1a!8m2!3d1.284276!4d103.8600246",
                           openingHours: "10:30am - 11pm",
                           link: ["Marina Bay Sands Website", "https://www.marinabaysands.com/shopping.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Universal Studios Singapore",
                           description: "Universal Studios Singapore is a theme park located within the Resorts World Sentosa at Sentosa, Singapore. It features 28 rides, shows, and attractions in seven themed zones. It is one of the six Universal Studios theme parks around the world.",
                           address: "8 Sentosa Gateway, 098269",
                           mapsLink: "https://www.google.com/maps/place/Universal+Studios+Singapore/@1.2564088,103.8133586,14.48z/data=!3m1!5s0x31da19042de382df:0x5bbfe003fe5e690!4m12!1m6!3m5!1s0x31da191c912bf9b1:0xdf24c36ca4cabf1a!2sMarina+Bay+Sands!8m2!3d1.284276!4d103.8600246!3m4!1s0x31da1955a615a343:0x3094037d34e6529f!8m2!3d1.2540421!4d103.8238084",
                           openingHours: "11am - 6pm, 7:30pm - 12:30am",
                           link: ["Book your tickets now!", "https://www.rwsentosa.com/en/attractions/universal-studios-singapore"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Jewel Changi Airport",
                           description: "Lush, 10-floor retail complex with hundreds of shops & eateries, indoor gardens & a 40-m waterfall",
                           address: "78 Airport Blvd., Singapore 819666",
                           mapsLink: "https://www.google.com/maps/place/Jewel+Changi+Airport/@1.3563107,103.9829797,14.59z/data=!3m1!5s0x31da3c8963249ae3:0xc4789872c75c8dc0!4m5!3m4!1s0x31da17be147e79c3:0xb809d0f172526ac3!8m2!3d1.3602082!4d103.9897593",
                           openingHours: "Open 24 hours",
                           link: ["Book your tickets now!", "https://www.jewelchangiairport.com/en/ticketing.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Singapore Zoo",
                           description: "The Singapore Zoo is a 28 hectares zoo located on the margins of Upper Seletar Reservoir within Singapore's heavily forested central catchment area and is the world’s best rainforest zoo.",
                           address: "80 Mandai Lake Rd, Singapore 729826",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Zoo/@1.4040136,103.7905367,16.55z/data=!3m1!5s0x31da1991ed6cfbaf:0xf5e449935c7c2ee7!4m12!1m6!3m5!1s0x31da1991f17e993b:0x3f3e660ed88690d5!2sBooks+Kinokuniya+Singapore+Main+Store!8m2!3d1.302626!4d103.8345722!3m4!1s0x31da13d9102adcaf:0xb414fac8a43b1b91!8m2!3d1.4043485!4d103.793023",
                           openingHours: "8.30am - 6pm",
                           link: ["Singapore Zoo Website", "https://www.mandai.com/en/singapore-zoo.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "River Safari",
                           description: "River Wonders, formerly known as River Safari, is a river-themed zoo and aquarium located in Mandai, Singapore, forming part of the Mandai Wildlife Reserve. It is built over 12 hectares and nestled between its two counterparts, the Singapore Zoo and the Night Safari, Singapore.",
                           address: "80 Mandai Lake Rd, Singapore 729826",
                           mapsLink: "https://www.google.com/maps/place/River+Wonders/@1.4026168,103.7907161,18z/data=!3m1!4b1!4m5!3m4!1s0x31da13d8ffd797c5:0x75203bebf10a7c92!8m2!3d1.4038498!4d103.7906676",
                           openingHours: "10am - 7pm",
                           link: ["River Safari Website", "https://www.mandai.com/en/river-wonders.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Night Safari",
                           description: "The Night Safari, Singapore is the world's first nocturnal zoo located in Mandai, Singapore. One of the most popular tourist attractions in the country, it forms part of the Mandai Wildlife Reserve along with the River Wonders, Singapore Zoo and Jurong Bird Park. ",
                           address: "80 Mandai Lake Rd, Singapore 729826",
                           mapsLink: "​​https://www.google.com/maps/place/Night+Safari/@1.4021873,103.7870981,18z/data=!4m5!3m4!1s0x31da13d7882e15f7:0x6ff144ead852d1e3!8m2!3d1.4021872!4d103.7880606 ",
                           openingHours: "6.30pm to 12am (Last entry at 11.15pm)",
                           link: ["Night Safari Website", "https://www.mandai.com/en/night-safari.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Jurong Bird Park",
                           description: "Jurong Bird Park is an aviary and tourist attraction in Jurong, Singapore. The largest such bird park in Asia, it covers an area of 0.2 square kilometres on the western slope of Jurong Hill, the highest point in the Jurong region. Jurong Bird Park will be moving to its new home in Mandai Wildlife Reserve.",
                           address: "2 Jurong Hill, 628925",
                           mapsLink: "https://www.google.com/maps/place/Jurong+Bird+Park/@1.3187065,103.704253,17z/data=!3m1!4b1!4m5!3m4!1s0x31da055d47e25239:0x8a03a32b70be1d4c!8m2!3d1.3187065!4d103.7064417",
                           openingHours: "8.30am - 6pm",
                           link: ["Jurong Bird Park Website", "https://www.mandai.com/en/jurong-bird-park.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "TreeTop Walk",
                           description: "The TreeTop Walk is the highlight of several long hiking routes in MacRitchie that brings you through the different stages of a mature secondary forest.",
                           address: "601 Island Club Rd, Singapore 578775",
                           mapsLink: "https://www.google.com/maps/place/TreeTop+Walk/@1.3606388,103.8042325,15.38z/data=!4m5!3m4!1s0x31da10d718ac0cdf:0x66ee169751b96c7d!8m2!3d1.3607287!4d103.8125215",
                           openingHours: "Weekdays: 9:00am to 5:00pm, Weekends and Public Holidays: 8:30am to 5:00pm, Closed on Mondays (except Public Holidays) Last entry at 4:45pm",
                           link: ["More Info about the TreeTop Walk", "https://www.nparks.gov.sg/gardens-parks-and-nature/parks-and-nature-reserves/central-catchment-nature-reserve/treetop-walk"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Wild Wild Wet",
                           description: "Wild Wild Wet is one of Singapore's largest water parks that promises a day of thrills and spills for the whole family.",
                           address: "1 Pasir Ris Cl, Singapore 519599",
                           mapsLink: "https://www.google.com/maps/place/Wild+Wild+Wet/@1.3775946,103.9522356,17z/data=!3m1!4b1!4m5!3m4!1s0x31da3db15183fc2b:0xb94e26060c533c72!8m2!3d1.3775946!4d103.9544243",
                           openingHours: "12pm - 6pm",
                           link: ["Wild Wild Wet Website", "https://www.wildwildwet.com"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Adventure Cove",
                           description: "From zooming down high-speed water slides to drifting lazily down a winding river; snorkelling with 20,000 marine fish to wading with friendly rays in the shallows. There’s a wave of fun waiting for the thrill-seeker and nature lover in you, here at Adventure Cove Waterpark.",
                           address: "8 Sentosa Gateway, Sentosa Island, 098269",
                           mapsLink: "https://www.google.com/maps/place/Adventure+Cove+Waterpark/@1.2580319,103.8184057,18.46z/data=!4m5!3m4!1s0x31da1bfdc5e1404b:0x3062eba361bde102!8m2!3d1.2577149!4d103.8179385",
                           openingHours: "10am - 5pm",
                           link: ["Adventure Cove Website", "https://www.rwsentosa.com/en/attractions/adventure-cove-waterpark"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Singapore Flyer",
                           description: "Huge observation wheel for views of the city plus high tea & butler-serviced flights.",
                           address: "30 Raffles Ave., Singapore 039803 Floor 1 · Marina Bay Street Circuit",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Flyer/@1.2892988,103.8609481,17z/data=!3m2!4b1!5s0x31da1907c60cda71:0x1c192c5f7f55ee5!4m5!3m4!1s0x31da19a936c551cd:0x7fb4e58ad9cd826e!8m2!3d1.2892988!4d103.8631368",
                           openingHours: "2-10pm",
                           link: ["Book your tickets now!", "https://www.singaporeflyer.com/en/ticket/singapore-flyer-ticket"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Cable Car",
                           description: "Sky rides offering views of the city & harbour, unlimited ride tickets & an in-car dining option.",
                           address: "109 Mount Faber Rd, Mount Faber Peak, Singapore 099203",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Cable+Car/@1.2711448,103.8174105,17z/data=!3m2!4b1!5s0x31da1bdfcf44ae27:0x274e767183e8b1d6!4m5!3m4!1s0x31da1ead00000001:0xe147483e211e5430!8m2!3d1.2711448!4d103.8195992",
                           openingHours: "8.45am-10pm",
                           link: ["Book your tickets now!", "https://www.singaporecablecartickets.com/?amp=1"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "IFLY",
                           description: "Adventure destination offering a simulated skydiving experience in a vertical wind tunnel.",
                           address: "43 Siloso Beach Walk, #01-01, iFly, Singapore 099010",
                           mapsLink: "https://www.google.com/maps/place/iFly+Singapore/@1.2520666,103.8153837,17z/data=!3m2!4b1!5s0x31da1bff619e7261:0xe0e1a4c976c1f34!4m5!3m4!1s0x31da1bf8d0789533:0xc0fa5ea6289fe8fb!8m2!3d1.2520666!4d103.8175724",
                           openingHours: "9am-10pm",
                           link: ["Book your tickets now!", "https://online.iflysingapore.com/?gclid=CjwKCAjw8JKbBhBYEiwAs3sxN0NDFYwFhh_sEefERaNXPmDqnI_9IjsAqzp2YYefHdsDlDet8luorxoCMTsQAvD_BwE"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Superpark​​",
                           description: "Modern, family-oriented recreation complex with tube slides, pedal cars & obstacle courses.",
                           address: "#02-477, Suntec City (North Wing, 3 Temasek Blvd, Tower 1, 038983",
                           mapsLink: "https://www.google.com/maps/place/SuperPark+Singapore/@1.2957179,103.8565278,17z/data=!3m2!4b1!5s0x31da19af1faffddb:0x64dca853efdf6385!4m5!3m4!1s0x31da193f907e7fc3:0xddbe9e5d41cd7585!8m2!3d1.2957179!4d103.8587165",
                           openingHours: "9am-9pm",
                           link: ["Book your tickets now!", "https://www.superpark.com.sg/tickets/"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Skyline Luge",
                           description: "Situated on the spectacular Island of Sentosa, Skyline Luge is Singapore's best gravity-fuelled thrill ride! Hop in the driver seat of our unique 3-wheeled Luge carts and let gravity do the rest. You're in full control of your speed as you ride down 4 purpose-built tracks with hairpin corners, exhilarating tunnels and downhill slopes through a mystical forest that lights up after sundown.",
                           address: "45 Siloso Beach Walk Sentosa, Singapore",
                           mapsLink: "https://www.google.com/maps/place/Skyline+Luge+Singapore/@1.2546142,103.8170792,18.46z/data=!4m5!3m4!1s0x31da1bfee9eb51b3:0x122393a47eeddde!8m2!3d1.2549642!4d103.8173891",
                           openingHours: "11am to 7.30pm, last entry 6.30pm",
                           link: ["Skyline Luge Website", "https://www.skylineluge.com/en/sentosa/"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Bounce Trampoline Park",
                           description: "Indoor trampoline park with a climbing wall, dunking nets, jump arena & a dodgeball battlefield. The trampoline park has something for everyone, from kids and youth, to adults and even fitness enthusiasts.",
                           address: "Cathay Cineleisure Orchard, 8 Grange Road #09-01 Singapore 239695",
                           mapsLink: "https://www.google.com/maps/place/BOUNCE+Singapore+Pte.+Ltd./@1.3015877,103.8342701,17z/data=!3m1!5s0x31da1a1c2b86f271:0x402e793eee16ae79!4m5!3m4!1s0x31da19910f00775b:0xc7357703bcea792f!8m2!3d1.301489!4d103.8363891",
                           openingHours: "Monday to Thursday: 10AM – 8PM, Fridays: 10AM – 9PM, Saturdays/Public Holidays: 9AM – 9PM, Sundays: 9AM – 7PM",
                           link: ["Bounce Trampoline Park Website", "https://bounceinc.com.sg"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Trickeye Museum",
                           description: "Trickeye Museum is an unique museum with a large array of 3-dimensional artwork for interactive optical illusions.",
                           address: "80 Siloso Road, Southside, Blk B, #01-04, 098969",
                           mapsLink: "https://www.google.com/maps/place/Trickeye+@+Southside/@1.2570342,103.8205106,17z/data=!3m1!4b1!4m5!3m4!1s0x31da1bfdc7bc1695:0x9fd51335af8b41f!8m2!3d1.258124!4d103.811537",
                           openingHours: "11am - 7pm",
                           link: ["Trickeye Museum Website", "https://trickeye.com/sg/"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "Botanic Gardens",
                           description: "The Singapore Botanic Gardens showcases the best and most spectacular of tropical flora set in stunning verdant landscape. In 2015, Botanic Gardens was inscribed as a UNESCO World Heritage Site and became Singapore’s first UNESCO world heritage site.",
                           address: "1 Cluny Rd, Singapore 259569",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Botanic+Gardens/@1.3138397,103.8137249,17z/data=!3m1!4b1!4m5!3m4!1s0x31da1a1c7ddb60bd:0xeadf14903ad3d980!8m2!3d1.3138397!4d103.8159136",
                           openingHours: "5am - 12am",
                           link: ["Botanic Gardens Website", "https://www.nparks.gov.sg/sbg"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "SEA Aquarium",
                           description: "S.E.A. Aquarium is one of the world’s largest aquariums, home to more than 100,000 marine animals representing 1,000 species across more than 40 diverse habitats. The vast array of aquatic life is complemented by interactive programmes, up-close animal encounters and immersive learning journeys to inspire visitors to protect the world’s oceans.",
                           address: "8 Sentosa Gateway, Sentosa Island, Singapore 098269",
                           mapsLink: "https://www.google.com/maps/place/S.E.A.+Aquarium/@1.2583209,103.818326,17z/data=!3m2!4b1!5s0x31da1bfd906227e3:0xe8c76fea534e7530!4m5!3m4!1s0x31da1bfdabc2ed8f:0xf4b09544068cfd26!8m2!3d1.2583209!4d103.8205147",
                           openingHours: "8 Sentosa Gateway, Sentosa Island, Singapore 098269",
                           link: ["SEA Aquarium Website", "https://www.rwsentosa.com/en/attractions/sea-aquarium"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "ArtScience Museum",
                           description: "The ArtScience Museum is a museum within the integrated resort of Marina Bay Sands in the Downtown Core of the Central Area in Singapore. Opened on 17 February 2011 by Singapore's Prime Minister Lee Hsien Loong, it is the world's first ArtScience museum, featuring major exhibitions that blend art, science, culture and technology.",
                           address: "6 Bayfront Ave, Singapore 018974",
                           mapsLink: "https://www.google.com/maps/place/ArtScience+Museum/@1.2862738,103.8570776,17z/data=!3m2!4b1!5s0x31da19042d79a381:0xd2f04a200de57dc0!4m5!3m4!1s0x31da19042950679d:0x81c847e129eec549!8m2!3d1.2862738!4d103.8592663",
                           openingHours: "10am – 7pm (Last entry at 6pm)",
                           link: ["Art Science Museum Website", "https://www.marinabaysands.com/museum.html"],
                           image: ["a", "b"],
                           notes: ""),
                     Place(title: "National Gallery Singapore",
                           description: "The National Gallery Singapore is a leading visual arts institution which oversees the world’s largest public collection of Singapore and Southeast Asian modern art. It aims to be a progressive museum that creates dialogues between the art of Singapore, Southeast Asia and the world to foster and inspire a creative and inclusive society.",
                           address: "1 St Andrew's Rd, #01 – 01, Singapore 178957",
                           mapsLink: "https://www.google.com/maps/place/National+Gallery+Singapore/@1.2902217,103.849328,17z/data=!3m2!4b1!5s0x31da19a747b41251:0x97f68319eee7fd70!4m5!3m4!1s0x31da19a747de0c15:0xe5639e25fabece80!8m2!3d1.2902217!4d103.8515167",
                           openingHours: "10am - 7pm",
                           link: ["National Gallery Singapore Website", "https://www.nationalgallery.sg/"],
                           image: ["a", "b"],
                           notes: ""),]
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
var defaultCrafts = [Craft(title: "Origami",
                           description: "Origami is the Japanese art of folding paper into decorative shapes and figures.",
                           materials: ["Square origami paper"],
                           link: ["Origami Guide", "https://origami.guide/"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Crochet",
                           description: "Crochet is a process of creating textiles by using a crochet hook to interlock loops of yarn, thread, or strands of other materials.",
                           materials: ["Crochet hook", "Yarn", "Stitch marker (can use paperclips)"],
                           link: ["How to crochet for beginners (video)", "https://m.youtube.com/watch?v=GcOzdAzmtNM"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Bullet Journaling",
                           description: "Bullet journaling is a method of personal organisation, which includes scheduling, reminders, to-do lists, brainstorming etc. in a single notebook. Bullet journals can be customised to fit one’s needs and decorated to suit individual preferences.",
                           materials: ["Notebook", "Stationery (eg. pens, highlighters, markers, washi tape)"],
                           link: ["How to Bullet Journal (video)", "https://m.youtube.com/watch?v=fm15cmYU0IM"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Hand Lettering",
                           description: "Hand lettering is an art form that involves drawing letters by hand. Hand lettering allows artists to interpret letters in creative ways and has various creative lettering styles, shapes, and forms. While similar to calligraphy, lettering artists are not confined to special calligraphy pens but can use anything from markers to paint brushes.",
                           materials: ["Writing tools (eg. pencils, pens, markers)", "Paper (eg. graphing paper, normal printer paper)", "Ruler"],
                           link: ["Calligraphy & Hand Lettering for Beginners (video)", "https://www.youtube.com/watch?v=sBoVGqiSzr4&vl=en"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Resin Art",
                           description: "Resin art is created when a runny chemical called epoxy resin is combined with various colour pigments and additives to produce a blend of unique patterns and textures. The resin mixture gradually hardens (when mixed with a hardener) to a solid plastic as a chemical reaction between its components takes place. Epoxy resin is also commonly used to seal artworks, creating a beautiful, high shine, ultra-glossy protective varnish.",
                           materials: ["Resin", "Pigments (eg. liquid pigments, powdered pigments like mica powder)", "Isopropyl alcohol & kitchen towels (to clean up)", "Mixing cups, stirring sticks", "Flat surface"],
                           link: ["Resin Flow Art for Beginners (video)", "https://youtu.be/7byPuhRgUNo"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Painting",
                           description: "Painting is defined as the process of applying paint, or another medium, to a solid surface – usually a canvas. Paints or other forms of colour are commonly applied to using a paintbrush.",
                           materials: ["Medium (eg. acrylic paint, watercolour paints, poster colours)", "Canvas (eg. watercolour paper, canvas, paper pads)", "Tools (eg. pencils, erasers, brushes)"],
                           link: ["Painting for Beginners Guide", "https://drawpaintacademy.com/painting-for-beginners/"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Drawing",
                           description: "Drawing is one of the most commonly recognized forms of visual art. Drawings are created by an artist using instruments to create lines on paper or another two-dimensional surface.",
                           materials: ["Paper", "Writing tool (pencil, pen)"],
                           link: ["Basic Drawing Techniques (video)", "https://www.youtube.com/watch?v=Nc6eOCPod-k"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Macrame",
                           description: "Macrame is a crafting technique that uses knots to create various textiles. Each knot can be created with your hands, and there are no other tools required other than a mounting ring to keep the item in place while you work.",
                           materials: ["Rope (eg. yarn, jute, twine, leather)", "Mounting rings (eg. keychains, poles, rings)", "Scissors & measuring tape"],
                           link: ["Easy Macrame Knots and Patterns (video)", "https://www.youtube.com/watch?v=IFQszfuIRdo"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Knitting",
                           description: "Knitting is a kind of fibre craft where a thread of yarn is woven into a series of loops to create fabric. Usually, knitting can be done with just two needles and a ball of yarn, making it one of the most accessible forms of textile craft. It is also a highly versatile craft that can produce a wide variety of end products. Socks, sweaters, scarves, gloves, and hats are common garments that lend themselves well to knitting.",
                           materials: ["Knitting needles", "Yarn"],
                           link: ["How To Knit for Beginners (video)", "https://www.youtube.com/watch?v=p_R1UDsNOMk"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Scrapbooking",
                           description: "Scrapbooking, a crafting and documenting activity, involves taking books with blank pages and adding photos, memorabilia, journaling, and embellishments. The primary purpose of scrapbooking is to preserve memories for future generations, but a secondary purpose often is to exercise your creativity as you display your memories in a scrapbook.",
                           materials: ["Scrapbook album or binder and pages", "Stationery(eg. pens, markers, highlighters)", "Printed photos", "Scissors", "Glue"],
                           link: ["How To Make A Scrapbook", "https://lrnkey.com/blog/how-make-scrapbook#make"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "3D Modelling",
                           description: "3D modelling is the process of creating three-dimensional representations of an object or a surface. 3D models are made within computer-based 3D modelling software. After the models are designed, they can be sent to a 3D printer to be printed.",
                           materials: ["3D Modelling software(eg. Tinkercad, SketchUp)"],
                           link: ["TinkerCAD Tutorial (video)", "https://www.youtube.com/watch?v=gOs6Mdj7y_4"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Sewing",
                           description: "Sewing is a craft that involves stitching fabrics together either with a needle and thread by hand or with a machine. After paper patterns are pinned into place on fabric and cut out, they are sewn together to create a finished garment or other item. Sewing can also be done without a pattern or to create temporary stitches or to repair previously sewn items.",
                           materials: ["Cloth", "Sewing needle", "Thread", "Scissors", "Pins", "Sewing machine (optional)"],
                           link: ["Basic Hand Stitches (video)", "https://www.youtube.com/watch?v=xvxqtc8thRg"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Pressed Flower Craft",
                           description: "Pressed flowers can be used for decoration and many other crafts.",
                           materials: ["Flowers", "Press (waxed paper, heavy books, store bought press)"],
                           link: ["How to Press Flowers (video)", "https://www.youtube.com/watch?v=eBwvQgLZyZQ"],
                           image: ["a", "b"],
                           notes: ""),
                     Craft(title: "Embroidery",
                           description: "Embroidery is the method used for decorating fabrics with a needle and a thread. It can be a great way to express your personal style and upcycle fabrics.",
                           materials: ["Embroidery hoop", "Small, sharp scissors", "Embroidery floss", "Embroidery needles", "Fabric", "Water soluble marker or other marking tool (to mark out designs on cloth)"],
                           link: ["How To Embroider For Beginners", "https://www.youtube.com/watch?v=2ATJuHN-C9A"],
                           image: ["a", "b"],
                           notes: ""),]

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
                           image: ["a", "b", "c"],
                           notes: ""),
                     Sport(title: "Badminton",
                           description: "A game with rackets in which a shuttlecock is hit back and forth across a net.",
                           benefits: ["Aids weight loss", "Tones your body", "Improves heart function", "Improves metabolic rate", "Increases bone density", "Minimises the risk of diabetes", "Increases concentration", "Decreases stress"],
                           equipment: ["Racket", "Shuttlecock"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=S2-G_tbIj80"],
                           image: ["a", "b", "c"],
                           notes: ""),
                     Sport(title: "Bowling",
                           description: "a game in which you roll a heavy ball down a narrow track towards a group of wooden objects and try to knock down as many of them as possible",
                           benefits: ["Muscle toning and strengthening", "Weight loss", "Improve social life", "Reduce risk of disease", "Stress relief", "Healthy heart", "Improves Hand-eye coordination"],
                           equipment: ["Bowling ball", "Bowling shoes"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=0DzlSU6CaW8"],
                           image: ["a", "b", "c"],
                           notes: ""),
                     Sport(title: "Capture The Flag",
                           description: "Capture the flag is a traditional outdoor sport where two or more teams each have a flag and the objective is to capture the other team's flag, located at the team's 'base', and bring it safely back to their own base.",
                           benefits: ["Improves cardiovascular health"],
                           equipment: ["2 flags"],
                           link: ["tutorial", "https://www.youtube.com/watch?v=AwQKf5Mn5Zc"],
                           image: ["a", "b", "c"],
                           notes: ""),
                     Sport(title: "Basketball",
                           description: "a variation of basketball played on a half-court with just three players on each team.",
                           benefits: ["Strengthen muscular endurance", "builds healthy bones", "improves balance and coordination", "develops fundamental movement skills", "improves body composition", "boosts heart health", "develops self-confidence", "lowers stress", "encourages team spirit", "develops communication skills"],
                           equipment: ["Basketball"],
                           link: ["https://sportsedtv.com/sport/basketball-instructional-videos"],
                           image: ["a","b","c"],
                           notes: ""),
                     Sport(title: "Abseiling",
                           description: "The sport or activity of descending a rock face or other near-vertical surface by using a doubled rope coiled round the body and fixed at a higher point.",
                           benefits: ["Strengthens Your Muscles While Being Low Impact","Improves Your Flexibility", "Challenges Your Cardiovascular System", "Combats Chronic Disease", "Improve Coordination"],
                           equipment: ["a rope", "a climbing harness"],
                           link: ["https://www.youtube.com/watch?v=PNbKJKYBGik"],
                           image: ["a", "b", "c"],
                           notes: ""),
                     Sport(title: "Aeromodeling",
                           description: "activity using remotely controlled flying model aircraft",
                           benefits: ["Hone life skills", "understand theory through real life application"],
                           equipment: ["Drone"],
                           link: ["https://www.youtube.com/watch?v=GZDmhJ79wv0"],
                           image: ["a","b","c"],
                           notes: ""),]
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

