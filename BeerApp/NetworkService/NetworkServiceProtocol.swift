//
//  NetworkServiceProtocol.swift
//  BeerApp
//
//  Created by Никита on 16.10.2023.
//

import Foundation

protocol NetworkService {
    func request<Request: DataRequest>(_ request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void)
}
