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
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
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
            .padding(25)
            
            VStack(alignment:.leading) {
                Text("Description")
                    .bold()
                Text(cat == .craft ? crafts[num].description : cat == .sport ? sports[num].description : placesToGo[num].description)
            }
            .padding(25)
            
            if cat == .place {
                VStack(alignment:.leading) {
                    Text("Address")
                        .bold()
                    Text(placesToGo[num].address)
                }
                .padding(25)
            } else {
                EmptyView()
            }
            
            if cat == .craft {
                VStack(alignment: .leading) {
                    Text("materials")
                        .bold()
                    Text(crafts[num].materials)
                }
            } else {
                EmptyView()
            }
            
            if cat == .sport {
                VStack(alignment: .leading) {
                    Text("Equipment")
                        .bold()
                    Text(sports[num].equipment)
                }
            } else {
                EmptyView()
            }
        }
    }
}

struct ActivityDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDescriptionView(placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: "demo")]),
                                crafts: .constant([Craft(title: "demo", description: "demo", materials: "demo", link: "demo")]),
                                sports: .constant([Sport(title: "demo", description: "demo", benefits: "demo", equipment: "demo", link: "demo")]),
                                num: .constant(0), cat: .constant(Category.sport))
    }
}
