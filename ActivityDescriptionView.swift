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
    @State var imageNum2 = 1
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Button {
                        if imageNum != 0 {
                            imageNum = imageNum - 1
                        } else {
                            if cat == .craft {
                                imageNum = crafts[num].image.count - 1
                            } else if cat == .sport {
                                imageNum = sports[num].image.count - 1
                            } else if cat == .place {
                                imageNum = placesToGo[num].image.count - 1
                            }
                        }
                    } label: {
                        Image(systemName: "lessthan.circle.fill")
                            .foregroundColor(.gray)
                            .font(.title)
                            .opacity(0.75)
                    }
                    Image(cat == .craft ? crafts[num].image[imageNum] : cat == .sport ? sports[num].image[imageNum] : placesToGo[num].image[imageNum])
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    Button {
                        imageNum2 = imageNum + 1
                        if imageNum2 < crafts[num].image.count && cat == .craft{
                            imageNum += 1
                        } else if imageNum2 < sports[num].image.count && cat == .sport {
                            imageNum += 1
                        } else if imageNum2 < placesToGo[num].image.count && cat == .place {
                            imageNum += 1
                        } else {
                            imageNum = 0
                        }
                    } label: {
                        Image(systemName: "lessthan.circle.fill")
                            .foregroundColor(.gray)
                            .font(.title)
                            .opacity(0.75)
                            .rotationEffect(Angle.degrees(180))
                    }
                }
                .padding(10)
                
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
                    
                } .padding(10)
                
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
                            Text(placesToGo[num].address)
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
                                Text("- \(material)")
                            }
                        }
                        .padding(10)
                    } else {
                        EmptyView()
                    }
                    
                    if cat == .sport {
                        VStack(alignment: .leading) {
                            Text("Equipment")
                                .bold()
                            ForEach(sports[num].equipment, id: \.self) { equipment in
                                Text("- \(equipment)")
                            }
                        }
                        .padding(10)
                        VStack(alignment: .leading) {
                            Text("Benefits")
                                .bold()
                            ForEach(sports[num].benefits, id: \.self) {benefit in
                                Text("- \(benefit)")
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
            } .padding(15)
        }
    }
}

struct ActivityDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDescriptionView(
            placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: ["demo"], image: ["demo"])]),
            crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"])]),
            sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], image: ["demo"])]),
            num: .constant(0),
            cat: .constant(Category.sport))
    }
}
