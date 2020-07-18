// MARK: - Mocks generated from file: SurvayApp/Misc/AnyView.swift

import Cuckoo
@testable import SurvayApp

import UIKit


 class MockAnyView: AnyView, Cuckoo.ProtocolMock {
    
     typealias MocksType = AnyView
    
     typealias Stubbing = __StubbingProxy_AnyView
     typealias Verification = __VerificationProxy_AnyView

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: AnyView?

     func enableDefaultImplementation(_ stub: AnyView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var view: UIView {
        get {
            return cuckoo_manager.getter("view",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.view)
        }
        
    }
    

    

    

	 struct __StubbingProxy_AnyView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var view: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockAnyView, UIView> {
	        return .init(manager: cuckoo_manager, name: "view")
	    }
	    
	    
	}

	 struct __VerificationProxy_AnyView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var view: Cuckoo.VerifyReadOnlyProperty<UIView> {
	        return .init(manager: cuckoo_manager, name: "view", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class AnyViewStub: AnyView {
    
    
     var view: UIView {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView).self)
        }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: SurvayApp/Misc/Routers.swift

import Cuckoo
@testable import SurvayApp

import UIKit


 class MockRouterProtocol: RouterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = RouterProtocol
    
     typealias Stubbing = __StubbingProxy_RouterProtocol
     typealias Verification = __VerificationProxy_RouterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RouterProtocol?

     func enableDefaultImplementation(_ stub: RouterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var sourceViewController: UIViewController? {
        get {
            return cuckoo_manager.getter("sourceViewController",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.sourceViewController)
        }
        
        set {
            cuckoo_manager.setter("sourceViewController",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.sourceViewController = newValue)
        }
        
    }
    
    
    
     var closeCompletion: VoidHandler? {
        get {
            return cuckoo_manager.getter("closeCompletion",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.closeCompletion)
        }
        
        set {
            cuckoo_manager.setter("closeCompletion",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.closeCompletion = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_RouterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var sourceViewController: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockRouterProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "sourceViewController")
	    }
	    
	    
	    var closeCompletion: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockRouterProtocol, VoidHandler> {
	        return .init(manager: cuckoo_manager, name: "closeCompletion")
	    }
	    
	    
	}

	 struct __VerificationProxy_RouterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var sourceViewController: Cuckoo.VerifyOptionalProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "sourceViewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var closeCompletion: Cuckoo.VerifyOptionalProperty<VoidHandler> {
	        return .init(manager: cuckoo_manager, name: "closeCompletion", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class RouterProtocolStub: RouterProtocol {
    
    
     var sourceViewController: UIViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController?).self)
        }
        
        set { }
        
    }
    
    
     var closeCompletion: VoidHandler? {
        get {
            return DefaultValueRegistry.defaultValue(for: (VoidHandler?).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayDetail/SurvayDetailInteractor.swift

import Cuckoo
@testable import SurvayApp


 class MockSurvayDetailInteractorProtocol: SurvayDetailInteractorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SurvayDetailInteractorProtocol
    
     typealias Stubbing = __StubbingProxy_SurvayDetailInteractorProtocol
     typealias Verification = __VerificationProxy_SurvayDetailInteractorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SurvayDetailInteractorProtocol?

     func enableDefaultImplementation(_ stub: SurvayDetailInteractorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

	 struct __StubbingProxy_SurvayDetailInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	 struct __VerificationProxy_SurvayDetailInteractorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}
}

 class SurvayDetailInteractorProtocolStub: SurvayDetailInteractorProtocol {
    

    

    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayDetail/SurvayDetailRouter.swift

import Cuckoo
@testable import SurvayApp

import UIKit


 class MockSurvayDetailRouterProtocol: SurvayDetailRouterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SurvayDetailRouterProtocol
    
     typealias Stubbing = __StubbingProxy_SurvayDetailRouterProtocol
     typealias Verification = __VerificationProxy_SurvayDetailRouterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SurvayDetailRouterProtocol?

     func enableDefaultImplementation(_ stub: SurvayDetailRouterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var sourceViewController: UIViewController? {
        get {
            return cuckoo_manager.getter("sourceViewController",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.sourceViewController)
        }
        
        set {
            cuckoo_manager.setter("sourceViewController",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.sourceViewController = newValue)
        }
        
    }
    
    
    
     var closeCompletion: VoidHandler? {
        get {
            return cuckoo_manager.getter("closeCompletion",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.closeCompletion)
        }
        
        set {
            cuckoo_manager.setter("closeCompletion",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.closeCompletion = newValue)
        }
        
    }
    

    

    

	 struct __StubbingProxy_SurvayDetailRouterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var sourceViewController: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayDetailRouterProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "sourceViewController")
	    }
	    
	    
	    var closeCompletion: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayDetailRouterProtocol, VoidHandler> {
	        return .init(manager: cuckoo_manager, name: "closeCompletion")
	    }
	    
	    
	}

	 struct __VerificationProxy_SurvayDetailRouterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var sourceViewController: Cuckoo.VerifyOptionalProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "sourceViewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var closeCompletion: Cuckoo.VerifyOptionalProperty<VoidHandler> {
	        return .init(manager: cuckoo_manager, name: "closeCompletion", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}
}

 class SurvayDetailRouterProtocolStub: SurvayDetailRouterProtocol {
    
    
     var sourceViewController: UIViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController?).self)
        }
        
        set { }
        
    }
    
    
     var closeCompletion: VoidHandler? {
        get {
            return DefaultValueRegistry.defaultValue(for: (VoidHandler?).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayDetail/SurvayDetailView.swift

import Cuckoo
@testable import SurvayApp

import UIKit


 class MockSurvayDetailViewProtocol: SurvayDetailViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SurvayDetailViewProtocol
    
     typealias Stubbing = __StubbingProxy_SurvayDetailViewProtocol
     typealias Verification = __VerificationProxy_SurvayDetailViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SurvayDetailViewProtocol?

     func enableDefaultImplementation(_ stub: SurvayDetailViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var presenter: SurvayDetailPresenterProtocol? {
        get {
            return cuckoo_manager.getter("presenter",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.presenter)
        }
        
        set {
            cuckoo_manager.setter("presenter",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.presenter = newValue)
        }
        
    }
    
    
    
     var view: UIView {
        get {
            return cuckoo_manager.getter("view",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.view)
        }
        
    }
    

    

    
    
    
     func presentModel(model: SurvayModel)  {
        
    return cuckoo_manager.call("presentModel(model: SurvayModel)",
            parameters: (model),
            escapingParameters: (model),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentModel(model: model))
        
    }
    

	 struct __StubbingProxy_SurvayDetailViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayDetailViewProtocol, SurvayDetailPresenterProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var view: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSurvayDetailViewProtocol, UIView> {
	        return .init(manager: cuckoo_manager, name: "view")
	    }
	    
	    
	    func presentModel<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SurvayModel)> where M1.MatchedType == SurvayModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SurvayModel)>] = [wrap(matchable: model) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSurvayDetailViewProtocol.self, method: "presentModel(model: SurvayModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SurvayDetailViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<SurvayDetailPresenterProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var view: Cuckoo.VerifyReadOnlyProperty<UIView> {
	        return .init(manager: cuckoo_manager, name: "view", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func presentModel<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.__DoNotUse<(SurvayModel), Void> where M1.MatchedType == SurvayModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SurvayModel)>] = [wrap(matchable: model) { $0 }]
	        return cuckoo_manager.verify("presentModel(model: SurvayModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SurvayDetailViewProtocolStub: SurvayDetailViewProtocol {
    
    
     var presenter: SurvayDetailPresenterProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SurvayDetailPresenterProtocol?).self)
        }
        
        set { }
        
    }
    
    
     var view: UIView {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView).self)
        }
        
    }
    

    

    
     func presentModel(model: SurvayModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayList/SurvayListInteractor.swift

import Cuckoo
@testable import SurvayApp

import Foundation


 class MockSurvayListInteractorProtocol: SurvayListInteractorProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SurvayListInteractorProtocol
    
     typealias Stubbing = __StubbingProxy_SurvayListInteractorProtocol
     typealias Verification = __VerificationProxy_SurvayListInteractorProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SurvayListInteractorProtocol?

     func enableDefaultImplementation(_ stub: SurvayListInteractorProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var httpClient: HTTPClientProtocol? {
        get {
            return cuckoo_manager.getter("httpClient",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.httpClient)
        }
        
        set {
            cuckoo_manager.setter("httpClient",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.httpClient = newValue)
        }
        
    }
    

    

    
    
    
     func fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void)  {
        
    return cuckoo_manager.call("fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchAuthToken(completion: completion))
        
    }
    
    
    
     func fetchSurvays(_ completion: @escaping ([SurvayModel]?) -> Void)  {
        
    return cuckoo_manager.call("fetchSurvays(_: @escaping ([SurvayModel]?) -> Void)",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchSurvays(completion))
        
    }
    

	 struct __StubbingProxy_SurvayListInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var httpClient: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayListInteractorProtocol, HTTPClientProtocol> {
	        return .init(manager: cuckoo_manager, name: "httpClient")
	    }
	    
	    
	    func fetchAuthToken<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((AuthenticationModel?) -> Void)> where M1.MatchedType == (AuthenticationModel?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((AuthenticationModel?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSurvayListInteractorProtocol.self, method: "fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func fetchSurvays<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(([SurvayModel]?) -> Void)> where M1.MatchedType == ([SurvayModel]?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([SurvayModel]?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSurvayListInteractorProtocol.self, method: "fetchSurvays(_: @escaping ([SurvayModel]?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SurvayListInteractorProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var httpClient: Cuckoo.VerifyOptionalProperty<HTTPClientProtocol> {
	        return .init(manager: cuckoo_manager, name: "httpClient", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func fetchAuthToken<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<((AuthenticationModel?) -> Void), Void> where M1.MatchedType == (AuthenticationModel?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((AuthenticationModel?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchSurvays<M1: Cuckoo.Matchable>(_ completion: M1) -> Cuckoo.__DoNotUse<(([SurvayModel]?) -> Void), Void> where M1.MatchedType == ([SurvayModel]?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([SurvayModel]?) -> Void)>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("fetchSurvays(_: @escaping ([SurvayModel]?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SurvayListInteractorProtocolStub: SurvayListInteractorProtocol {
    
    
     var httpClient: HTTPClientProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (HTTPClientProtocol?).self)
        }
        
        set { }
        
    }
    

    

    
     func fetchAuthToken(completion: @escaping (AuthenticationModel?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func fetchSurvays(_ completion: @escaping ([SurvayModel]?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayList/SurvayListRouter.swift

import Cuckoo
@testable import SurvayApp

import MBProgressHUD
import UIKit


 class MockSurvayListRouterProtocol: SurvayListRouterProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SurvayListRouterProtocol
    
     typealias Stubbing = __StubbingProxy_SurvayListRouterProtocol
     typealias Verification = __VerificationProxy_SurvayListRouterProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SurvayListRouterProtocol?

     func enableDefaultImplementation(_ stub: SurvayListRouterProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var sourceViewController: UIViewController? {
        get {
            return cuckoo_manager.getter("sourceViewController",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.sourceViewController)
        }
        
        set {
            cuckoo_manager.setter("sourceViewController",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.sourceViewController = newValue)
        }
        
    }
    
    
    
     var closeCompletion: VoidHandler? {
        get {
            return cuckoo_manager.getter("closeCompletion",
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.closeCompletion)
        }
        
        set {
            cuckoo_manager.setter("closeCompletion",
                value: newValue,
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    ,
                defaultCall: __defaultImplStub!.closeCompletion = newValue)
        }
        
    }
    

    

    
    
    
     func handleLoader(shouldShow: Bool)  {
        
    return cuckoo_manager.call("handleLoader(shouldShow: Bool)",
            parameters: (shouldShow),
            escapingParameters: (shouldShow),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.handleLoader(shouldShow: shouldShow))
        
    }
    
    
    
     func openSurvayDetails(_ survayModel: SurvayModel)  {
        
    return cuckoo_manager.call("openSurvayDetails(_: SurvayModel)",
            parameters: (survayModel),
            escapingParameters: (survayModel),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.openSurvayDetails(survayModel))
        
    }
    

	 struct __StubbingProxy_SurvayListRouterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var sourceViewController: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayListRouterProtocol, UIViewController> {
	        return .init(manager: cuckoo_manager, name: "sourceViewController")
	    }
	    
	    
	    var closeCompletion: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayListRouterProtocol, VoidHandler> {
	        return .init(manager: cuckoo_manager, name: "closeCompletion")
	    }
	    
	    
	    func handleLoader<M1: Cuckoo.Matchable>(shouldShow: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: shouldShow) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSurvayListRouterProtocol.self, method: "handleLoader(shouldShow: Bool)", parameterMatchers: matchers))
	    }
	    
	    func openSurvayDetails<M1: Cuckoo.Matchable>(_ survayModel: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SurvayModel)> where M1.MatchedType == SurvayModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SurvayModel)>] = [wrap(matchable: survayModel) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSurvayListRouterProtocol.self, method: "openSurvayDetails(_: SurvayModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SurvayListRouterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var sourceViewController: Cuckoo.VerifyOptionalProperty<UIViewController> {
	        return .init(manager: cuckoo_manager, name: "sourceViewController", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var closeCompletion: Cuckoo.VerifyOptionalProperty<VoidHandler> {
	        return .init(manager: cuckoo_manager, name: "closeCompletion", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func handleLoader<M1: Cuckoo.Matchable>(shouldShow: M1) -> Cuckoo.__DoNotUse<(Bool), Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: shouldShow) { $0 }]
	        return cuckoo_manager.verify("handleLoader(shouldShow: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func openSurvayDetails<M1: Cuckoo.Matchable>(_ survayModel: M1) -> Cuckoo.__DoNotUse<(SurvayModel), Void> where M1.MatchedType == SurvayModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SurvayModel)>] = [wrap(matchable: survayModel) { $0 }]
	        return cuckoo_manager.verify("openSurvayDetails(_: SurvayModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SurvayListRouterProtocolStub: SurvayListRouterProtocol {
    
    
     var sourceViewController: UIViewController? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIViewController?).self)
        }
        
        set { }
        
    }
    
    
     var closeCompletion: VoidHandler? {
        get {
            return DefaultValueRegistry.defaultValue(for: (VoidHandler?).self)
        }
        
        set { }
        
    }
    

    

    
     func handleLoader(shouldShow: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func openSurvayDetails(_ survayModel: SurvayModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

