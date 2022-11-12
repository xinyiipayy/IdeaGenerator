//
//  SavedView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct SavedView: View {
    
    @Binding var placesToGo: [Place]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Arts & Craft")
                        .bold()
                        .padding()
                        .font(.headline)
                    
                    Spacer()
                }
                
                ForEach(placesToGo) { placeToGo in
                    if placeToGo.isSaved == true {
                        NavigationLink {
                            ActivityDescriptionView(placesToGo: $placesToGo)
                        } label: {
                            Text(placeToGo.title)
                                .padding()
                                .frame(width: 350, height: 55)
                                .background(Color("lightYellow"))
                                .cornerRadius(10)
                                .foregroundColor(Color("darkYellow"))
                        }
                    }
                }
                
                HStack {
                    Text("Sports")
                        .bold()
                        .padding()
                        .font(.headline)
                    
                    Spacer()
                }
                
                ForEach(placesToGo) { placeToGo in
                    if placeToGo.isSaved == true {
                        NavigationLink {
                            ActivityDescriptionView(placesToGo: $placesToGo)
                        } label: {
                            Text(placeToGo.title)
                                .padding()
                                .frame(width: 350, height: 55)
                                .background(Color("lightBlue"))
                                .cornerRadius(10)
                                .foregroundColor(Color("darkBlue"))
                        }
                    }
                }
                HStack {
                    Text("Places to Go")
                        .bold()
                        .padding()
                        .font(.headline)
                    
                    Spacer()
                }
                
                ForEach(placesToGo) { placeToGo in
                    if placeToGo.isSaved == true {
                        NavigationLink {
                            ActivityDescriptionView(placesToGo: $placesToGo)
                        } label: {
                            Text(placeToGo.title)
                                .padding()
                                .frame(width: 350, height: 55)
                                .background(Color("lightRed"))
                                .cornerRadius(10)
                                .foregroundColor(Color("darkRed"))
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Saved ideas")
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", openingHours: "demo", link: "demo")]))
    }
}
