//
//  JSONParameterEncoder.swift
//  BeerApp
//
//  Created by Никита on 23.07.2023.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
            if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
                urlRequest.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
            }
        } catch {
            throw NetworkError.encodingFail
        }
    }
}
