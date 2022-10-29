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
                        .padding()
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .cornerRadius(10)
                        
                }
//                .padding()
                
                Button {
                    isSheetPresented = true
                    num = 1
                    
                } label: {
                    Text(placesToGo[1].title)
                        .padding()
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .cornerRadius(10)
                }
                .padding()
                
                Button {
                    isSheetPresented = true
                    num = 2
                    
                } label: {
                    Text(placesToGo[2].title)
                        .padding()
                        .frame(width: 350, height: 60)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .cornerRadius(10)
                }
//                .padding()
                
                Button {
                    
                    placesToGo = placesToGo.shuffled()
                    print(placesToGo)
                    
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
