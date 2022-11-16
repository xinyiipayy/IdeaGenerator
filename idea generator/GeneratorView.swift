//
//  GeneratorView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI
struct GeneratorView: View {
    
    @State var isSheetPresented = false
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
    @Binding var sports: [Sport]
    @Binding var cat: Category
    
    @State var num = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            Button {
                isSheetPresented = true
                num = 0
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 80)
                        .cornerRadius(10)
                    //.foregroundColor(Color("lightBlue"))
                        .foregroundColor(Color(cat == .craft ? "lightYellow" : cat == .place ? "lightRed" : "lightBlue"))
                        .opacity(0.5)
                    
                    Text(cat == .craft ? crafts[0].title : cat == .place ? placesToGo[0].title : sports[0].title)
                        .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .place ? "darkRed" : "darkBlue"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
            }
            
            Button {
                isSheetPresented = true
                num = 1
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 80)
                        .cornerRadius(10)
                        .foregroundColor(Color(cat == .craft ? "lightYellow" : cat == .place ? "lightRed" : "lightBlue"))
                        .opacity(0.5)
                    
                    Text(cat == .craft ? crafts[1].title : cat == .place ? placesToGo[1].title : sports[1].title)
                        .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .place ? "darkRed" : "darkBlue"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
                
            }
            
            Button {
                isSheetPresented = true
                num = 2
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 80)
                        .cornerRadius(10)
                        .foregroundColor(Color(cat == .craft ? "lightYellow" : cat == .place ? "lightRed" : "lightBlue"))
                        .opacity(0.5)
                    
                    Text(cat == .craft ? crafts[2].title : cat == .place ? placesToGo[2].title : sports[2].title)
                        .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .place ? "darkRed" : "darkBlue"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
            }
            
            Spacer()
            
            Button {
                placesToGo = placesToGo.shuffled()
                crafts = crafts.shuffled()
                sports = sports.shuffled()
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 180, height: 50)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: 0, y: 2)
                    
                    HStack {
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(Color("darkYellow"))
                        Text("Reshuffle")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Color("darkYellow"))
                    }
                }
            }
            
            Spacer()
        }
        .navigationTitle(cat == .craft ? "Arts & Craft" : cat == .sport ? "Sports" : "Places to Go")
        .sheet(isPresented: $isSheetPresented) {
            ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat)
        }
    }
    
    
}


struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView(placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], mapsLink: "demo")]),
                      crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"])]),
                      sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], image: ["demo"])]),
                      cat: .constant(Category.place))
    }
}

