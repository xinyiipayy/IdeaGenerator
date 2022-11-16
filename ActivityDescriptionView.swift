//
//  ActivityDescriptionView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ActivityDescriptionView: View {
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
    @Binding var sports: [Sport]
    @Binding var num: Int
    @Binding var cat: Category
    
    @State var imageNum = 0
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 10) {
                VStack {
                    TabView(selection: $imageNum) {
                        if cat == .craft {
                            ForEach(0..<crafts[num].image.count) { imageNumber in
                                Image(crafts[num].image[imageNumber])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                            }
                        }
                        
                        if cat == .sport {
                            ForEach(0..<sports[num].image.count) { imageNumber in
                                Image(sports[num].image[imageNumber])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                            }
                        }
                        
                        if cat == .place {
                            ForEach(0..<placesToGo[num].image.count) { imageNumber in
                                Image(placesToGo[num].image[imageNumber])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                .padding(10)
                .frame(height: 250)
                
                HStack {
                    Spacer()
                    ForEach(0..<placesToGo[num].image.count) { index in
                        Circle()
                            .fill(index == imageNum ? Color.gray : Color.gray.opacity(0.5))
                            .frame(width: 10, height: 10)
                    }
                    Spacer()
                }
                
                HStack {
                    Text(cat == .craft ? crafts[num].title : cat == .sport ? sports[num].title : placesToGo[num].title)
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(systemName: cat == .craft ?
                          crafts[num].isSaved ?  "bookmark.fill" : "bookmark"
                          : cat == .place ?
                          placesToGo[num].isSaved ? "bookmark.fill" : "bookmark"
                          : sports[num].isSaved ? "bookmark.fill" : "bookmark")
                    .foregroundColor(.gray)
                    .font(.title)
                    .onTapGesture {
                        if cat == .craft {
                            crafts[num].isSaved.toggle()
                        } else if cat == .sport {
                            sports[num].isSaved.toggle()
                        } else {
                            placesToGo[num].isSaved.toggle()
                        }
                    }
                }
                .padding(15)
                
                VStack (alignment: .leading) {
                    VStack(alignment:.leading) {
                        Text("Description")
                            .bold()
                        Text(cat == .craft ? crafts[num].description : cat == .sport ? sports[num].description : placesToGo[num].description)
                    }
                    .padding(10)
                    
                    if cat == .place {
                        VStack(alignment:.leading) {
                            Text("Address")
                                .bold()
                            Link((placesToGo[num].address), destination: URL(string: (placesToGo[num].mapsLink))!)
                        }
                        .padding(10)
                        VStack(alignment:.leading) {
                            Text("Opening Hours")
                                .bold()
                            Text(placesToGo[num].openingHours)
                        }
                        .padding(10)
                    } else {
                        EmptyView()
                    }
                    
                    if cat == .craft {
                        VStack(alignment: .leading) {
                            Text("Materials")
                                .bold()
                            ForEach(crafts[num].materials, id: \.self) { material in
                                Text("  - \(material)")
                            }
                        }
                        .padding(10)
                    } else {
                        EmptyView()
                    }
                    
                    if cat == .sport {
                        VStack(alignment: .leading) {
                            Text("Benefits")
                                .bold()
                            ForEach(sports[num].benefits, id: \.self) {benefit in
                                Text("  - \(benefit)")
                            }
                        }
                        .padding(10)
                        
                        VStack(alignment: .leading) {
                            Text("Equipment")
                                .bold()
                            ForEach(sports[num].equipment, id: \.self) { equipment in
                                Text("  - \(equipment)")
                            }
                        }
                        .padding(10)
                    } else {
                        EmptyView()
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Link")
                            .bold()
                        
                        Link((cat == .craft ? crafts[num].link[0] : cat == .sport ? sports[num].link[0] : placesToGo[num].link[0]), destination: URL(string: (cat == .craft ? crafts[num].link[1] : cat == .sport ? sports[num].link[1] : placesToGo[num].link[1]))!)
                        
                    }
                    .padding(10)
                    
                }
            }
        } .padding(15)
    }
}

struct ActivityDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDescriptionView(
            placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], mapsLink: "demo")]),
            crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"])]),
            sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], image: ["demo"])]),
            num: .constant(0),
            cat: .constant(Category.sport))
    }
}
