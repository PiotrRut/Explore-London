//
//  ContentView.swift
//  Explore
//
//  Created by Piotr Rutkowski on 20/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(locations) { location in
                NavigationLink(destination: LocationView(location: location)) {
                    ListItem(location: location)
                }
            }
            .navigationTitle("All locations")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
