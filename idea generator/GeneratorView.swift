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
                Spacer()
                Button {
                    isSheetPresented = true
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 80)
                            .cornerRadius(10)
                            .foregroundColor(.init(red: 0.95, green: 0.827, blue: 0.533))
                            .opacity(0.5)
                        
                        Text(placesToGo[0].title)
                            .foregroundColor(.init(red: 0.89, green: 0.7, blue: 0.243))
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                    }
                }
                
                Button {
                    isSheetPresented = true
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 80)
                            .cornerRadius(10)
                            .foregroundColor(.init(red: 0.95, green: 0.827, blue: 0.533))
                            .opacity(0.5)
                        
                        Text(placesToGo[1].title)
                            .foregroundColor(.init(red: 0.89, green: 0.7, blue: 0.243))
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                    }
                    
                }
                
                Button {
                    isSheetPresented = true
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 360, height: 80)
                            .cornerRadius(10)
                            .foregroundColor(.init(red: 0.95, green: 0.827, blue: 0.533))
                            .opacity(0.5)
                        
                        Text(placesToGo[2].title)
                            .foregroundColor(.init(red: 0.89, green: 0.7, blue: 0.243))
                            .font(.system(size: 20, weight: .bold))
                            .padding()
                    }
                }
                
                Spacer()
                
                Button {
                    placesToGo = placesToGo.shuffled()
                    print(placesToGo)
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 180, height: 50)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                        
                        HStack {
                            Image(systemName: "arrow.clockwise")
                                .foregroundColor(.init(red: 215/255, green: 192/255, blue: 174/255))
                            Text("Reshuffle")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(.init(red: 215/255, green: 192/255, blue: 174/255))
                        }
                    }
                }
                
                Spacer()
            }
            .navigationTitle("Ideas for You")
            
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
