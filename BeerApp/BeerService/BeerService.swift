//
//  BeerRquest.swift
//  BeerApp
//
//  Created by Никита on 17.08.2023.
//

import Foundation

class BeerService {
    
    private let networkRequest = NetworkRequestImpl()
    private let networkService = NetworkServiceImpl()
    
    func getBeer<T: Codable>(with arguments: NetworkRequestProtocol, for recieveModel: T.Type) async -> T? {
        var request: URLRequest
        var responseData: T?
        
        do {
            request = try networkRequest.createNetworkRequest(with: arguments as! NetworkRequestArgumentsProtocol)
            
            let (data, response) = try await networkService.sendRequest(with: request)
            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    
                    guard let jsonData = try? jsonDecoder.decode(recieveModel, from: data) else { return nil }
                    responseData = jsonData
                }
            }
            return responseData
        } catch {
            return nil
        }
    }
}
