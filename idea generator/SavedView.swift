//
//  SavedView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct SavedView: View {
    
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
    @Binding var sports: [Sport]
    
    @State var num = 0
    @State var cat: Category = .place
    @State var isSheetShown = false
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Text("Saved Ideas")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                
                VStack {
                    HStack {
                        Text("Arts & Craft")
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    if crafts.filter { $0.isSaved }.count == 0 {
                        Text("There are no saved ideas for this category.")
                            .foregroundColor(.gray)
                            .padding(5)
                    } else {
                        ForEach(crafts) { craft in
                            if craft.isSaved == true {
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
                        Text("Sports")
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    if sports.filter { $0.isSaved }.count == 0 {
                        Text("There are no saved ideas for this category.")
                            .foregroundColor(.gray)
                            .padding(5)
                    } else {
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
                        Text("Places to Go")
                            .bold()
                            .font(.headline)
                        Spacer()
                    }
                    if placesToGo.filter { $0.isSaved }.count == 0 {
                        Text("There are no saved ideas for this category.")
                            .foregroundColor(.gray)
                            .padding(5)
                    } else {
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
                ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat)
            }
        }
    }
    
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", openingHours: "demo", link: ["demo"], image: ["demo"], mapsLink: "demo", notes: "")]),
                  crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                  sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], image: ["demo"], notes: "")]))
    }
}
