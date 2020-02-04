//
//  BoxResponse.swift
//  FavoriteView
//
//  Created by brakni amine on 31/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import Foundation
// MARK: - Box
struct Box: Codable, Identifiable {
    var id = UUID()
    
    let images: [String]
    let name: String
    let country: Country
    let city: City
    let adresse: String
    let tarif: Double
    let tel: String
    let category: Category
    let isFavorite, isFeatured: Bool
    let coordinates: [Coordinate]

    enum CodingKeys: String, CodingKey {
        case images, name, country, city, adresse, tarif, tel
        case category, isFavorite, isFeatured, coordinates
    }
}

enum City: String, Codable, CaseIterable {
    case londres = "Londres"
}
enum Category: String, Codable, Hashable, CaseIterable{
    case lieuHistorique = "Lieu historique"
    case musee          = "Musée"
    case parc           = "Parc"
    case placePublic    = "Place publique"
    case cinema         = "Cinéma"
    case histoire       = "Histoire"
    case croisiere      = "Croisière"
    case sport          = "Sport"
    case musique        = "Music"
    case banquet        = "Banquet"
    case home           = "Home"
}
// MARK: - Coordinate
struct Coordinate: Codable {
    let latitude, longitude: Double
}

enum Country: String, Codable {
    case angleterre = "Angleterre"
    case royaumeUni = "Royaume Uni"
}

typealias Empty = [Box]
