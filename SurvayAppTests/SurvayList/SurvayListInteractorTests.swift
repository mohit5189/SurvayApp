//
//  SurvayListInteractorTests.swift
//  SurvayAppTests
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import Foundation

import Foundation
import Quick
import Nimble
@testable import SurvayApp

class SurvayListInteractorTests: QuickSpec {
    private var interactor: SurvayListInteractorProtocol = SurvayListInteractor(httpClient: HTTPClientMock(responseType: .authToken))
    override func spec() {
        
        describe("SurvayListInteractor") {
            context("when fetch auth token ") {
                context("and server give error") {
                    beforeEach {
                        self.interactor = SurvayListInteractor(httpClient: HTTPClientMock(responseType: .error))
                    }
                    
                    it("should not give model") {
                        self.interactor.fetchAuthToken { (model) in
                            expect(model).to(beNil())
                        }
                    }
                }
                
                context("and when server give model") {
                    beforeEach {
                        self.interactor = SurvayListInteractor(httpClient: HTTPClientMock(responseType: .authToken))
                    }
                    
                    it("should give model") {
                        self.interactor.fetchAuthToken { (model) in
                            expect(model).toNot(beNil())
                            expect(model!.accessToken.isEmpty).toNot(beTrue())
                        }
                    }
                }
            }
            
            context("when fetch survay list") {
                context("and server give error") {
                    beforeEach {
                        self.interactor = SurvayListInteractor(httpClient: HTTPClientMock(responseType: .error))
                    }
                    
                    it("should not give model") {
                        self.interactor.fetchSurvays { (model) in
                            expect(model).to(beNil())
                        }
                    }
                }
                
                context("and when server give model") {
                    beforeEach {
                        self.interactor = SurvayListInteractor(httpClient: HTTPClientMock(responseType: .survayList))
                    }
                    
                    it("should give model") {
                        self.interactor.fetchSurvays { (model) in
                            expect(model).toNot(beNil())
                            expect(model!.count == 2).to(beTrue())
                        }
                    }
                }
            }
        }
    }
}
