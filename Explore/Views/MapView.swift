//
//  MapView.swift
//  Explore
//
//  Created by Piotr Rutkowski on 21/12/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    var location: Location
    
    var body: some View {
        Map()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
