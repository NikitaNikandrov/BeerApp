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
    func createNetworkRequest<T: Encodable>(urlString: String,
                                             additionalURLStrings: [String]?,
                                             method: String,
                                             body: T) throws -> URLRequest {
        var endPoint = urlString
        
        if let strings = additionalURLStrings {
            for string in strings {
                endPoint.append(string)
            }
        }
        
        guard let endPointURL = URL(string: endPoint) else { throw RequestError.badURL }
        
        var request = URLRequest(url: endPointURL)
        request.httpMethod = method
            
            do {
                let jsonData = try JSONEncoder().encode(body)
                request.httpBody = jsonData
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            } catch {
                throw RequestError.badRequest
            }
            
            return request
    }
}
