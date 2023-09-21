//
//  Models.swift
//  SchedulleriOS
//
//  Created by Agnes Triselia Yudia on 21/09/23.
//

import Foundation

struct PokemonIndex: Codable {
    let results: [Pokemonn]
}

struct Pokemonn: Codable {
    var name: String
    var url: String
}
