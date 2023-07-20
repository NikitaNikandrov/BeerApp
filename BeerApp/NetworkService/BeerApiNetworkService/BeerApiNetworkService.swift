//
//  NetworkService.swift
//  BeerApp
//
//  Created by Никита on 10.07.2023.
//

import Foundation

final class BeerApiNetworkService {
    
    func sendRequestToAPI(request:URLRequest, closure: @escaping() -> Void) { // при наличии UI добавить модель для дешифровки
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            guard error == nil else { return }
            if let httpResponse = response as? HTTPURLResponse {
                // дешифровка JSON
            }
        }.resume()
    }
}
