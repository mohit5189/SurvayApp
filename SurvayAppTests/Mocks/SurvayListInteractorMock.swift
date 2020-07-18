//
//  SurvayListInteractorMock.swift
//  SurvayAppTests
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation
@testable import SurvayApp

class SurvayListInteractorMock: SurvayListInteractorProtocol {
    var httpClient: HTTPClientProtocol?
    
    func fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void) {
        if let filePath = Bundle.main.path(forResource: "authToken", ofType: "json"), let data = NSData(contentsOfFile: filePath) {
            do {
                let decoder = JSONDecoder()
                let authModel = try decoder.decode(AuthenticationModel.self, from: data as Data)
                completion(authModel)
            } catch _ {
                completion(nil)
            }
        }
    }
    
    func fetchSurvays(_ completion: @escaping ([SurvayModel]?) -> Void) {
        if let filePath = Bundle.main.path(forResource: "SurvayList", ofType: "json"), let data = NSData(contentsOfFile: filePath) {
            do {
                let decoder = JSONDecoder()
                let survayModelArray = try decoder.decode([SurvayModel].self, from: data as Data)
                completion(survayModelArray)
            } catch _ {
                completion(nil)
            }
        }
    }
}
