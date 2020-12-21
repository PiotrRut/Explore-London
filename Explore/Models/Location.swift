//
//  Location.swift
//  Explore
//
//  Created by Piotr Rutkowski on 20/12/2020.
//

import Foundation
import SwiftUI
import CoreLocation

struct Location: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var location: String
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    private var picture: String
    var image: Image {
        Image(picture)
    }
    
    
}
