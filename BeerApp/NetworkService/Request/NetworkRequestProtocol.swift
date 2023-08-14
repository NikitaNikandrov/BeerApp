//
//  NetworkRequestProtocol.swift
//  BeerApp
//
//  Created by Никита on 09.08.2023.
//

import Foundation

protocol NetworkRequestProtocol {
    func createNetworkRequest(with arguments: NetworkRequestArgumentsProtocol) throws -> URLRequest
}
