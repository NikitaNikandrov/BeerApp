//
//  ParameterEncoder.swift
//  BeerApp
//
//  Created by Никита on 30.07.2023.
//

import Foundation

public typealias Parameters = [String:Any]

public protocol ParameterEncoder {
 static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

public enum NetworkError: String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFail = "Parameter encoding fail."
    case missingURL = "URL is nil."
}
