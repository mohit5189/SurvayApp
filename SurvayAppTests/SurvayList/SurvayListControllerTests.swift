//
//  SurvayListControllerTests.swift
//  SurvayAppTests
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import SurvayApp

class SurvayListControllerTests: QuickSpec {
    private var interactor: SurvayListInteractorProtocol = SurvayListInteractorMock()
    override func spec() {
        describe("SurvayListController") {
            context("when fetch auth token ") {
                it("should give auth model") {
                    self.interactor.fetchAuthToken { tokenModel in
                        expect(tokenModel).notTo(beNil())
                    }
                }
            }
            
            context("when fetch Survay List ") {
                it("should give survay Array") {
                    self.interactor.fetchSurvays { survays in
                        expect(survays).notTo(beNil())
                        expect(survays!.count > 0).to(beTrue())
                    }
                }
            }
        }
    }
}
