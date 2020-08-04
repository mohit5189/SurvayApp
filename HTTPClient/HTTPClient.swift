//
//  HTTPClient.swift
//  SurvayApp
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation

private struct Constants {
    static let networkTimeoutInterval = 20
    static let jsonKey = "value"
}

protocol HTTPClientProtocol {
    func sendRequest(_ requestURL: String, apiMethod: ApiType, params: [String: Any]?, completion: @escaping ((Data?, Error?) -> Void))
}

extension HTTPClientProtocol {
    func sendRequest(_ requestURL: String, apiMethod: ApiType, params: [String: Any]? = nil, completion: @escaping ((Data?, Error?) -> Void)) {
        sendRequest(requestURL, apiMethod: apiMethod, params: params, completion: completion)
    }
}

enum ApiType: String {
    case GET
    case POST
}

final class HTTPClient: HTTPClientProtocol {
    func sendRequest(_ requestURL: String, apiMethod: ApiType, params: [String: Any]?, completion: @escaping ((Data?, Error?) -> Void)) {
        let request: NSMutableURLRequest = NSMutableURLRequest(url: NSURL(string: requestURL)! as URL, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: TimeInterval(Constants.networkTimeoutInterval))
        request.httpMethod = apiMethod.rawValue

        if apiMethod == .POST, let value = params?[Constants.jsonKey] as? String {
            request.httpBody = Data(value.utf8)
        }
        
        let task = URLSession.shared.dataTask(with: request as URLRequest, completionHandler: {data, _, error -> Void in
            completion(data, error)
        })

        task.resume()
    }
}
