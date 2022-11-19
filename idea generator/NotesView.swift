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
        NavigationView {
            ScrollView {
                VStack (alignment: .leading) {
                    VStack {
                        HStack {
                            Image(systemName: "triangle")
                                .rotationEffect(showCrafts ? Angle(degrees: 180) : Angle(degrees: 90))
                                .onTapGesture {
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        showCrafts.toggle()
                                    }
                                }
                            Text("Arts & Craft")
                                .bold()
                                .font(.headline)
                            Spacer()
                        }
                        
                        if showCrafts == true {
                            if crafts.filter { $0.notes != "" }.count == 0 {
                                Text("No Ideas with Notes")
                                    .foregroundColor(.gray)
                                    .padding(5)
                            } else {
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
                                            VStack (alignment: .leading) {
                                                HStack {
                                                    Text(craft.title)
                                                        .bold()
                                                        .foregroundColor(Color("darkYellow"))
                                                    Spacer()
                                                }
                                                Text("Notes: \(craft.notes)")
                                                    .foregroundColor(Color("darkYellow"))
                                                    .multilineTextAlignment(.leading)
                                                    .padding(5)
                                                    .lineLimit(2)
                                            }
                                            .padding(15)
                                            .background(Color("lightYellow"))
                                            .cornerRadius(10)
                                        }
                                    } else {
                                        EmptyView()
                                    }
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
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        showSports.toggle()
                                    }
                                }
                            Text("Sports")
                                .bold()
                                .font(.headline)
                            Spacer()
                        }
                        
                        if showSports == true {
                            if sports.filter { $0.notes != "" }.count == 0 {
                                Text("No Ideas with Notes")
                                    .foregroundColor(.gray)
                                    .padding(5)
                            } else {
                                ForEach(sports) { sport in
                                    if sport.notes != "" {
                                        Button {
                                            cat = .sport
                                            num = 0
                                            while sports[num].title != sport.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            VStack (alignment: .leading) {
                                                HStack {
                                                    Text(sport.title)
                                                        .bold()
                                                        .foregroundColor(Color("darkBlue"))
                                                    Spacer()
                                                }
                                                Text("Notes: \(sport.notes)")
                                                    .foregroundColor(Color("darkBlue"))
                                                    .multilineTextAlignment(.leading)
                                                    .padding(5)
                                                    .lineLimit(2)
                                            }
                                            .padding(15)
                                            .background(Color("lightBlue"))
                                            .cornerRadius(10)
                                        }
                                    } else {
                                        EmptyView()
                                    }
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
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        showPlaces.toggle()
                                    }
                                }
                            Text("Places to Go")
                                .bold()
                                .font(.headline)
                            Spacer()
                        }
                        if showPlaces == true {
                            if placesToGo.filter { $0.notes != "" }.count == 0 {
                                Text("No Ideas with Notes")
                                    .foregroundColor(.gray)
                                    .padding(5)
                            } else {
                                ForEach(placesToGo) { placeToGo in
                                    if placeToGo.notes != "" {
                                        Button {
                                            cat = .place
                                            num = 0
                                            while placesToGo[num].title != placeToGo.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            VStack (alignment: .leading) {
                                                HStack {
                                                    Text(placeToGo.title)
                                                        .bold()
                                                        .foregroundColor(Color("darkRed"))
                                                    Spacer()
                                                }
                                                Text("Notes: \(placeToGo.notes)")
                                                    .foregroundColor(Color("darkRed"))
                                                    .multilineTextAlignment(.leading)
                                                    .padding(5)
                                                    .lineLimit(2)
                                            }
                                            .padding(15)
                                            .background(Color("lightRed"))
                                            .cornerRadius(10)
                                        }
                                        
                                    } else {
                                        EmptyView()
                                    }
                                }
                            }
                        }
                    }
                    .padding(10)
                    
                    Spacer()
                    
                }
                .padding(10)
                .sheet(isPresented: $isSheetShown) {
                    NoteDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat)
                }
            }
            .navigationTitle("Notes")
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
