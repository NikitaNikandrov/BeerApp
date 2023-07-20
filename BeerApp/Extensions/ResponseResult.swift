//
//  ResponseResult.swift
//  BeerApp
//
//  Created by Никита on 20.07.2023.
//

import Foundation

enum ResponseResult<T> {
    case sucsess(T)
    case error(Int, String)
}
