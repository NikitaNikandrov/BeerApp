//
//  NetworkService.swift
//  BeerApp
//
//  Created by Никита on 10.07.2023.
//

import Foundation

final class NetworkService {
    func prepareRequest(request: inout URLRequest) {
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
        request.httpMethod = "POST"
    }
    
    func makeGetBeerRequest() -> URLRequest {
        let requestString = NetworkServiceStrings.rootEndpoint + NetworkServiceStrings.getBeerString
        let urlString = requestString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let requestURL = URL(string: requestString)
        
        var request = URLRequest(url: requestURL!) // мне не нравится тут форсанврап
        prepareRequest(request: &request)
        
        return request
    }
    
    func makeGetBeerWithIdRequest(id: Int) -> URLRequest {
        let requestString = NetworkServiceStrings.rootEndpoint + NetworkServiceStrings.getBeerString + "/" + String(id)
        let urlString = requestString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let requestURL = URL(string: requestString)
        
        var request = URLRequest(url: requestURL!) // мне не нравится тут форсанврап
        prepareRequest(request: &request)
        
        return request
    }
    
    func makeGetBeerRandomRequest() -> URLRequest {
        let requestString = NetworkServiceStrings.rootEndpoint + NetworkServiceStrings.getRandomBeerString
        let urlString = requestString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let requestURL = URL(string: requestString)
        
        var request = URLRequest(url: requestURL!) // мне не нравится тут форсанврап
        prepareRequest(request: &request)
        
        return request
    }
    
    func makeGetBeerWithParametersRequest(parameters: [String : String]) -> URLRequest { // можно объединить с makeGetBeerRequest() ?
        let requestString = NetworkServiceStrings.rootEndpoint + NetworkServiceStrings.getBeerString
        let urlString = requestString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let requestURL = URL(string: requestString)
        
        var request = URLRequest(url: requestURL!) // мне не нравится тут форсанврап
        prepareRequest(request: &request)
        
        let requestJSONData = try? JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        
        request.httpBody = requestJSONData
        
        return request
    }
    
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
