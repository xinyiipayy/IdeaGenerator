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
    
    @State var showCrafts = true
    @State var showSports = true
    @State var showPlaces = true
    @State var search = ""
    @State var displaySearch = false
    
    @FocusState var isTextFieldEditing: Bool    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack (alignment: .leading) {
                    ZStack {
                        TextField("Search saved ideas", text: $search)
                            .textInputAutocapitalization(.words)
                            .padding(10)
                            .focused($isTextFieldEditing, equals: true)
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .stroke(.gray, lineWidth: 1)
                            .background(.clear)
                            .frame(height: 40)
                        HStack {
                            Spacer()
                            if displaySearch == true {
                                Image(systemName: "xmark.circle")
                                    .foregroundColor(.gray)
                                    .onTapGesture {
                                        displaySearch = false
                                        search = ""
                                        isTextFieldEditing = false
                                    }
                            } else {
                                EmptyView()
                            }
                            Image(systemName: "magnifyingglass")
                                .padding(10)
                                .opacity(0.5)
                        }
                    }
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        displaySearch = true
                        isTextFieldEditing = true
                    }
                    
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
                            if crafts.filter { displaySearch ? $0.isSaved && $0.title.contains(search) : $0.isSaved }.count == 0 {
                                Text("No Saved Ideas")
                                    .foregroundColor(.gray)
                                    .padding(5)
                            } else if showCrafts == true {
                                ForEach(crafts) { craft in
                                    if craft.isSaved == true && displaySearch == false {
                                        Button {
                                            cat = .craft
                                            num = 0
                                            while crafts[num].title != craft.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            ZStack {
                                                Rectangle()
                                                    .cornerRadius(10)
                                                    .frame(height: 55)
                                                    .foregroundColor(Color("lightYellow"))
                                                Text(craft.title)
                                                    .bold()
                                                    .foregroundColor(Color("darkYellow"))
                                            }
                                        }
                                    } else if craft.isSaved == true && displaySearch == true && craft.title.contains(search) {
                                        Button {
                                            cat = .craft
                                            num = 0
                                            while crafts[num].title != craft.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            ZStack {
                                                Rectangle()
                                                    .cornerRadius(10)
                                                    .frame(height: 55)
                                                    .foregroundColor(Color("lightYellow"))
                                                Text(craft.title)
                                                    .bold()
                                                    .foregroundColor(Color("darkYellow"))
                                            }
                                        }
                                    } else {
                                        EmptyView()
                                    }
                                }
                            }
                        } else {
                            EmptyView()
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
                            if sports.filter { displaySearch ? $0.isSaved && $0.title.contains(search) : $0.isSaved }.count == 0 {
                                Text("No Saved Ideas")
                                    .foregroundColor(.gray)
                                    .padding(5)
                            } else {
                                ForEach(sports) { sport in
                                    if sport.isSaved == true && displaySearch == false {
                                        Button {
                                            cat = .sport
                                            num = 0
                                            while sports[num].title != sport.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            ZStack {
                                                Rectangle()
                                                    .cornerRadius(10)
                                                    .frame(height: 55)
                                                    .foregroundColor(Color("lightBlue"))
                                                Text(sport.title)
                                                    .bold()
                                                    .foregroundColor(Color("darkBlue"))
                                            }
                                        }
                                    } else if sport.isSaved == true && displaySearch == true && sport.title.contains(search) == true {
                                        Button {
                                            cat = .sport
                                            num = 0
                                            while sports[num].title != sport.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            ZStack {
                                                Rectangle()
                                                    .cornerRadius(10)
                                                    .frame(height: 55)
                                                    .foregroundColor(Color("lightBlue"))
                                                Text(sport.title)
                                                    .bold()
                                                    .foregroundColor(Color("darkBlue"))
                                            }
                                        }
                                    } else {
                                        EmptyView()
                                    }
                                }
                            }
                        } else {
                            EmptyView()
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
                            if placesToGo.filter { displaySearch ? $0.isSaved && $0.title.contains(search) : $0.isSaved }.count == 0 {
                                Text("No Saved Ideas")
                                    .foregroundColor(.gray)
                                    .padding(5)
                            } else {
                                ForEach(placesToGo) { placeToGo in
                                    if placeToGo.isSaved == true && displaySearch == false {
                                        Button {
                                            cat = .place
                                            num = 0
                                            while placesToGo[num].title != placeToGo.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            ZStack {
                                                Rectangle()
                                                    .cornerRadius(10)
                                                    .frame(height: 55)
                                                    .foregroundColor(Color("lightRed"))
                                                Text(placeToGo.title)
                                                    .bold()
                                                    .foregroundColor(Color("darkRed"))
                                            }
                                        }
                                        
                                    } else if placeToGo.isSaved == true && displaySearch == true && placeToGo.title.contains(search) {
                                        Button {
                                            cat = .place
                                            num = 0
                                            while placesToGo[num].title != placeToGo.title {
                                                num += 1
                                            }
                                            isSheetShown = true
                                        } label: {
                                            ZStack {
                                                Rectangle()
                                                    .cornerRadius(10)
                                                    .frame(height: 55)
                                                    .foregroundColor(Color("lightRed"))
                                                Text(placeToGo.title)
                                                    .bold()
                                                    .foregroundColor(Color("darkRed"))
                                            }
                                        }
                                    } else {
                                        EmptyView()
                                    }
                                }
                            }
                        }
                        else {
                            EmptyView()
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
            .onTapGesture {
                isTextFieldEditing = false
                displaySearch = false
                search = ""
            }
            .navigationTitle("Saved Ideas")
        }
    }
    
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: [""])]),
                  crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: [""])]),
                  sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], suggestedPlace: ["demo"], image: ["demo"], notes: [""])]))
    }
}
