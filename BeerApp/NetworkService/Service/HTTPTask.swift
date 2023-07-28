//
//  HTTPTask.swift
//  BeerApp
//
//  Created by Никита on 22.07.2023.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, headers: Parameters?)
}
