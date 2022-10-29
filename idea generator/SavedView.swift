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
         }*/
        //        Text("")
        VStack {
            HStack {
                Text("Arts & Craft")
                    .bold()
                    .padding()
                    .font(.headline)
                
                Spacer()
            }
            
            ForEach(savedPlacesToGo) { savedPlaceToGo in
                Text(savedPlaceToGo.title)
                    .padding()
                    .frame(width: 350, height: 55)
                    .background(Color(red: 255/255, green: 250/255, blue: 200/255))
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 200/255, green: 140/255, blue: 50/255))
            }
            
            HStack {
                Text("Sports")
                    .bold()
                    .padding()
                    .font(.headline)
                
                Spacer()
            }
            
            ForEach(savedPlacesToGo) { savedPlaceToGo in
                Text(savedPlaceToGo.title)
                    .padding()
                    .frame(width: 350, height: 55)
                    .background(Color(red: 200/255, green: 240/255, blue: 255/255))
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 40/255, green: 100/255, blue: 250/255))
            }
            
            HStack {
                Text("Places to Go")
                    .bold()
                    .padding()
                    .font(.headline)
                
                Spacer()
            }
            
            ForEach(savedPlacesToGo) { savedPlaceToGo in
                Text(savedPlaceToGo.title)
                    .padding()
                    .frame(width: 350, height: 55)
                    .background(Color(red: 230/255, green: 180/255, blue: 170/255))
                    .cornerRadius(10)
                    .foregroundColor(Color(red: 160/255, green: 80/255, blue: 60/255))
            }
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
