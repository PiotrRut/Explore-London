//
//  LocationView.swift
//  Explore
//
//  Created by Piotr Rutkowski on 20/12/2020.
//

import SwiftUI
import MapKit

// Detailed view for each location
struct LocationView: View {
    var location: Location
    
    
    var body: some View {
        ZStack {
            Background()
            ScrollView {
                VStack(alignment: .leading) {
                    InfoHeader(location: location)
                    Divider()
                    Text("Description")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.bottom)
                    Text(location.description)
                    
                }
                .padding()
                Button("Directions") {
                    let destination = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: location.locationCoordinate.latitude, longitude: location.locationCoordinate.longitude)))
                    destination.name = location.name
                    
                    MKMapItem.openMaps(with: [destination])
                }
                .frame(width: 340, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
                .padding(.bottom)
            }
            .navigationBarTitle(location.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(location: locations[1])
            .preferredColorScheme(.dark)
        LocationView(location: locations[1])
            .preferredColorScheme(.light)
    }
}

// Header displaying location image and info
struct InfoHeader: View {
    var location: Location
    
    var body: some View {
        HStack {
            location.image
                .resizable()
                .clipShape(Circle())
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .frame(width: 100, height: 100)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title)
                    .bold()
                Text(location.location)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct Background: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [colorScheme == .dark ? .black : .white, Color("landmarkBlue")]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.bottom)
    }
}
