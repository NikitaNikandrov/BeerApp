//
//  NetworkRequestImpl.swift
//  BeerApp
//
//  Created by Никита on 09.08.2023.
//

import Foundation

enum RequestError: Error {
    case badURL
    case badRequest
}

class NetworkRequestImpl: NetworkRequestProtocol {
    func prepareNetworkRequest(networkRequestArguments: NetworkRequestArguments) throws -> URLRequest {
        var endPoint = networkRequestArguments.url
        var request: URLRequest?
        
        switch networkRequestArguments.httpMethod {
        case .get:
            if let items = networkRequestArguments.getAdditionalString {
                for item in items {
                    endPoint.append(item)
                }
                guard let url = URL(string: endPoint) else { throw RequestError.badURL }
                request = URLRequest(url: url)
            }
            
        case .post:
            guard let url = URL(string: endPoint) else { throw RequestError.badURL }
            request = URLRequest(url: url)
            if let body = networkRequestArguments.httpBody {
                request?.httpBody = body.description.data(using: .utf8)
            }
        }
        
        if request != nil {
            request?.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request?.setValue("application/json", forHTTPHeaderField: "Accept")
            
            return request!
        } else {
            throw RequestError.badRequest
        }
    }
}
