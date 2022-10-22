//
//  HomeView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 10) {
                               
                NavigationLink(destination: GeneratorView()) {
                    Image("Screenshot 2022-10-22 at 10.44.00 AM")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                }
                
                NavigationLink(destination: GeneratorView()) {
                    Image("Screenshot 2022-10-22 at 10.48.41 AM")
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                }
                
                NavigationLink(destination: GeneratorView()) {
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
        HomeView()
    }
}
