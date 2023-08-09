//
//  NetworkRequestArguments.swift
//  BeerApp
//
//  Created by Никита on 09.08.2023.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

struct NetworkRequestArguments {
    var url: String
    var httpMethod: HTTPMethod
    
    var getAdditionalString: [String]?
    var httpBody: [String: Any]?
    
    init(url: String, httpMethod: HTTPMethod, getAdditionalString: [String]? = nil, httpBody: [String : Any]? = nil) {
        self.url = url
        self.httpMethod = httpMethod
        self.getAdditionalString = getAdditionalString
        self.httpBody = httpBody
    }
}
