//
//  Model.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 3/4/24.
//

import Foundation

struct Pokemons: Codable {
    let pokemon: [Pokemon]
}

struct Pokemon: Codable, Identifiable {
    let id  = UUID()
    let name: String
    let type: [String]
    let imageURL : URL
    
    var types: String {
        type.formatted(.list(type: .and))
    }
    
    enum CodingKeys: String, CodingKey {
        case name, type, imageURL
    }
}


func getPokemons() -> [Pokemon] {
    guard let url = Bundle.main.url(forResource: "pokemons", withExtension: "json") else { return [] }
    do {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(Pokemons.self, from: data).pokemon
    } catch {
        return []
    }
}
