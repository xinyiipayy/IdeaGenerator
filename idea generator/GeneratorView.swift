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
    
    @State var animationAngle: Double = 0
    @State var animationOpacity: Double = 1
    @State var size: CGFloat = 1
    @State var animationOffset1: CGFloat = 0
    @State var animationOffset2: CGFloat = 0
    @State var animationOffset3: CGFloat = 0
    
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
                        .foregroundColor(Color(cat == .craft ? "lightYellow" : cat == .place ? "lightRed" : "lightBlue"))
                        .opacity(0.5)
                    
                    Text(cat == .craft ? crafts[0].title : cat == .place ? placesToGo[0].title : sports[0].title)
                        .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .place ? "darkRed" : "darkBlue"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
//                .rotation3DEffect(Angle(degrees: animationAngle), axis: (x: 1, y: 1, z: 1))
//                .opacity(animationOpacity)
//                .scaleEffect(size)
                .offset(x: 0, y: animationOffset1)
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
//                .rotation3DEffect(Angle(degrees: animationAngle), axis: (x: 1, y: 1, z: 1))
//                .opacity(animationOpacity)
//                .scaleEffect(size)
//                .offset(x: 0, y: animationOffset2)
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
//                .rotation3DEffect(Angle(degrees: animationAngle), axis: (x: 1, y: 1, z: 1))
//                .opacity(animationOpacity)
//                .scaleEffect(size)
                .offset(x: 0, y: animationOffset3)
            }
            
            Spacer()
            
            Button {
                placesToGo = placesToGo.shuffled()
                crafts = crafts.shuffled()
                sports = sports.shuffled()
                withAnimation(.easeInOut(duration: 1)) {
                    size = 0.2
                }
                withAnimation(.easeOut(duration: 2)) {
                    animationOpacity = 0.0
                }
                withAnimation(.easeOut(duration: 2)) {
                    animationOffset1 = 300
                    animationOffset3 = -300
                }
//                withAnimation(.easeIn(duration: 5).delay(5)) {
//                    animationOffset1 = 1000
//                    animationOffset2 = 1000
//                    animationOffset3 = 1000
//                }
                
                
                withAnimation(.easeInOut(duration: 1)) {
                    animationAngle += 1.0
                    while animationAngle != 0.0 && animationAngle != 360{
                        animationAngle += 1
                    }
                }
                animationAngle = 0
                withAnimation(.easeOut(duration: 2)) {
                    animationOpacity = 1.0
                }
                withAnimation(.easeInOut(duration: 1)) {
                    size = 1
                }
                withAnimation(.easeOut(duration: 2)) {
                    animationOffset1 = 0
                    animationOffset3 = 0
                }
//                withAnimation(.easeIn(duration: 0).delay(10)) {
//                    animationOffset1 = -1000
//                    animationOffset2 = -1000
//                    animationOffset3 = -1000
//                }
//                withAnimation(.easeOut(duration: 2).delay(15)) {
//                    animationOffset1 = 0
//                    animationOffset2 = 0
//                    animationOffset3 = 0
//                }
                
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 180, height: 50)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: 0, y: 2)
                    
                    HStack {
                        Image(systemName: "arrow.clockwise")
                            .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .place ? "darkRed" : "darkBlue"))
                        Text("Reshuffle")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Color(cat == .craft ? "darkYellow" : cat == .place ? "darkRed" : "darkBlue"))
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
        GeneratorView(placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: "")]),
                      crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                      sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                      cat: .constant(Category.place))
    }
}

