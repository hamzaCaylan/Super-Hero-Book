//
//  SuperHeroModel.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superkahraman: Identifiable {
var id = UUID()
var isim : String
var gercekIsim : String
var gorselIsmi : String
var sehir : String
var meslek : String
var koordinat : Koordinat
var koordinatLokasyonu : CLLocationCoordinate2D {
CLLocationCoordinate2D(latitude: koordinat.latitude, longitude:
koordinat.logitude)
}
}

struct Koordinat {
    var latitude : Double
    var logitude : Double
}


let batman = Superkahraman (isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi:
"batman", sehir: "Gotham", meslek: "Is Adam", koordinat: Koordinat(latitude:
                                                                    41.8713679, logitude: -87.7669902))
let superman = Superkahraman (isim: "Superman", gercekIsim: "Clark Kent", gorselIsmi:
"superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude:
                                                                        39.0865207, logitude: -94.7089592))
let spiderman = Superkahraman(isim: "Spiderman", gercekIsim: "Peter Parker",
                              gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotografçi", koordinat:
                                Koordinat(latitude: 40.7160119, logitude: -74.0524729))
let ironman = Superkahraman(isim: "Iron Man", gercekIsim: "Tony Stark", gorselIsmi:
"ironman", sehir: "Los Angelese", meslek: "is Adam", koordinat:
                                Koordinat (latitude: 33.8003309, logitude: -118.2261494))
let superKahramanDizisi = [batman, superman, spiderman,ironman]
