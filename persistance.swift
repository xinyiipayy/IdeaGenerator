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
                           image: ["place1.1", "place1.2", "place1.3"]),
                     Place(title: "The Shoppes At Marina Bay Sands Mall",
                           description: "Explore Southeast Asia's largest selection of luxury fashion, watch and jewellery brands at The Shoppes, Marina Bay Sands, a luxury shopping mall in Singapore.",
                           address: "10 Bayfront Ave, Singapore 018956",
                           mapsLink: "https://www.google.com/maps/place/Marina+Bay+Sands/@1.284276,103.8578359,17z/data=!3m2!4b1!5s0x31da19042de382df:0x5bbfe003fe5e690!4m5!3m4!1s0x31da191c912bf9b1:0xdf24c36ca4cabf1a!8m2!3d1.284276!4d103.8600246",
                           openingHours: "10:30am - 11pm",
                           link: ["Marina Bay Sands Website", "https://www.marinabaysands.com/shopping.html"],
                           image: ["place2.1", "place2.2", "place2.3"]),
                     Place(title: "Universal Studios Singapore",
                           description: "Universal Studios Singapore is a theme park located within the Resorts World Sentosa at Sentosa, Singapore. It features 28 rides, shows, and attractions in seven themed zones. It is one of the six Universal Studios theme parks around the world.",
                           address: "8 Sentosa Gateway, 098269",
                           mapsLink: "https://www.google.com/maps/place/Universal+Studios+Singapore/@1.2564088,103.8133586,14.48z/data=!3m1!5s0x31da19042de382df:0x5bbfe003fe5e690!4m12!1m6!3m5!1s0x31da191c912bf9b1:0xdf24c36ca4cabf1a!2sMarina+Bay+Sands!8m2!3d1.284276!4d103.8600246!3m4!1s0x31da1955a615a343:0x3094037d34e6529f!8m2!3d1.2540421!4d103.8238084",
                           openingHours: "11am - 6pm, 7:30pm - 12:30am",
                           link: ["Book your tickets now!", "https://www.rwsentosa.com/en/attractions/universal-studios-singapore"],
                           image: ["place3.1", "place3.2", "place3.3"]),
                     Place(title: "Jewel Changi Airport",
                           description: "Lush, 10-floor retail complex with hundreds of shops & eateries, indoor gardens & a 40-m waterfall",
                           address: "78 Airport Blvd., Singapore 819666",
                           mapsLink: "https://www.google.com/maps/place/Jewel+Changi+Airport/@1.3563107,103.9829797,14.59z/data=!3m1!5s0x31da3c8963249ae3:0xc4789872c75c8dc0!4m5!3m4!1s0x31da17be147e79c3:0xb809d0f172526ac3!8m2!3d1.3602082!4d103.9897593",
                           openingHours: "Open 24 hours",
                           link: ["Book your tickets now!", "https://www.jewelchangiairport.com/en/ticketing.html"],
                           image: ["1", "place4.2", "place4.3"]),
                     Place(title: "Singapore Zoo",
                           description: "The Singapore Zoo is a 28 hectares zoo located on the margins of Upper Seletar Reservoir within Singapore's heavily forested central catchment area and is the world’s best rainforest zoo.",
                           address: "80 Mandai Lake Rd, Singapore 729826",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Zoo/@1.4040136,103.7905367,16.55z/data=!3m1!5s0x31da1991ed6cfbaf:0xf5e449935c7c2ee7!4m12!1m6!3m5!1s0x31da1991f17e993b:0x3f3e660ed88690d5!2sBooks+Kinokuniya+Singapore+Main+Store!8m2!3d1.302626!4d103.8345722!3m4!1s0x31da13d9102adcaf:0xb414fac8a43b1b91!8m2!3d1.4043485!4d103.793023",
                           openingHours: "8.30am - 6pm",
                           link: ["Singapore Zoo Website", "https://www.mandai.com/en/singapore-zoo.html"],
                           image: ["place5.1", "place5.2", "place5.3"]),
                     Place(title: "River Safari",
                           description: "River Wonders, formerly known as River Safari, is a river-themed zoo and aquarium located in Mandai, Singapore, forming part of the Mandai Wildlife Reserve. It is built over 12 hectares and nestled between its two counterparts, the Singapore Zoo and the Night Safari, Singapore.",
                           address: "80 Mandai Lake Rd, Singapore 729826",
                           mapsLink: "https://www.google.com/maps/place/River+Wonders/@1.4026168,103.7907161,18z/data=!3m1!4b1!4m5!3m4!1s0x31da13d8ffd797c5:0x75203bebf10a7c92!8m2!3d1.4038498!4d103.7906676",
                           openingHours: "10am - 7pm",
                           link: ["River Safari Website", "https://www.mandai.com/en/river-wonders.html"],
                           image: ["place6.1", "place6.2", "place6.3"]),
                     Place(title: "Night Safari",
                           description: "The Night Safari, Singapore is the world's first nocturnal zoo located in Mandai, Singapore. One of the most popular tourist attractions in the country, it forms part of the Mandai Wildlife Reserve along with the River Wonders, Singapore Zoo and Jurong Bird Park.",
                           address: "80 Mandai Lake Rd, Singapore 729826",
                           mapsLink: "​​https://www.google.com/maps/place/Night+Safari/@1.4021873,103.7870981,18z/data=!4m5!3m4!1s0x31da13d7882e15f7:0x6ff144ead852d1e3!8m2!3d1.4021872!4d103.7880606",
                           openingHours: "6.30pm to 12am (Last entry at 11.15pm)",
                           link: ["Night Safari Website", "https://www.mandai.com/en/night-safari.html"],
                           image: ["place7.1", "place7.2", "place7.3"]),
                     Place(title: "Jurong Bird Park",
                           description: "Jurong Bird Park is an aviary and tourist attraction in Jurong, Singapore. The largest such bird park in Asia, it covers an area of 0.2 square kilometres on the western slope of Jurong Hill, the highest point in the Jurong region. Jurong Bird Park will be moving to its new home in Mandai Wildlife Reserve.",
                           address: "2 Jurong Hill, 628925",
                           mapsLink: "https://www.google.com/maps/place/Jurong+Bird+Park/@1.3187065,103.704253,17z/data=!3m1!4b1!4m5!3m4!1s0x31da055d47e25239:0x8a03a32b70be1d4c!8m2!3d1.3187065!4d103.7064417",
                           openingHours: "8.30am - 6pm",
                           link: ["Jurong Bird Park Website", "https://www.mandai.com/en/jurong-bird-park.html"],
                           image: ["place8.1", "place8.2", "place8.3"]),
                     Place(title: "TreeTop Walk",
                           description: "The TreeTop Walk is the highlight of several long hiking routes in MacRitchie that brings you through the different stages of a mature secondary forest.",
                           address: "601 Island Club Rd, Singapore 578775",
                           mapsLink: "https://www.google.com/maps/place/TreeTop+Walk/@1.3606388,103.8042325,15.38z/data=!4m5!3m4!1s0x31da10d718ac0cdf:0x66ee169751b96c7d!8m2!3d1.3607287!4d103.8125215",
                           openingHours: "Weekdays: 9:00am to 5:00pm, Weekends and Public Holidays: 8:30am to 5:00pm, Closed on Mondays (except Public Holidays) Last entry at 4:45pm",
                           link: ["More Info about the TreeTop Walk", "https://www.nparks.gov.sg/gardens-parks-and-nature/parks-and-nature-reserves/central-catchment-nature-reserve/treetop-walk"],
                           image: ["place9.1", "place9.2", "place9.3"]),
                     Place(title: "Wild Wild Wet",
                           description: "Wild Wild Wet is one of Singapore's largest water parks that promises a day of thrills and spills for the whole family.",
                           address: "1 Pasir Ris Cl, Singapore 519599",
                           mapsLink: "https://www.google.com/maps/place/Wild+Wild+Wet/@1.3775946,103.9522356,17z/data=!3m1!4b1!4m5!3m4!1s0x31da3db15183fc2b:0xb94e26060c533c72!8m2!3d1.3775946!4d103.9544243",
                           openingHours: "12pm - 6pm",
                           link: ["Wild Wild Wet Website", "https://www.wildwildwet.com"],
                           image: ["place10.1", "place10.2", "place10.3"]),
                     Place(title: "Adventure Cove",
                           description: "From zooming down high-speed water slides to drifting lazily down a winding river; snorkelling with 20,000 marine fish to wading with friendly rays in the shallows. There’s a wave of fun waiting for the thrill-seeker and nature lover in you, here at Adventure Cove Waterpark.",
                           address: "8 Sentosa Gateway, Sentosa Island, 098269",
                           mapsLink: "https://www.google.com/maps/place/Adventure+Cove+Waterpark/@1.2580319,103.8184057,18.46z/data=!4m5!3m4!1s0x31da1bfdc5e1404b:0x3062eba361bde102!8m2!3d1.2577149!4d103.8179385",
                           openingHours: "10am - 5pm",
                           link: ["Adventure Cove Website", "https://www.rwsentosa.com/en/attractions/adventure-cove-waterpark"],
                           image: ["place11.1", "place11.2", "place11.3"]),
                     Place(title: "Singapore Flyer",
                           description: "Huge observation wheel for views of the city plus high tea & butler-serviced flights.",
                           address: "30 Raffles Ave., Singapore 039803 Floor 1 · Marina Bay Street Circuit",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Flyer/@1.2892988,103.8609481,17z/data=!3m2!4b1!5s0x31da1907c60cda71:0x1c192c5f7f55ee5!4m5!3m4!1s0x31da19a936c551cd:0x7fb4e58ad9cd826e!8m2!3d1.2892988!4d103.8631368",
                           openingHours: "2-10pm",
                           link: ["Book your tickets now!", "https://www.singaporeflyer.com/en/ticket/singapore-flyer-ticket"],
                           image: ["place12.1", "place12.2", "place12.3"]),
                     Place(title: "Cable Car",
                           description: "Sky rides offering views of the city & harbour, unlimited ride tickets & an in-car dining option.",
                           address: "109 Mount Faber Rd, Mount Faber Peak, Singapore 099203",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Cable+Car/@1.2711448,103.8174105,17z/data=!3m2!4b1!5s0x31da1bdfcf44ae27:0x274e767183e8b1d6!4m5!3m4!1s0x31da1ead00000001:0xe147483e211e5430!8m2!3d1.2711448!4d103.8195992",
                           openingHours: "8.45am-10pm",
                           link: ["Book your tickets now!", "https://www.singaporecablecartickets.com/?amp=1"],
                           image: ["place13.1", "place13.2", "4"]),
                     Place(title: "IFLY",
                           description: "Adventure destination offering a simulated skydiving experience in a vertical wind tunnel.",
                           address: "43 Siloso Beach Walk, #01-01, iFly, Singapore 099010",
                           mapsLink: "https://www.google.com/maps/place/iFly+Singapore/@1.2520666,103.8153837,17z/data=!3m2!4b1!5s0x31da1bff619e7261:0xe0e1a4c976c1f34!4m5!3m4!1s0x31da1bf8d0789533:0xc0fa5ea6289fe8fb!8m2!3d1.2520666!4d103.8175724",
                           openingHours: "9am-10pm",
                           link: ["Book your tickets now!", "https://online.iflysingapore.com/?gclid=CjwKCAjw8JKbBhBYEiwAs3sxN0NDFYwFhh_sEefERaNXPmDqnI_9IjsAqzp2YYefHdsDlDet8luorxoCMTsQAvD_BwE"],
                           image: ["place14.1", "place14.2", "place14.3"]),
                     Place(title: "Superpark​​",
                           description: "Modern, family-oriented recreation complex with tube slides, pedal cars & obstacle courses.",
                           address: "#02-477, Suntec City (North Wing, 3 Temasek Blvd, Tower 1, 038983",
                           mapsLink: "https://www.google.com/maps/place/SuperPark+Singapore/@1.2957179,103.8565278,17z/data=!3m2!4b1!5s0x31da19af1faffddb:0x64dca853efdf6385!4m5!3m4!1s0x31da193f907e7fc3:0xddbe9e5d41cd7585!8m2!3d1.2957179!4d103.8587165",
                           openingHours: "9am-9pm",
                           link: ["Book your tickets now!", "https://www.superpark.com.sg/tickets/"],
                           image: ["place15.1", "place15.2", "place15.3"]),
                     Place(title: "Skyline Luge",
                           description: "Situated on the spectacular Island of Sentosa, Skyline Luge is Singapore's best gravity-fuelled thrill ride! Hop in the driver seat of our unique 3-wheeled Luge carts and let gravity do the rest. You're in full control of your speed as you ride down 4 purpose-built tracks with hairpin corners, exhilarating tunnels and downhill slopes through a mystical forest that lights up after sundown.",
                           address: "45 Siloso Beach Walk Sentosa, Singapore",
                           mapsLink: "https://www.google.com/maps/place/Skyline+Luge+Singapore/@1.2546142,103.8170792,18.46z/data=!4m5!3m4!1s0x31da1bfee9eb51b3:0x122393a47eeddde!8m2!3d1.2549642!4d103.8173891",
                           openingHours: "11am to 7.30pm, last entry 6.30pm",
                           link: ["Skyline Luge Website", "https://www.skylineluge.com/en/sentosa/"],
                           image: ["place16.1", "place16.2", "place16.3"]),
                     Place(title: "Bounce Trampoline Park",
                           description: "Indoor trampoline park with a climbing wall, dunking nets, jump arena & a dodgeball battlefield. The trampoline park has something for everyone, from kids and youth, to adults and even fitness enthusiasts.",
                           address: "Cathay Cineleisure Orchard, 8 Grange Road #09-01 Singapore 239695",
                           mapsLink: "https://www.google.com/maps/place/BOUNCE+Singapore+Pte.+Ltd./@1.3015877,103.8342701,17z/data=!3m1!5s0x31da1a1c2b86f271:0x402e793eee16ae79!4m5!3m4!1s0x31da19910f00775b:0xc7357703bcea792f!8m2!3d1.301489!4d103.8363891",
                           openingHours: "Monday to Thursday: 10AM – 8PM, Fridays: 10AM – 9PM, Saturdays/Public Holidays: 9AM – 9PM, Sundays: 9AM – 7PM",
                           link: ["Bounce Trampoline Park Website", "https://bounceinc.com.sg"],
                           image: ["place17.1", "place17.2", "2"]),
                     Place(title: "Trickeye Museum",
                           description: "Trickeye Museum is an unique museum with a large array of 3-dimensional artwork for interactive optical illusions.",
                           address: "80 Siloso Road, Southside, Blk B, #01-04, 098969",
                           mapsLink: "https://www.google.com/maps/place/Trickeye+@+Southside/@1.2570342,103.8205106,17z/data=!3m1!4b1!4m5!3m4!1s0x31da1bfdc7bc1695:0x9fd51335af8b41f!8m2!3d1.258124!4d103.811537",
                           openingHours: "11am - 7pm",
                           link: ["Trickeye Museum Website", "https://trickeye.com/sg/"],
                           image: ["place18.1", "place18.2", "place18.3"]),
                     Place(title: "Botanic Gardens",
                           description: "The Singapore Botanic Gardens showcases the best and most spectacular of tropical flora set in stunning verdant landscape. In 2015, Botanic Gardens was inscribed as a UNESCO World Heritage Site and became Singapore’s first UNESCO world heritage site.",
                           address: "1 Cluny Rd, Singapore 259569",
                           mapsLink: "https://www.google.com/maps/place/Singapore+Botanic+Gardens/@1.3138397,103.8137249,17z/data=!3m1!4b1!4m5!3m4!1s0x31da1a1c7ddb60bd:0xeadf14903ad3d980!8m2!3d1.3138397!4d103.8159136",
                           openingHours: "5am - 12am",
                           link: ["Botanic Gardens Website", "https://www.nparks.gov.sg/sbg"],
                           image: ["place19.3", "place19.2", "place19.1"]),
                     Place(title: "SEA Aquarium",
                           description: "S.E.A. Aquarium is one of the world’s largest aquariums, home to more than 100,000 marine animals representing 1,000 species across more than 40 diverse habitats. The vast array of aquatic life is complemented by interactive programmes, up-close animal encounters and immersive learning journeys to inspire visitors to protect the world’s oceans.",
                           address: "8 Sentosa Gateway, Sentosa Island, Singapore 098269",
                           mapsLink: "https://www.google.com/maps/place/S.E.A.+Aquarium/@1.2583209,103.818326,17z/data=!3m2!4b1!5s0x31da1bfd906227e3:0xe8c76fea534e7530!4m5!3m4!1s0x31da1bfdabc2ed8f:0xf4b09544068cfd26!8m2!3d1.2583209!4d103.8205147",
                           openingHours: "10am - 5pm on off-peak days, 9am - 5pm on peak days",
                           link: ["SEA Aquarium Website", "https://www.rwsentosa.com/en/attractions/sea-aquarium"],
                           image: ["place20.2", "place20.1", "place20.3"]),
                     Place(title: "ArtScience Museum",
                           description: "The ArtScience Museum is a museum within the integrated resort of Marina Bay Sands in the Downtown Core of the Central Area in Singapore. Opened on 17 February 2011 by Singapore's Prime Minister Lee Hsien Loong, it is the world's first ArtScience museum, featuring major exhibitions that blend art, science, culture and technology.",
                           address: "6 Bayfront Ave, Singapore 018974",
                           mapsLink: "https://www.google.com/maps/place/ArtScience+Museum/@1.2862738,103.8570776,17z/data=!3m2!4b1!5s0x31da19042d79a381:0xd2f04a200de57dc0!4m5!3m4!1s0x31da19042950679d:0x81c847e129eec549!8m2!3d1.2862738!4d103.8592663",
                           openingHours: "10am – 7pm (Last entry at 6pm)",
                           link: ["Art Science Museum Website", "https://www.marinabaysands.com/museum.html"],
                           image: ["place21.1", "place21.2", "place21.3"]),
                     Place(title: "National Gallery Singapore",
                           description: "The National Gallery Singapore is a leading visual arts institution which oversees the world’s largest public collection of Singapore and Southeast Asian modern art. It aims to be a progressive museum that creates dialogues between the art of Singapore, Southeast Asia and the world to foster and inspire a creative and inclusive society.",
                           address: "1 St Andrew's Rd, #01 – 01, Singapore 178957",
                           mapsLink: "https://www.google.com/maps/place/National+Gallery+Singapore/@1.2902217,103.849328,17z/data=!3m2!4b1!5s0x31da19a747b41251:0x97f68319eee7fd70!4m5!3m4!1s0x31da19a747de0c15:0xe5639e25fabece80!8m2!3d1.2902217!4d103.8515167",
                           openingHours: "10am - 7pm",
                           link: ["National Gallery Singapore Website", "https://www.nationalgallery.sg/"],
                           image: ["place22.1", "place22.2", "place22.3"]),
                     Place(title: "Skypark Sentosa",
                           description: "Beachfront fun centre featuring bungee jumping, a giant swing, a skybridge & a vertical skywalk.",
                           address: "30 Siloso Beach Walk, Sentosa Island, 30, Singapore 099011",
                           mapsLink: "https://www.google.com/maps/place/Skypark+Sentosa+by+AJ+Hackett/@1.2551584,103.8111325,17z/data=!3m2!4b1!5s0x31da1bf90c426a55:0x6d6b7528ce51a4c8!4m5!3m4!1s0x31da1bf90b2404e3:0x46bbb1c670ec0659!8m2!3d1.2551584!4d103.8133212",
                           openingHours: "1.30-7pm",
                           link: ["Book tickets here now!", "https://www.sentosa.com.sg/en/things-to-do/attractions/skypark-sentosa-by-aj-hackett/"],
                           image: ["place23.2", "place23.3", "place23.1"]),
                     Place(title: "Singapore Discovery Centre",
                           description: "Step into an immersive journey to learn about the Singapore Story at Singapore Discovery Centre. Enjoy an array of dynamic activities, from relaxing family fun to team-based play. Engage in interactive and insightful programmes, specially curated for various walks of life. Explore Singapore’s past, present and future, introduced through eye-opening and sensorial tours.",
                           address: "510 Upper Jurong Rd, Singapore 638365",
                           mapsLink: "https://www.google.com/maps/dir/1.2799184,103.8100344/singapore+discovery+centre/@1.3077286,103.6802747,12z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x31da0f7edafeb3ab:0xf41100151646f9a1!2m2!1d103.6789432!2d1.3326904",
                           openingHours: "12-7pm",
                           link: ["Singapore Discovery Centre Website", "https://www.sdc.com.sg/"],
                           image: ["place24.1", "3", "place24.3"]),
                     Place(title: "The Cat Cafe @ Bugis",
                           description: "Fancy petting a furry friend while enjoying your coffee? The Cat Cafe is packed with many furry felines, you just have to look carefully for them. Pop by anytime, and you might just find a cuddly kitty climbing into your lap as you bask in the aroma of freshly brewed coffee.",
                           address: "241B Victoria St, Singapore 188030",
                           mapsLink: "https://www.google.com/maps/place/The+Cat+Cafe+-+Bugis/@1.3003323,103.8547858,19.5z/data=!3m1!5s0x31da19ba8964bfb3:0xa7ea4e33d5a94bda!4m5!3m4!1s0x31da19ba8c5a6b61:0x43d86ac619b8e3e7!8m2!3d1.3003045!4d103.8552664",
                           openingHours: "10am - 9pm",
                           link: ["The Cat Cafe Website", "http://thecatcafe.sg/"],
                           image: ["place25.1", "place25.2", "place25.3"]),
                     Place(title: "Science Centre Singapore",
                           description: "Science Centre Singapore is a scientific institution in Jurong East, Singapore, specialising in the promotion of scientific and technological education for the general public.",
                           address: "15 Science Centre Rd, Singapore 609081",
                           mapsLink: "https://www.google.com/maps/place/Science+Centre+Singapore/@1.3328111,103.738798,15.88z/data=!3m1!5s0x31da1011d38c2c1b:0x46294127a5fa7f00!4m5!3m4!1s0x31da1004147cad63:0x18e02380e45f8dce!8m2!3d1.3331687!4d103.7356443",
                           openingHours: "Tuesdays - Sundays: 10 am - 5pm (Last Entry 4.15pm), Closed on Mondays except for Public Holidays and School Holidays",
                           link: ["Science Centre Website", "https://www.science.edu.sg/"],
                           image: ["place26.1", "place26.2", "place26.3"]),
                     Place(title: "Singapore DUCKtours",
                           description: "Ride the original, award-winning DUCKtour! Hop-on and experience a unique land and sea adventure on an amphibious craft. This hour-long adventure start with a city tour of the historical Civic District, before splashing into the water and swimming off like a duck for a picturesque harbour tour.",
                           address: "3 Temasek Blvd, #01-330 Suntec City, Singapore 038983",
                           mapsLink: "https://www.google.com/maps/place/Singapore+DUCKtours/@1.2941302,103.8548353,17z/data=!3m2!4b1!5s0x3fb59e9506c5b431:0xb20ed19ab0eb9e9d!4m5!3m4!1s0x31da190d6de8fbd7:0xd66bc53a053c9f1!8m2!3d1.2941248!4d103.857024",
                           openingHours: "9am-6pm",
                           link: ["DUCK tours Website", "https://www.ducktours.com.sg/"],
                           image: ["place27.1", "place27.2", "place27.3"]),
                     Place(title: "Singapore River Cruise",
                           description: "Enjoy a relaxing ride aboard the iconic bumboat along the scenic river in Singapore. Marvel at the historical and modern buildings of the city during the 40-minute boat cruise. Learn about the rich past of Raffles Landing Site, The Merlion, the Esplanade, Marina Bay Sands, and more!",
                           address: "Clarke Quay, Jetty, Singapore 058282",
                           mapsLink: "https://www.google.com/maps/place/Singapore+River+Cruise/@1.2905657,103.8439282,17z/data=!3m2!4b1!5s0x31da19b7123cbd69:0xa98abcb894c10d7f!4m5!3m4!1s0x31da199fffd12123:0xa8581055bb28cf1a!8m2!3d1.2905603!4d103.8461169",
                           openingHours: "Monday - Thursday: 1-9pm, Friday - Sunday: 10am-9pm",
                           link: ["Singapore River Cruise website", "https://rivercruise.com.sg/"],
                           image: ["place28.1", "place28.2", "place28.3"]),
                     Place(title: "Sentosa 4D Adventureland",
                           description: "Gain access to three of Sentosa's most surreal 4D experiences - the first of their kind in Asia! Go on an adventure in the 4D movie, Journey 2: The Mysterious Island. Experience state-of-the-art video projection featuring wind, water, and other surprising effects! On Extreme Log Ride, a 4D roller coaster thrill, hang tight as you soar between cliffs, plunge over waterfalls and dive into crocodile-infested waters. Then saddle up for Desperados, a gaming ride where you're tasked with chasing after outlaws and engage in a Wild West shootout, firing pistols and all!",
                           address: "51B Imbiah Rd, 099708",
                           mapsLink: "https://www.google.com/maps/place/Sentosa+4D+AdventureLand/@1.2554031,103.8143296,17z/data=!3m1!4b1!4m5!3m4!1s0x31da1bfeaffda939:0xde845dc016c24f40!8m2!3d1.2553977!4d103.8165183",
                           openingHours: "12-7pm",
                           link: ["4D Adventureland Website", "http://4dadventureland.com.sg/"],
                           image: ["place29.1", "place29.2", "place29.3"]),
                     Place(title: "Dolphin Island",
                           description: "Tick another thing off the bucket list with the chance to actually swim with dolphins in Singapore. You'll be wading waist-deep into the water to meet Indo-Pacific bottlenose dolphins up close!",
                           address: "8 Sentosa Gateway, 098269",
                           mapsLink: "https://www.google.com/maps/place/Dolphin+Island/@1.2588365,103.8163301,17z/data=!3m1!4b1!4m5!3m4!1s0x31da1b2d3326b8eb:0x74f6c1df106a64f4!8m2!3d1.2588311!4d103.8185188",
                           openingHours: "10am-5pm, closed on Wednesdays and Thursdays",
                           link: ["Book your tickets now!", "https://www.rwsentosa.com/en/attractions/dolphin-island"],
                           image: ["place30.1", "place30.2", "place30.3"]),]

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
                           image: ["A1", "A2", "A3"]),
                     Craft(title: "Crochet",
                           description: "Crochet is a process of creating textiles by using a crochet hook to interlock loops of yarn, thread, or strands of other materials.",
                           materials: ["Crochet hook", "Yarn", "Stitch marker (can use paperclips)"],
                           link: ["How to crochet for beginners (video)", "https://m.youtube.com/watch?v=GcOzdAzmtNM"],
                           image: ["A4", "A5", "A6"]),
                     Craft(title: "Bullet Journaling",
                           description: "Bullet journaling is a method of personal organisation, which includes scheduling, reminders, to-do lists, brainstorming etc. in a single notebook. Bullet journals can be customised to fit one’s needs and decorated to suit individual preferences.",
                           materials: ["Notebook", "Stationery (eg. pens, highlighters, markers, washi tape)"],
                           link: ["How to Bullet Journal (video)", "https://m.youtube.com/watch?v=fm15cmYU0IM"],
                           image: ["A7", "A8", "A9"]),
                     Craft(title: "Hand Lettering",
                           description: "Hand lettering is an art form that involves drawing letters by hand. Hand lettering allows artists to interpret letters in creative ways and has various creative lettering styles, shapes, and forms. While similar to calligraphy, lettering artists are not confined to special calligraphy pens but can use anything from markers to paint brushes.",
                           materials: ["Writing tools (eg. pencils, pens, markers)", "Paper (eg. graphing paper, normal printer paper)", "Ruler"],
                           link: ["Calligraphy & Hand Lettering for Beginners (video)", "https://www.youtube.com/watch?v=sBoVGqiSzr4&vl=en"],
                           image: ["A10", "A11", "A12"]),
                     Craft(title: "Resin Art",
                           description: "Resin art is created when a runny chemical called epoxy resin is combined with various colour pigments and additives to produce a blend of unique patterns and textures. The resin mixture gradually hardens (when mixed with a hardener) to a solid plastic as a chemical reaction between its components takes place. Epoxy resin is also commonly used to seal artworks, creating a beautiful, high shine, ultra-glossy protective varnish.",
                           materials: ["Resin", "Pigments (eg. liquid pigments, powdered pigments like mica powder)", "Isopropyl alcohol & kitchen towels (to clean up)", "Mixing cups, stirring sticks", "Flat surface"],
                           link: ["Resin Flow Art for Beginners (video)", "https://youtu.be/7byPuhRgUNo"],
                           image: ["A13", "A14", "A15"]),
                     Craft(title: "Painting",
                           description: "Painting is defined as the process of applying paint, or another medium, to a solid surface – usually a canvas. Paints or other forms of colour are commonly applied to using a paintbrush.",
                           materials: ["Medium (eg. acrylic paint, watercolour paints, poster colours)", "Canvas (eg. watercolour paper, canvas, paper pads)", "Tools (eg. pencils, erasers, brushes)"],
                           link: ["Painting for Beginners Guide", "https://drawpaintacademy.com/painting-for-beginners/"],
                           image: ["A16", "A17", "A18"]),
                     Craft(title: "Drawing",
                           description: "Drawing is one of the most commonly recognized forms of visual art. Drawings are created by an artist using instruments to create lines on paper or another two-dimensional surface.",
                           materials: ["Paper", "Writing tool (pencil, pen)"],
                           link: ["Basic Drawing Techniques (video)", "https://www.youtube.com/watch?v=Nc6eOCPod-k"],
                           image: ["A19", "A20", "A21"]),
                     Craft(title: "Macrame",
                           description: "Macrame is a crafting technique that uses knots to create various textiles. Each knot can be created with your hands, and there are no other tools required other than a mounting ring to keep the item in place while you work.",
                           materials: ["Rope (eg. yarn, jute, twine, leather)", "Mounting rings (eg. keychains, poles, rings)", "Scissors & measuring tape"],
                           link: ["Easy Macrame Knots and Patterns (video)", "https://www.youtube.com/watch?v=IFQszfuIRdo"],
                           image: ["A22", "A23", "A24"]),
                     Craft(title: "Knitting",
                           description: "Knitting is a kind of fibre craft where a thread of yarn is woven into a series of loops to create fabric. Usually, knitting can be done with just two needles and a ball of yarn, making it one of the most accessible forms of textile craft. It is also a highly versatile craft that can produce a wide variety of end products. Socks, sweaters, scarves, gloves, and hats are common garments that lend themselves well to knitting.",
                           materials: ["Knitting needles", "Yarn"],
                           link: ["How To Knit for Beginners (video)", "https://www.youtube.com/watch?v=p_R1UDsNOMk"],
                           image: ["A25", "A26", "A27"]),
                     Craft(title: "Scrapbooking",
                           description: "Scrapbooking, a crafting and documenting activity, involves taking books with blank pages and adding photos, memorabilia, journaling, and embellishments. The primary purpose of scrapbooking is to preserve memories for future generations, but a secondary purpose often is to exercise your creativity as you display your memories in a scrapbook.",
                           materials: ["Scrapbook album or binder and pages", "Stationery(eg. pens, markers, highlighters)", "Printed photos", "Scissors", "Glue"],
                           link: ["How To Make A Scrapbook", "https://lrnkey.com/blog/how-make-scrapbook#make"],
                           image: ["A28", "A29", "A30"]),
                     Craft(title: "3D Modelling",
                           description: "3D modelling is the process of creating three-dimensional representations of an object or a surface. 3D models are made within computer-based 3D modelling software. After the models are designed, they can be sent to a 3D printer to be printed.",
                           materials: ["3D Modelling software(eg. Tinkercad, SketchUp)"],
                           link: ["TinkerCAD Tutorial (video)", "https://www.youtube.com/watch?v=gOs6Mdj7y_4"],
                           image: ["A31", "A32", "A33"]),
                     Craft(title: "Sewing",
                           description: "Sewing is a craft that involves stitching fabrics together either with a needle and thread by hand or with a machine. After paper patterns are pinned into place on fabric and cut out, they are sewn together to create a finished garment or other item. Sewing can also be done without a pattern or to create temporary stitches or to repair previously sewn items.",
                           materials: ["Cloth", "Sewing needle", "Thread", "Scissors", "Pins", "Sewing machine (optional)"],
                           link: ["Basic Hand Stitches (video)", "https://www.youtube.com/watch?v=xvxqtc8thRg"],
                           image: ["A34", "A35", "A36"]),
                     Craft(title: "Pressed Flower Craft",
                           description: "Pressed flowers can be used for decoration and many other crafts.",
                           materials: ["Flowers", "Press (waxed paper, heavy books, store bought press)"],
                           link: ["How to Press Flowers (video)", "https://www.youtube.com/watch?v=eBwvQgLZyZQ"],
                           image: ["A37", "A38", "A39"]),
                     Craft(title: "Embroidery",
                           description: "Embroidery is the method used for decorating fabrics with a needle and a thread. It can be a great way to express your personal style and upcycle fabrics.",
                           materials: ["Embroidery hoop", "Small, sharp scissors", "Embroidery floss", "Embroidery needles", "Fabric", "Water soluble marker or other marking tool (to mark out designs on cloth)"],
                           link: ["How To Embroider For Beginners", "https://www.youtube.com/watch?v=2ATJuHN-C9A"],
                           image: ["A40", "A41", "A42"])]

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
var defaultSports = [Sport(title: "Basketball",
                           description: "Basketball is a game played by two teams of 5. The aim of the game is to toss the basketball into the opponent’s net in order to score.",
                           benefits: ["Strengthen muscular endurance","Builds healthy bones","Improves balance and coordination","Develops fundamental movement skills","Improves body composition","Boosts heart health","Develops self-confidence","Lowers stress","Encourages team spirit","Develops communication skills"],
                           equipment: ["Basketball", "Basketball hoop", "Basketball court"],
                           link: ["Basketball Instructional Videos", "https://sportsedtv.com/sport/basketball-instructional-videos"],
                           suggestedPlace: ["Suggested Place", "https://www.myactivesg.com/Facilities?sport=basketball&q=basketball&type=All"],
                           image: ["S1","S2","S3"]),
                     Sport(title: "Soccer",
                           description: "Soccer is a game played by two teams of eleven players using a round ball. Players kick the ball to each other and try to score goals by kicking the ball into a large net.",
                           benefits: ["Increases aerobic capacity", "Increases muscle and bone strength", "Improves cardiovascular health", "Improves muscle tone", "Improves health due to shifts between walking, running and sprinting", "Builds strength, flexibility and endurance", "Lowers body fat"],
                           equipment: ["Football"],
                           link: ["Basic Football Skills", "https://www.onlinesocceracademy.com/soccer-training-videos"],
                           suggestedPlace: ["Suggested Place", "https://www.myactivesg.com/Facilities/Fields"],
                           image: ["S4", "S5", "S6"]),
                     Sport(title: "Archery",
                           description: "Archery is the sport, practice, or skill of using a bow to shoot arrows.",
                           benefits: ["Improved hand-eye coordination", "Increased depth of focus"],
                           equipment: ["Bow", "Arrow"],
                           link: ["Archery for Beginners", "https://www.youtube.com/watch?v=feKRWOA43kY"],
                           suggestedPlace: ["Suggested Place", "https://www.ace-archery.com.sg/"],
                           image: ["S7","S8","S9"]),
                     Sport(title: "Tag Rugby",
                           description: "Tag rugby is a non-contact team game in which each player wears a belt that has two velcro tags attached to it, or shorts with velcro patches. Attacking players attempt to dodge, evade and pass a rugby ball while defenders attempt to prevent them scoring by 'tagging' – pulling a velcro attached tag from the ball carrier, rather than a full contact tackle.",
                           benefits: ["Cardiovascular fitness and endurance", "Strength in upper and lower body", "Agility, speed", "Promotes teamwork"],
                           equipment: ["Rugby ball"],
                           link: ["How to Play Tag Rugby", "https://www.youtube.com/watch?v=v7e8Y8g3sGY"],
                           suggestedPlace: ["Suggested Place", "On an empty field"],
                           image: ["S10","S11","S12"]),
                     Sport(title: "Swimming",
                           description: "The sport or activity of propelling oneself through water using the limbs.",
                           benefits: ["Keeps your heart rate up but takes some of the impact stress off your body", "Builds endurance, muscle strength and cardiovascular fitness", "Helps you maintain a healthy weight", "Healthy heart and lungs", "Tones muscles and builds strength", "Provides an all-over body workout"],
                           equipment: ["No equipment needed"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=gh5mAtmeR3Y"],
                           suggestedPlace: ["Suggested Place", "https://www.myactivesg.com/Facilities/Swimming-Pools"],
                           image: ["S13","S14","S15","S16"]),
                     Sport(title: "Badminton",
                           description: "A game with rackets in which a shuttlecock is hit back and forth across a net.",
                           benefits: ["Aids weight loss", "Tones your body", "Improves heart function", "Improves metabolic rate", "Increases bone density", "Minimises the risk of diabetes", "Increases concentration", "Decreases stress"],
                           equipment: ["Racket", "Shuttlecock"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=S2-G_tbIj80"],
                           suggestedPlace: ["Suggested Place", "https://www.myactivesg.com/Facilities?sport=All&q=badminton&type=All"],
                           image: ["S17", "S18", "S19", "S20"]),
                     Sport(title: "Volleyball",
                           description: "A game for two teams, usually of six players, in which a large ball is hit by hand over a high net, the aim being to score points by making the ball reach the ground on the opponent's side of the court.",
                           benefits: ["Keep a Toned Body", "Rejuvenate Vital Organs in the Body", "Reduce the stress and anxiety levels", "Improves muscle and nerve coordination", "Improved speed and agility", "Behavioural discipline", "Better eye-hand coordination", "Improves your mood"],
                           equipment: ["Ball", "Net"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=gOgfoEGUDCA"],
                           suggestedPlace: ["Suggested Place", "https://www.myactivesg.com/Facilities?sport=volleyball&q=volleyball&type=All"],
                           image: ["S21","S22"]),
                     Sport(title: "Bouldering",
                           description: "Climbing on large boulders",
                           benefits: ["Strengthens your muscle", "Improves cardiovascular endurance"],
                           equipment: ["No equipmemt needed"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=b2v4brHpdxY"],
                           suggestedPlace: ["Suggested Place", "https://www.boulderm.com/"],
                           image: ["S23"]),
                     Sport(title: "Bowling",
                           description: "A game in which you roll a heavy ball down a narrow track towards a group of wooden objects and try to knock down as many of them as possible.",
                           benefits: ["Muscle toning and strengthening", "Weight loss", "Improve social life", "Reduce risk of disease", "Stress relief", "Healthy heart", "Improves Hand-eye coordination"],
                           equipment: ["Bowling ball", "Bowling shoes"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=0DzlSU6CaW8"],
                           suggestedPlace: ["Suggested Place", "https://www.safra.sg/amenities-offerings/sonic-bowl"],
                           image: ["S24", "S25"]),
                     Sport(title: "Kayaking",
                           description: "The sport or activity of paddling a light, narrow boat.",
                           benefits: ["Improve upper body and core strength", "Toned legs", "Improved cardiac health and endurance"],
                           equipment: ["Paddle", "Lifejacket", "Canoe"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=TAEkR13ChPs"],
                           suggestedPlace: ["Suggested Place", "https://adventurepaddlers.com.sg/rental/"],
                           image: ["S26"]),
                     Sport(title: "Capture The Flag",
                           description: "Capture the flag is a traditional outdoor sport where two or more teams each have a flag and the objective is to capture the other team's flag, located at the team's 'base', and bring it safely back to their own base.",
                           benefits: ["Improves cardiovascular health"],
                           equipment: ["2 flags"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=AwQKf5Mn5Zc"],
                           suggestedPlace: ["Suggested Place", "On an empty space"],
                           image: ["S27"]),
                     Sport(title: "Cycling",
                           description: "The sport or activity of riding a bicycle.",
                           benefits: ["Increased cardiovascular fitness", "Increased muscle strength and flexibility", "Improved joint mobility", "Decreased stress levels", "Improved posture and coordination", "Strengthened bones", "Decreased body fat levels", "Prevention or management of disease", "Reduced anxiety and depression"],
                           equipment: ["Bicycle"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=4ssLDk1eX9w&vl=en"],
                           suggestedPlace: ["Suggested Trail", "https://www.homage.sg/resources/best-cycling-trails-routes-singapore/"],
                           image: ["S28"]),
                     Sport(title: "Darts",
                           description: "An indoor game in which small pointed missiles with feather or plastic flights are thrown at a circular target marked with numbers in order to score points.",
                           benefits: ["Improved hand-eye coordination", "Works the brain", "Stress relief", "Social skills", "Improves concentration", "Physical self control", "Teamwork", "Encourages strategic thinking"],
                           equipment: ["Dartboard", "A set of 3 darts","Scoreboard or sheet of paper to keep score on"], link: ["Tutorial", "https://www.youtube.com/watch?v=VsDbP_1x2VY"],
                           suggestedPlace: ["Suggested Place", "http://www.idarts.com.sg"],
                           image: ["S29","S30"]),
                     Sport(title: "Scuba Diving",
                           description: "The sport or activity of swimming or exploring underwater.",
                           benefits: ["Increases emotional well being", "Improves blood circulation", "Helps to relieve stress", "Improves concentration capacity", "Reduces blood pressure", "Increases strength and flexibility of muscles", "Visit paradisiacal places", "Healing effects of salty water and sun on skin and bones", "Connection with nature"],
                           equipment: ["No equipment needed"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=kJMmLVTX0bk"],
                           suggestedPlace: ["Suggested Place", "https://www.scubaknights.com/"],
                           image: ["S31","S32","S33","S34"]),
                     Sport(title: "Dodgeball",
                           description: "A game in which players, in teams, form a circle and try to hit opponents with a large ball.",
                           benefits: ["Cardiovascular workout", "Increased agility", "Improved reactions", "Improved concentration levels", "Team-building skills developed"],
                           equipment: ["6 Volleyballs"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=MX7zAaGUpYU"],
                           suggestedPlace: ["Suggested Place", "https://bounceinc.com.sg/dodgeball/"],
                           image: ["S35"]),
                     Sport(title: "Floorball",
                           description: "The game is played indoors on a gym floor with specialised lightweight sticks and rules that make game play much safer than traditional floor hockey.",
                           benefits: ["Explosive power", "Cardiovascular and muscular endurance", "Improve agility"],
                           equipment: ["Floorball stick", "Stick blade", "Stick shaft", "Floorball ball"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=fX0gYzKHjZU"],
                           suggestedPlace: ["Suggested Place", "https://www.myactivesg.com/Facilities?sport=floorball&q=volleyball&type=All"],
                           image: ["S36"]),
                     Sport(title: "Golf",
                           description: "A game played on a large open-air course, in which a small hard ball is struck with a club into a series of small holes in the ground, the object being to use the fewest possible strokes to complete the course.",
                           benefits: ["Improves heart health", "Reduces stress", "Improves social interaction", "Helps you to retain a sense of achievement", "Actively engages your body and mind"],
                           equipment: ["Golf ball", "Putter"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=1iOa2ZwGhbU"],
                           suggestedPlace: ["Suggested Place", "https://www.mbgc.com.sg"],
                           image: ["S37","S38","S39","S40"]),
                     Sport(title: "Abseiling",
                           description: "The sport or activity of descending a rock face or other near-vertical surface by using a doubled rope coiled round the body and fixed at a higher point.",
                           benefits: ["Strengthens Your Muscles While Being Low Impact","Improves Your Flexibility", "Challenges Your Cardiovascular System", "Combats Chronic Disease", "Improve Coordination"],
                           equipment: ["Rope", "Climbing harness"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=PNbKJKYBGik"],
                           suggestedPlace: ["Suggested Place", "https://lifeguide.sg/2019/06/28/best-things-to-do-on-a-budget-abseiling-off-hdb-blocks/"],
                           image: ["S41", "S42", "S43", "S44"]),
                     Sport(title: "Aeromodeling",
                           description: "Activity using remotely controlled flying model aircraft",
                           benefits: ["Hone life skills", "Understand theory through real life application"],
                           equipment: ["Drone"],
                           link: ["Tutorial","https://www.youtube.com/watch?v=GZDmhJ79wv0"],
                           suggestedPlace: ["Suggested Place", "Anywhere around Singapore"],
                           image: ["S45"]),
                     Sport(title: "Aikido",
                           description: "A Japanese form of self-defence and martial art that uses locks, holds, throws, and the opponent's own movements.",
                           benefits: ["Great for aerobic conditioning", "Increased strength and flexibility", "Improved posture", "Enhanced sense of timing", "Better reactions, coordination, and improved balance"],
                           equipment: ["No equipment needed"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=aCQ1K3PMgKM"],
                           suggestedPlace: ["Suggested Place", "At home"],
                           image: ["S46","S47"]),
                     Sport(title: "Air Hockey",
                           description: "A game in which players attempt to knock a plastic disc into their opponent's goal across a specially designed table that produces a cushion of air to reduce friction.",
                           benefits: ["Burn calories", "Controlled adrenaline boosts", "Enhanced reflexes and hand eye coordination"],
                           equipment: ["Air hockey table"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=mWny-RJnX2w"],
                           suggestedPlace: ["Suggested Place", "Any arcade"],
                           image: ["S48"]),
                     Sport(title: "Fishing",
                           description: "The activity of catching fish, either for food or as a sport.",
                           benefits: ["Keeps you fit", "Increases your vitamin d intake", "Improves your concentration", "Reduces stress", "Improves self esteem"],
                           equipment: ["A fishing rod and reel", "4 to 12 pound test monofilament fishing line", "Fish hooks", "Bait"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=atd28n7CB-c"],
                           suggestedPlace: ["Suggested Place", "Woodlands Jetty"],
                           image: ["S49","S50","S51","S52"]),
                     Sport(title: "Axe Throwing",
                           description: "A sport in which the competitor throws an axe at a target, attempting to hit the bullseye as near as possible like that of the archery.",
                           benefits: ["Stress relief", "Exercise for Your Arms, Core, Shoulders and Legs"],
                           equipment: ["No equipment needed"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=e_rknG9uGTA"],
                           suggestedPlace: ["Suggested Place", "https://axefactor.com.sg/"],
                           image: ["S53","S54"]),
                     Sport(title: "Boxing",
                           description: "The sport or practice of fighting with the fists, especially with padded gloves in a roped square ring according to prescribed rules.",
                           benefits: ["Improves hearts health", "Aids weight loss", "Boosts whole body strength", "Improves balance", "Decreases stress", "Lowers blood pressure,"],
                           equipment: ["Boxing gloves"],
                           link: ["Tutorial", "https://www.youtube.com/watch?v=kKDHdsVN0b8"],
                           suggestedPlace: ["Suggested Place", "https://www.legends.com.sg"],
                           image: ["S55"])]
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

