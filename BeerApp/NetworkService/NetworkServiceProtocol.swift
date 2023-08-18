//
//  NetworkServiceProtocol.swift
//  BeerApp
//
//  Created by Никита on 10.08.2023.
//

import Foundation

protocol NetworkServiceProtocol {
    func sendRequest(with request: URLRequest) async throws -> (data: Data?, response: URLResponse?)
}
