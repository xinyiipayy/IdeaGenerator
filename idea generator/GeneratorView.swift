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
    
    var body: some View {
        VStack {
            Spacer()
            
            Button {
                isSheetPresented = true
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 80)
                        .cornerRadius(10)
                        //.foregroundColor(Color("lightBlue"))
                        .foregroundColor(Color(placesToGo[0].category == .craft ? "lightYellow" : placesToGo[1].category == .place ? "lightRed" : "lightBlue"))
                        .opacity(0.5)
                    
                    Text(placesToGo[0].title)
                        .foregroundColor(Color("darkBlue"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
            }
            
            Button {
                isSheetPresented = true
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 80)
                        .cornerRadius(10)
                        .foregroundColor(Color("lightYellow"))
                        .opacity(0.5)
                    
                    Text(placesToGo[1].title)
                        .foregroundColor(Color("darkYellow"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
                
            }
            
            Button {
                isSheetPresented = true
                
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 360, height: 80)
                        .cornerRadius(10)
                        .foregroundColor(Color("lightRed"))
                        .opacity(0.5)
                    
                    Text(placesToGo[2].title)
                        .foregroundColor(Color("darkRed"))
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                }
            }
            
            Spacer()
            
            Button {
                placesToGo = placesToGo.shuffled()
                print(placesToGo)
                
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
        .navigationTitle("Ideas for You")
        .sheet(isPresented: $isSheetPresented) {
            ActivityDescriptionView(placesToGo: $placesToGo)
        }
    }
    
    
}


struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView(placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: "Demo")]))
    }
}
