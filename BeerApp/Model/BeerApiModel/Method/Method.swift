//
//  Method.swift
//  BeerApp
//
//  Created by Никита on 20.07.2023.
//

import Foundation

struct Method: Codable {
    let mashTemp: [MashTemp]
    let fermentation: Fermentation
    let twist: String?

    enum CodingKeys: String, CodingKey {
        case mashTemp = "mash_temp"
        case fermentation
        case twist
    }
}
