//
//  NetworkRequestImpl.swift
//  BeerApp
//
//  Created by Никита on 09.08.2023.
//

import Foundation

class NetworkRequestImpl: NetworkRequestProtocol {
    func createNetworkRequest(with arguments: NetworkRequestArgumentsProtocol) throws -> URLRequest {
        var endpointURL = URL(string: arguments.endPointString)!
        
        if let path = arguments.path {
            endpointURL.append(path: path)
        }
        
        if let items = arguments.queryItems {
            endpointURL.append(queryItems: items)
        }
        
        var request = URLRequest(url: endpointURL)
        
        switch arguments.httpMethod {
        case .getMethod:
            request.httpMethod = "GET"
        case .postMethod:
            request.httpMethod = "POST"
            if let body = arguments.body{
                let jsonData = try? JSONSerialization.data(withJSONObject: body)
                request.httpBody = jsonData
            }
        }
        
        request.setValue("application/json; charset=utf-8",forHTTPHeaderField: "Content-Type")
        request.setValue("application/json; charset=utf-8",forHTTPHeaderField: "Accept")
        
        return request
    }
}
