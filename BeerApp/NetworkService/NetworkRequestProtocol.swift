//
//  NetworkRequestProtocol.swift
//  BeerApp
//
//  Created by Никита on 09.08.2023.
//

import Foundation

protocol NetworkRequestProtocol {
    func createNetworkRequest<T: Encodable>(urlString: String,
                                             additionalURLStrings: [String]?,
                                             method: String,
                                             body: T) throws -> URLRequest
}
