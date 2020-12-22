//
//  MapView.swift
//  Explore
//
//  Created by Piotr Rutkowski on 21/12/2020.
//

import SwiftUI
import MapKit

struct Pin: Identifiable {
    var coordinate: CLLocationCoordinate2D
    var img: Image
    let id = UUID()
}

struct MapView: View {
    var coordinateRegion: MKCoordinateRegion = {
        // Location of Charing Cross
        var newRegion = MKCoordinateRegion()
        newRegion.center.latitude = 51.5073
        newRegion.center.longitude = -0.12755
        newRegion.span.latitudeDelta = 0.2
        newRegion.span.longitudeDelta = 0.2
        return newRegion
    }()
    
    private let annotations: [Pin] = locations.map { Pin(coordinate: $0.locationCoordinate, img: $0.image)}
    
    
    var body: some View {
        Map(coordinateRegion: .constant(coordinateRegion), annotationItems: annotations) { annotation in
            MapAnnotation(coordinate: annotation.coordinate) {
                annotation.img
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 35)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 3))
                    .shadow(radius: 10)
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

