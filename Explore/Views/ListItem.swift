//
//  ListItem.swift
//  Explore
//
//  Created by Piotr Rutkowski on 20/12/2020.
//

import SwiftUI

struct ListItem: View {
    var location: Location

    var body: some View {
        HStack {
            location.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(location.name)
            Spacer()
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(location: locations[0])
    }
}
