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
    
    func getBeer<T: Codable>(with arguments: NetworkRequestProtocol, for recieveModel: T) -> T {
        
        let request = networkRequest.createNetworkRequest(with: arguments)
        
        
        
    }
}
