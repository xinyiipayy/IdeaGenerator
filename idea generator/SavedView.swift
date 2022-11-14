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
                            ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, num: $num)
                        } label: {
                            Text(placeToGo.title)
                                .padding()
                                .frame(width: 350, height: 55)
                                .background(Color("lightYellow"))
                                .cornerRadius(10)
                                .foregroundColor(Color("darkYellow"))
                        }
                        
                    } else {
                        EmptyView()
                    }
                    //num += 1
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
                            ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, num: $num)
                        } label: {
                            Text(placeToGo.title)
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
                            ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, num: $num)
                        } label: {
                            Text(placeToGo.title)
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
                
                Spacer()
            }
            .padding()
            .navigationTitle("Saved ideas")
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView(placesToGo: .constant([Place (title: "demo", description: "demo", address: "demp", openingHours: "demo", link: "demo")]), crafts: .constant([Craft(title: "demo", description: "demo", materials: "demo", link: "demo")]), sports: .constant([Sport(title: "demo", description: "demo", benefits: "demo", equipment: "demo", link: "demo")]))
    }
}
