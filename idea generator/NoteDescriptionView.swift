//
//  NoteDescriptionView.swift
//  idea generator
//
//  Created by Kai Qi on 18/11/22.
//

import SwiftUI

struct NoteDescriptionView: View {
    
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
    @Binding var sports: [Sport]
    
    @Binding var num: Int
    @Binding var cat: Category
    
    var body: some View {
        if cat == .craft {
            Text(crafts[num].notes)
        } else if cat == .sport {
            Text(sports[num].notes)
        } else {
            Text(placesToGo[num].notes)
        }
    }
}

struct NoteDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NoteDescriptionView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: "")]),
                            crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                            sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                            num: .constant(0),
                            cat: .constant(Category.sport))
    }
}
