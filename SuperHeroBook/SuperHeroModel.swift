//
//  SuperHeroModel.swift
//  SuperHeroBook
//
//  Created by Hamza Caylan on 8.06.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero :Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var city : String
    var job : String
    var coordinateLocal  : CLLocationCoordinate2D{
         CLLocationCoordinate2D(latitude: coordinateLocal.latitude, longitude: coordinateLocal.longitude)
    }
    
    
}

struct Coordinate {
    var latitude : Double
    var logitude : Double
}


let batman = SuperHero(name: "Batman", image: "test", city: "Gothem", job: "test")
