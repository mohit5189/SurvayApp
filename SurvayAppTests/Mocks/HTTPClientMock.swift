//
//  HTTPClientMock.swift
//  SurvayAppTests
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation
@testable import SurvayApp

enum ResponseType {
    case authToken
    case survayList
    case error
}

class HTTPClientMock: HTTPClientProtocol {
    var responseType: ResponseType = .authToken
    
    init(responseType: ResponseType) {
        self.responseType = responseType
    }
    
    func sendRequest(_ requestURL: String, apiMethod: ApiType, params: [String: Any]?, completion: @escaping ((Data?, Error?) -> Void)) {
        if responseType == .authToken {
            if let filePath = Bundle.main.path(forResource: "authToken", ofType: "json"), let data = NSData(contentsOfFile: filePath) {
                completion(data as Data, nil)
                return
            }
        } else if responseType == .survayList {
            if let filePath = Bundle.main.path(forResource: "SurvayList", ofType: "json"), let data = NSData(contentsOfFile: filePath) {
                completion(data as Data, nil)
                return
            }
        }
        
        completion(nil, NSError(domain: "", code: 1, userInfo: nil))
        
    }
}
