//
//  SavedView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct SavedView: View {
    
    var savedPlacesToGo = $placesToGo.filter { $0.isSaved == true}
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
