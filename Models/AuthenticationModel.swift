//
//  AuthenticationModel.swift
//  SurvayApp
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation

struct AuthenticationModel: Codable {
    var accessToken: String
    var tokenType: String
    var expiresIn: Int
    var createdAt: Date
    
    private enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case createdAt = "created_at"
    }
}
