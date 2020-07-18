//
//  Localization.swift
//  SurvayApp
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation

enum Localization: String {
    case screenTitle = "survay_title"
    case survayButtonTitle = "survay_button_title"
    case survayDetailTitle = "survay_detail_title"
    case errorMessage = "error_message"
    case okButtonTitle = "ok_button_title"
    
    func local() -> String {
        return NSLocalizedString(self.rawValue, comment: "")
    }
}
