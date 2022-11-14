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
            VStack(spacing: 10) {
                
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
                    Image("Screenshot 2022-11-05 at 10.26.16 AM")
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(placesToGo: .constant([Place(title: "Demo", description: "demo", address: "demo", openingHours: "demo", link: "demo")]),
                 crafts: .constant([Craft(title: "demo", description: "demo", materials: "demo", link: "demo")]),
                 sports: .constant([Sport(title: "demo", description: "demo", benefits: "demo", equipment: "demo", link: "demo")]))
    }
}
