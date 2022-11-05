//
//  SavedView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct SavedView: View {
    var savedPlacesToGo = placesToGo.filter { $0.isSaved == true}
    var body: some View {
        /*NavigationView {
            List {
                Section("Art & Craft") {
                    ForEach(placesToGo.filter { $0.isSaved == true}) { idea in
                        NavigationLink {
                            ActivityDescriptionView()
                        } label: {
                            Text(idea.title)
                        }
                    }
                }
                .foregroundColor(.yellow)
                Section("Group Activities") {
                    ForEach(placesToGo.filter { $0.isSaved == true}) { idea in
                        NavigationLink {
                            ActivityDescriptionView()
                        } label: {
                            Text(idea.title)
                        }
                    }
                }
                .foregroundColor(.blue)
                ZStack {
                    //                    Color(red: 227/255, green: 179/255, blue: 62/255)
                    VStack {
                        Section("**Places to Go**") {
                            ForEach(placesToGo.filter { $0.isSaved == true}) { idea in
                                NavigationLink {
                                    ActivityDescriptionView()
                                } label: {
                                    Text(idea.title)
                                }
                            }
                        }
                        .foregroundColor(Color(red: 182/255, green: 102/255, blue: 83/255))
                        //                        .background(.red)
                    }
                }
                
            }
            .navigationTitle("Saved")
        } */
        //        Text("")
        NavigationView {
            VStack {
                HStack {
                    Text("Arts & Craft")
                        .bold()
                        .padding()
                        .font(.headline)
                    
                    Spacer()
                }
                
                ForEach(savedPlacesToGo) { savedPlaceToGo in
                    NavigationLink {
                        ActivityDescriptionView()
                    } label: {
                        Text(savedPlaceToGo.title)
                        .padding()
                        .frame(width: 350, height: 55)
                        .background(Color("lightYellow"))
                        .cornerRadius(10)
                        .foregroundColor(Color("darkYellow"))
                    }
                }
                
                HStack {
                    Text("Sports")
                        .bold()
                        .padding()
                        .font(.headline)
                    
                    Spacer()
                }
                
                ForEach(savedPlacesToGo) { savedPlaceToGo in
                    NavigationLink {
                        ActivityDescriptionView()
                    } label: {
                        Text(savedPlaceToGo.title)
                            .padding()
                            .frame(width: 350, height: 55)
                            .background(Color("lightBlue"))
                            .cornerRadius(10)
                            .foregroundColor(Color("darkBlue"))
                    }
                }
                
                HStack {
                    Text("Places to Go")
                        .bold()
                        .padding()
                        .font(.headline)
                    
                    Spacer()
                }
                
                ForEach(savedPlacesToGo) { savedPlaceToGo in
                    NavigationLink {
                        ActivityDescriptionView()
                    } label: {
                        Text(savedPlaceToGo.title)
                            .padding()
                            .frame(width: 350, height: 55)
                            .background(Color("lightRed"))
                            .cornerRadius(10)
                            .foregroundColor(Color("darkRed"))
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
        SavedView()
    }
}
