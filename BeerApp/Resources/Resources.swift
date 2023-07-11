//
//Resources.swift
//  BeerApp
//
//  Created by Никита on 10.07.2023.
//

import Foundation

enum NetworkServiceStrings {
    static var rootEndpoint = "https://api.punkapi.com/v2/"
    static var getBeerString = "beers"
    static var getRandomBeerString = "random"
}

enum NetworkServiceParameters {
    static var abvGreater = "abv_gt"
    static var abvLess = "abv_lt"
    static var ibuGreater = "ibu_gt"
    static var ibuLess = "ibu_lt"
    static var ebcGreater = "ebc_gt"
    static var ebcLess = "ebc_lt"
    static var beerName = "beer_name"
    static var yeast = "yeast"
    static var brewedBefore = "brewed_before"
    static var brewedAfter = "brewed_after"
    static var hops = "hops"
    static var malt = "malt"
    static var food = "food"
    static var ids = "ids"
}
