//
//  CreateRequestWithParameters.swift
//  BeerApp
//
//  Created by Никита on 20.07.2023.
//

import Foundation

class CreateBeerRequest {
    
    func createGetBeerRequest(parameters: [String : String]) -> URLRequest {
        
        let requestString = NetworkServiceStrings.rootEndpoint + NetworkServiceStrings.getBeerString
        var requestURL = URLComponents(string: requestString)
        
        var queryItems: [URLQueryItem] = []
        
        for element in parameters {
            let item = URLQueryItem(name: element.0, value: element.1)
            queryItems.append(item)
        }
        
        requestURL?.queryItems = queryItems
        
        var request = URLRequest(url: (requestURL?.url)!) // допустим ли force unwrap ?
        request.httpMethod = "GET"
        
        return request
    }
    
    func createGetBeerRequest() -> URLRequest {
        
        let requestString = NetworkServiceStrings.rootEndpoint + NetworkServiceStrings.getBeerString + NetworkServiceStrings.getRandomBeerString
        let requestURL = URL(string: requestString)
        
        var request = URLRequest(url: requestURL!) // допустим ли force unwrap ?
        request.httpMethod = "GET"
        
        return request
    }
}
