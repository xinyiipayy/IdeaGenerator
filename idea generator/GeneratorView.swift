//
//  GeneratorView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI
struct GeneratorView: View {
    
    @State var isSheetPresented = false
    @State var num = 0
    
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    isSheetPresented = true
                    
                } label: {
                    Text(placesToGo[0].title)
                }
                
                Button {
                    isSheetPresented = true
                } label: {
                    Text(placesToGo[1].title)
                }
                
                Button {
                    isSheetPresented = true
                } label: {
                    Text(placesToGo[2].title)
                }
                
                Button {
                    placesToGo.shuffle()
                    placesToGo = placesToGo.shuffled()
                    
                    // we need to make this update the ideas
                } label: {
                    Text("reshuffle")
                    
                }
                
            }
            
        }
        .sheet(isPresented: $isSheetPresented) {
            ActivityDescriptionView()
        }
        
    }
}


struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
    }
}
