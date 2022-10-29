//
//  ActivityDescriptionView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ActivityDescriptionView: View {
    var num = 0 // need to figure out how to transfer the num in generatorView to here
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text(placesToGo[num].title)
                    .font(.title)
                    .bold()
                Spacer()
                Button {
                    placesToGo[num].isSaved.toggle() //doesnt work
                } label: {
                    Image(systemName: placesToGo[num].isSaved ?  "bookmark.fill" : "bookmark")
                        .foregroundColor(.gray)
                        .font(.title)
                }
            }
            .padding(25)
            
            HStack(alignment:.top) {
                Text("Description")
                Text(placesToGo[num].description)
            }
            .padding(25)
            
            HStack(alignment:.top) {
                Text("Address")
                Text(placesToGo[num].address)
            }
            .padding(25)
        }
    }
}

struct ActivityDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDescriptionView()
    }
}
