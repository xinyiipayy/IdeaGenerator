//
//  GeneratorView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI
struct GeneratorView: View {
    
    @State var isSheetPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    isSheetPresented = true
                } label: {
                    Text("activity 1")
                }
                
                Button {
                    isSheetPresented = true
                } label: {
                    Text("activity 2")
                }
                
                Button {
                    isSheetPresented = true
                } label: {
                    Text("activity 3")
                }
                
                Button {
                    print("..")
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
