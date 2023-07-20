//
//  GetBeer.swift
//  BeerApp
//
//  Created by Никита on 20.07.2023.
//

import Foundation

class GetBeer {
    func getBeer() -> ResponseResult <BeerApiNetworkServiceProtocol> {
        
        let requestService = BeerApiNetworkService()
        let createBeerRequest = CreateBeerRequest()
        
        let beerRequest = createBeerRequest.createGetBeerRequest()
        
        requestService.sendRequestToAPI(request: beerRequest) { [weak self] requestResult in
            switch requestResult {
                case let .sucsess(sucsessResult):
                    return sucsessResult
                case let .error(code, message):
                    return .error(code, message)
            }
        }
    }
    
    func getBeer(parameters: [String: String]) -> ResponseResult <BeerApiNetworkServiceProtocol> {
        
        let requestService = BeerApiNetworkService()
        let createBeerRequest = CreateBeerRequest()
        
        let beerRequest = createBeerRequest.createGetBeerRequest(parameters: parameters)
        
        requestService.sendRequestToAPI(request: beerRequest) { [weak self] requestResult in
            switch requestResult {
                case let .sucsess(sucsessResult):
                    return sucsessResult
                case let .error(code, message):
                    return .error(code, message)
            }
        }
    }
}
