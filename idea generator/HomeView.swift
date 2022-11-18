//
//  HomeView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
    @Binding var sports: [Sport]
    @State var cat: Category = .sport
    @State var moveToNewView = false
    
    var body: some View {
        NavigationView{
            
            ScrollView {
                VStack() {
                    // arts and craft
                    NavigationLink(destination: GeneratorView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, cat: $cat).onAppear {
                        cat = .craft
                    } ){
                        Image("Screenshot 2022-10-22 at 10.44.00 AM")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                    }
                    
                    // sports
                    NavigationLink(destination: GeneratorView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, cat: $cat).onAppear {
                        cat = .sport
                    } ) {
                        Image("Screenshot 2022-11-16 at 8.41.56 AM")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                    }
                    // places
                    NavigationLink(destination: GeneratorView(placesToGo: $placesToGo, crafts: $crafts, sports: $sports, cat: $cat).onAppear {
                        cat = .place
                    } ) {
                        Image("Screenshot 2022-10-22 at 10.50.02 AM")
                            .resizable()
                            .scaledToFit()
                            .padding(10)
                    }
                    
                    
                    Spacer(minLength: 75)
                }
                .navigationTitle("Categories")
                
            }
            
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(placesToGo: .constant([Place(title: "Demo", description: "demo", address: "demo", mapsLink: "demo", openingHours: "demo", link: ["demo"], image: ["demo"], notes: "")]),
                 crafts: .constant([Craft(title: "demo", description: "demo", materials: ["demo"], link: ["demo"], image: ["demo"], notes: "")]),
                 sports: .constant([Sport(title: "demo", description: "demo", benefits: ["demo"], equipment: ["demo"], link: ["demo"], suggestedPlace: ["demo"], image: ["demo"], notes: "")]))
    }
}
