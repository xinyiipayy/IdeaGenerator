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
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("Arts & Craft")
                            .bold()
                            .padding()
                            .font(.headline)
                        
                        Spacer()
                    }
                    
                    ForEach(crafts) { craft in
                        if craft.isSaved == true {
                            NavigationLink(destination: ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat).onAppear {
                                cat = .craft
                                num = 0
                                while crafts[num].title != craft.title {
                                    num += 1
                                }
                            })
                            {
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
                        //num += 1
                    }
                    
                    HStack {
                        Text("Sports")
                            .bold()
                            .padding()
                            .font(.headline)
                        
                        Spacer()
                    }
                    
                    ForEach(sports) { sport in
                        if sport.isSaved == true {
                            
                            NavigationLink (destination:
                                            ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat).onAppear {
                                cat = .sport
                                num = 0
                                while sports[num].title != sport.title {
                                    num += 1 
                                }
                            })
                            {
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
                    
                    HStack {
                        Text("Places to Go")
                            .bold()
                            .padding()
                            .font(.headline)
                        
                        Spacer()
                    }
                    
                    ForEach(placesToGo) { placeToGo in
                        
                        if placeToGo.isSaved == true {
                            NavigationLink(destination:
                                            ActivityDescriptionView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, num: $num, cat: $cat).onAppear {
                                cat = .place
                                num = 0
                                while placesToGo[num].title != placeToGo.title {
                                    num += 1
                                }
                            })
                            {
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
                    
                    Spacer()
                }
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
