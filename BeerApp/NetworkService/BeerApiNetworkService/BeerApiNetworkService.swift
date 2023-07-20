//
//  NetworkService.swift
//  BeerApp
//
//  Created by Никита on 10.07.2023.
//

import Foundation

final class BeerApiNetworkService {
    
    func sendRequestToAPI(request:URLRequest, closure: @escaping((ResponseResult <BeerApiNetworkServiceProtocol>) -> Void)) {
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            guard error == nil else { return }
            if let httpResponse = response as? HTTPURLResponse {
                switch httpResponse.statusCode {
                case 200:
                    do {
                        var responseResult: BeerApiNetworkServiceProtocol
                        // decode JSON
                        closure(.sucsess(responseResult))
                    } catch let error { print(error) }

                default:
                    closure(.error(400, "server error"))
                }
            }
        }.resume()
    }
}
