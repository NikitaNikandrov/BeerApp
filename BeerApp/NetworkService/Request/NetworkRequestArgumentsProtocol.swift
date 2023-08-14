//
//  NetworkRequestArgumentsProtocol.swift
//  BeerApp
//
//  Created by Никита on 14.08.2023.
//

import Foundation

enum HTTPMethod {
    case getMethod
    case postMethod
}

protocol NetworkRequestArgumentsProtocol {
    var endPointString: String { get }
    var path: String? { get }
    var httpMethod: HTTPMethod { get }
    var queryItems: [URLQueryItem]? { get }
    var body: [String: Any]? { get }
}
