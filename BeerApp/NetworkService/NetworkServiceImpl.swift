//
//  NetworkServiceProtocol.swift
//  BeerApp
//
//  Created by Никита on 10.08.2023.
//

import Foundation

class NetworkServiceImpl: NetworkServiceProtocol {
    func sendRequest(with request: URLRequest) async throws -> (data: Data?, response: URLResponse?) {
            let (data, response) = try await URLSession.shared.data(for: request)
            return (data, response)
        }
}
