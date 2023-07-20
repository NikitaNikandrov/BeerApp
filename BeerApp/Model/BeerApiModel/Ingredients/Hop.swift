//
//  Hop.swift
//  BeerApp
//
//  Created by Никита on 20.07.2023.
//

import Foundation

struct Hop: Codable {
    let name: String
    let amount: MeasureOfQuantity
    let add: String
    let attribute: String
}
