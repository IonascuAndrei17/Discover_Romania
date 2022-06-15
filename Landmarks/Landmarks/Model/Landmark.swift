//
//  Landmark.swift
//  Landmarks
//
//  Created by Andy Ionascu on 30.01.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var region: String
    var state: String
    var description: String
    var isFeatured: Bool

    var category: Category
    enum Category: String, CaseIterable, Codable{
        case transilvania = "Transilvania"
        case bucovina = "Bucovina"
        case dobrogea = "Dobrogea"
        case muntenia = "Muntenia"
        case oltenia = "Oltenia"
        case banat = "Banat"
        case crisana = "Crisana"
        case moldova = "Moldova"
        case maramures = "Maramures"
    }
    

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

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
}
