//
//  NotesView.swift
//  idea generator
//
//  Created by Kai Qi on 18/11/22.
//

import SwiftUI

struct NotesView: View {
    
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
    @Binding var sports: [Sport]
    
    @State var num = 0
    @State var cat: Category = .place
    @State var isSheetShown = false
    
    
    @State var showCrafts = true
    @State var showSports = true
    @State var showPlaces = true
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Text("Notes")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                
                VStack {
                    HStack {
                        Image(systemName: "triangle")
                            .rotationEffect(showCrafts ? Angle(degrees: 180) : Angle(degrees: 90))
                            .onTapGesture {
                                withAnimation {
                                    showCrafts.toggle()
                                }
                            }
                        Text("Arts & Craft")
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    
                    if showCrafts == true {
                        ForEach(crafts) { craft in
                            if craft.notes != "" {
                                Button {
                                    cat = .craft
                                    num = 0
                                    while crafts[num].title != craft.title {
                                        num += 1
                                    }
                                    isSheetShown = true
                                } label: {
                                    Text(craft.title)
                                        .bold()
                                        .padding()
                                        .frame(width: 350, height: 55)
                                        .background(Color("lightYellow"))
                                        .cornerRadius(10)
                                        .foregroundColor(Color("darkYellow"))
                                }
                            } else {
                                EmptyView()
                            }
                        }
                    }
                    
                }
                .padding(10)
                
                VStack {
                    HStack {
                        Image(systemName: "triangle")
                            .rotationEffect(showSports ? Angle(degrees: 180) : Angle(degrees: 90))
                            .onTapGesture {
                                withAnimation {
                                    showSports.toggle()
                                }
                            }
                        Text("Sports")
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    if showSports == true {
                        ForEach(sports) { sport in
                            if sport.isSaved == true {
                                Button {
                                    cat = .sport
                                    num = 0
                                    while sports[num].title != sport.title {
                                        num += 1
                                    }
                                    isSheetShown = true
                                } label: {
                                    Text(sport.title)
                                        .bold()
                                        .padding()
                                        .frame(width: 350, height: 55)
                                        .background(Color("lightBlue"))
                                        .cornerRadius(10)
                                        .foregroundColor(Color("darkBlue"))
                                }
                            } else {
                                EmptyView()
                            }
                        }
                    }
                }
                .padding(10)
                
                VStack {
                    HStack {
                        Image(systemName: "triangle")
                            .rotationEffect(showPlaces ? Angle(degrees: 180) : Angle(degrees: 90))
                            .onTapGesture {
                                withAnimation {
                                    showPlaces.toggle()
                                }
                            }
                        Text("Places to Go")
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    if showPlaces == true {
                        ForEach(placesToGo) { placeToGo in
                            if placeToGo.isSaved == true {
                                Button {
                                    cat = .place
                                    num = 0
                                    while placesToGo[num].title != placeToGo.title {
                                        num += 1
                                    }
                                    isSheetShown = true
                                } label: {
                                    Text(placeToGo.title)
                                        .bold()
                                        .padding()
                                        .frame(width: 350, height: 55)
                                        .background(Color("lightRed"))
                                        .cornerRadius(10)
                                        .foregroundColor(Color("darkRed"))
                                }
                                
                            } else {
                                EmptyView()
                            }
                        }
                    }
                }
                .padding(10)
                
                Spacer()
                
            }
            .padding()
            .sheet(isPresented: $isSheetShown) {
                NoteDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat)
            }
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: "")]),
                  crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                  sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"],suggestedPlace: ["demo"], image: ["demo"], notes: "")]))
    }
}
