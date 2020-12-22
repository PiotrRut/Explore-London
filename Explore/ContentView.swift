//
//  ContentView.swift
//  Explore
//
//  Created by Piotr Rutkowski on 20/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LocationsList()
                .tabItem {
                    Label("Location list", systemImage: "list.dash")
                }
            MapView()
                .tabItem {
                    Label("Map view", systemImage: "map.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
