//
//  SavedView.swift
//  idea generator
//
//  Created by T Krobot on 22/10/22.
//

import SwiftUI

struct SavedView: View {
    var body: some View {
        NavigationView {
            List {
                Section("Art & Craft") {
                    ForEach(placesToGo) { idea in
                        NavigationLink {
                            ActivityDescriptionView()
                        } label: {
                            Text(idea.title)
                        }
                    }
                }
                Section("Group Activities") {
                    ForEach(placesToGo) { idea in
                        NavigationLink {
                            ActivityDescriptionView()
                        } label: {
                            Text(idea.title)
                        }
                    }
                }
                Section("Places to Go") {
                    ForEach(placesToGo) { idea in
                        NavigationLink {
                            ActivityDescriptionView()
                        } label: {
                            Text(idea.title)
                        }
                    }
                }
            }
            .navigationTitle("Saved")
        }
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
