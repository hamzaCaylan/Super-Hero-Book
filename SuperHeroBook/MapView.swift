//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var body: some View {
        @State var region = MKCoordinateRegion(center: SuperHeroDizisi[0].coordinateLocal, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
