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
    @State var isAlertShown = false
    @State var otherNum = 0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: cat ==  .craft ? $crafts[num].notes : cat == .place ? $placesToGo[num].notes : $sports[num].notes)
                .padding(.horizontal, 10)
            Spacer()
        }
        .navigationTitle(cat == .craft ? crafts[num].title : cat == .sport ? sports[num].title : placesToGo[num].title)
        .toolbar {
            ToolbarItem {
                Image(systemName: "trash")
//                    .font(.title2)
                    .foregroundColor(.blue)
                    .onTapGesture {
                        isAlertShown = true
                    }
            }
        }
        .padding(20)
        .alert("Are you sure you want to delete this note?", isPresented: $isAlertShown) {
            Button(role: .destructive) {
                print("Delete note")
                if cat == .craft {
                    crafts[num].notes = ""
                } else if cat == .sport {
                    sports[num].notes = ""
                } else if cat == .place {
                    placesToGo[num].notes = ""
                } else {
                    print("idk why but nothing is deleted")
                }
                dismiss()
            } label: {
                Text("Delete")
            }
        }
    }
}


struct NoteDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NoteDescriptionView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: "")]),
                            crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                            sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"],suggestedPlace: ["demo"], image: ["demo"], notes: "")]),
                            num: .constant(0),
                            cat: .constant(Category.sport))
    }
}
