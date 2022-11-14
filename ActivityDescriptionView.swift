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
    @Binding var sports: [Sport]
    @Binding var num: Int
   
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(placesToGo[num].title)
                    .font(.title)
                    .bold()
                Spacer()
                Image(systemName: placesToGo[num].isSaved ?  "bookmark.fill" : "bookmark")
                    .foregroundColor(.gray)
                    .font(.title)
                    .onTapGesture {
                        placesToGo[num].isSaved.toggle()
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
        ActivityDescriptionView(placesToGo: .constant([Place(title: "demo", description: "demo", address: "demo", openingHours: "demo", link: "demo")]),
                                crafts: .constant([Craft(title: "demo", description: "demo", materials: "demo", link: "demo")]),
                                sports: .constant([Sport(title: "demo", description: "demo", benefits: "demo", equipment: "demo", link: "demo")]),
                                num: .constant(0))
    }
}
