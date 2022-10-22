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
            VStack {
                Text("Categories")
                
                NavigationLink(destination: GeneratorView()) {
                    Text("Arts & Craft")
                }
                
                NavigationLink(destination: GeneratorView()) {
                    Text("Group Activities")
                }
                
                NavigationLink(destination: GeneratorView()) {
                    Text("Places to Go")
                }
                
            }
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
