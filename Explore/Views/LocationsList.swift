//
//  LocationsList.swift
//  Explore
//
//  Created by Piotr Rutkowski on 21/12/2020.
//

import SwiftUI

struct LocationsList: View {
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

struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        LocationsList()
    }
}
