//
//  MapView.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import SwiftUI
import MapKit

/*struct MapView: View {
    
    var body: some View {
        @State var region = MKCoordinateRegion(center: superKahramanDizisi[0].koordinatLokasyonu,
                                               span: MKCoordinateSpan(latitudeDelta: 0.35, longitudeDelta: 0.35))
        Map(coordinateRegion: $region)
    }
}*/

struct MapView: UIViewRepresentable {
    var kordinat : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView , context: Context) {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.35, longitudeDelta: 0.45)
        let region = MKCoordinateRegion(center: kordinat, span: span)
        uiView.setRegion(region, animated: true)
         
    }
    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(kordinat: superKahramanDizisi[0].koordinatLokasyonu )
    }
}
