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
            HStack {
                Text(cat == .craft ? crafts[num].title : cat == .sport ? sports[num].title : placesToGo[num].title)
                    .font(.title)
                    .bold()
                Spacer()
            }
            .padding(20)
            
            TextEditor(text: cat ==  .craft ? $crafts[num].notes[0] : cat == .place ? $placesToGo[num].notes[0] : $sports[num].notes[0])
                .padding(10)
            
            HStack {
                Spacer()
                Button {
                    isAlertShown = true
                } label: {
                    Text("Delete note")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .sport ? "darkBlue" : "darkRed"))
                        .padding(15)
                        .background(Color(cat == .craft ? "lightYellow" : cat == .sport ? "lightBlue" : "lightRed"))
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding(15)
            Spacer()
        }
        .padding(20)
        .alert("Are you sure you want to delete all notes attached to this idea?", isPresented: $isAlertShown) {
            Button(role: .destructive) {
                print("Delete note")
                if cat == .craft {
                    crafts[num].notes = [""]
                } else if cat == .sport {
                    sports[num].notes = [""]
                } else if cat == .place {
                    placesToGo[num].notes = [""]
                } else {
                    print("idk why but nothing is deleted")
                }
                dismiss()
            } label: {
                Text("Delete")
            }
        }
        .onDisappear {
            if cat == .craft {
                if crafts[num].notes.filter({ $0.isEmpty == false }).count != 0 {
                    crafts[num].notes = crafts[num].notes.filter { $0.isEmpty ==  false }
                } else {
                    crafts[num].notes = [""]
                }
            } else if cat == .sport {
                if sports[num].notes.filter({ $0.isEmpty == false }).count != 0 {
                    sports[num].notes = sports[num].notes.filter { $0.isEmpty ==  false }
                } else {
                    sports[num].notes = [""]
                }
            } else {
                if placesToGo[num].notes.filter({ $0.isEmpty == false }).count != 0 {
                    placesToGo[num].notes = placesToGo[num].notes.filter { $0.isEmpty ==  false }
                } else {
                    placesToGo[num].notes = [""]
                }
            }
        }
    }
}


struct NoteDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NoteDescriptionView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: [""])]),
                            crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: [""])]),
                            sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"],suggestedPlace: ["demo"], image: ["demo"], notes: [""])]),
                            num: .constant(0),
                            cat: .constant(Category.sport))
    }
}
