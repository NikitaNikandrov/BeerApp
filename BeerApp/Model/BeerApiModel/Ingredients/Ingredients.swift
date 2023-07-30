//
//  Ingredients.swift
//  BeerApp
//
//  Created by Никита on 20.07.2023.
//

import Foundation

struct Ingredients: Codable {
    let malt: [Malt]
    let hops: [Hop]
    let yeast: String
}
