//
//  SurvaySharedManager.swift
//  SurvayApp
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation

class SurvaySharedManager {
    static let sharedInstance = SurvaySharedManager()
    private init() {}
    var authModel: AuthenticationModel?
}
