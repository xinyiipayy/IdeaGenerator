//
//  ActivityDescriptionView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct ActivityDescriptionView: View {
    @Binding var placesToGo: [Place]
    @Binding var crafts: [Craft]
   
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(placesToGo[0].title)
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: placesToGo[0].isSaved ?  "bookmark.fill" : "bookmark")
                    .foregroundColor(.gray)
                    .font(.title)
                    .onTapGesture {
                        placesToGo[0].isSaved.toggle()
                    }
                    
            }
            .padding(25)
            
            HStack(alignment:.top) {
                Text("Description")
                Text(placesToGo[0].description)
            }
            .padding(25)
            
            HStack(alignment:.top) {
                Text("Address")
                Text(placesToGo[0].address)
            }
            .padding(25)
        }
    }
}

struct ActivityDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDescriptionView(placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: "demo")]), crafts: .constant([Craft(title: "demo", description: "demo", materials: "demo", link: "demo")]))
    }
}
