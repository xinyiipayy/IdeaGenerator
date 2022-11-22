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
                Image(systemName: "plus.circle")
                    .font(.title)
                    .padding(5)
                    .onTapGesture {
                        if cat == .craft {
                            otherNum = crafts[num].notes.count - 1
                            if crafts[num].notes[otherNum].isEmpty == false {
                                crafts[num].notes.append("")
                            }
                        } else if cat == .sport {
                            otherNum = sports[num].notes.count - 1
                            if sports[num].notes[otherNum].isEmpty == false {
                                sports[num].notes.append("")
                            }
                        } else {
                            otherNum = placesToGo[num].notes.count - 1
                            if placesToGo[num].notes[otherNum].isEmpty == false {
                                placesToGo[num].notes.append("")
                            }
                        }
                    }
            }
            .padding(20)
            if #available(iOS 16.0, *) {
                VStack {
                    ForEach(cat ==  .craft ? $crafts[num].notes : cat == .place ? $placesToGo[num].notes : $sports[num].notes, id: \.self) { note in
                        ZStack {
                            TextField("Add notes", text: note, axis: .vertical)
                                .padding(10)
                                .lineLimit(3)
                            RoundedRectangle(cornerRadius: 10, style: .circular)
                                .stroke(.gray, lineWidth: 1)
                                .background(.clear)
                                .frame(height: 80)
                        }
                    }
                }
            } else {
                VStack {
                    ForEach(cat ==  .craft ? $crafts[num].notes : cat == .place ? $placesToGo[num].notes : $sports[num].notes, id: \.self) { note in
                        ZStack {
                            TextField("Add notes", text: note)
                                .padding(10)
                                .border(.gray)
                            RoundedRectangle(cornerRadius: 10, style: .circular)
                                .stroke(.gray, lineWidth: 1)
                                .background(.clear)
                                .frame(height: 40)
                        }
                    }
                }
            }
            HStack {
                Spacer()
                Button {
                    isAlertShown = true
                } label: {
                    Text("Delete notes")
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
//        .alert(isPresented: $isAlertShown) {
//            Alert(title: Text("Are you sure you want to delete this note?"), primaryButton: .default(Text("Delete")){
//                print("Delete note")
//                if cat == .craft {
//                    crafts[num].notes = ""
//                } else if cat == .sport {
//                    sports[num].notes = ""
//                } else if cat == .place {
//                    placesToGo[num].notes = ""
//                } else {
//                    print("idk why but nothing is deleted")
//                }
//                dismiss()
//            }, secondaryButton: .default(Text("Cancel")) {
//                print("Don't delete note")
//            })
//
//            }
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
