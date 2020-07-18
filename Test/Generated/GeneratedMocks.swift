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


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayList/SurvayListInteractor.swift

import Cuckoo
@testable import SurvayApp


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
    

    

    

    

	 struct __StubbingProxy_SurvayListInteractorProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
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
	
	    
	
	    
	}
}

 class SurvayListInteractorProtocolStub: SurvayListInteractorProtocol {
    

    

    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayList/SurvayListRouter.swift

import Cuckoo
@testable import SurvayApp

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
    

    

    
}


// MARK: - Mocks generated from file: SurvayApp/Modules/SurvayList/SurvayListView.swift

import Cuckoo
@testable import SurvayApp

import UIKit


 class MockSurvayListViewProtocol: SurvayListViewProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = SurvayListViewProtocol
    
     typealias Stubbing = __StubbingProxy_SurvayListViewProtocol
     typealias Verification = __VerificationProxy_SurvayListViewProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: SurvayListViewProtocol?

     func enableDefaultImplementation(_ stub: SurvayListViewProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
     var presenter: SurvayListPresenterProtocol? {
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
    

    

    
    
    
     func presentModel(model: SurvayListModel)  {
        
    return cuckoo_manager.call("presentModel(model: SurvayListModel)",
            parameters: (model),
            escapingParameters: (model),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.presentModel(model: model))
        
    }
    

	 struct __StubbingProxy_SurvayListViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    var presenter: Cuckoo.ProtocolToBeStubbedOptionalProperty<MockSurvayListViewProtocol, SurvayListPresenterProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    var view: Cuckoo.ProtocolToBeStubbedReadOnlyProperty<MockSurvayListViewProtocol, UIView> {
	        return .init(manager: cuckoo_manager, name: "view")
	    }
	    
	    
	    func presentModel<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(SurvayListModel)> where M1.MatchedType == SurvayListModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SurvayListModel)>] = [wrap(matchable: model) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSurvayListViewProtocol.self, method: "presentModel(model: SurvayListModel)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SurvayListViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    
	    var presenter: Cuckoo.VerifyOptionalProperty<SurvayListPresenterProtocol> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    
	    var view: Cuckoo.VerifyReadOnlyProperty<UIView> {
	        return .init(manager: cuckoo_manager, name: "view", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func presentModel<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.__DoNotUse<(SurvayListModel), Void> where M1.MatchedType == SurvayListModel {
	        let matchers: [Cuckoo.ParameterMatcher<(SurvayListModel)>] = [wrap(matchable: model) { $0 }]
	        return cuckoo_manager.verify("presentModel(model: SurvayListModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SurvayListViewProtocolStub: SurvayListViewProtocol {
    
    
     var presenter: SurvayListPresenterProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (SurvayListPresenterProtocol?).self)
        }
        
        set { }
        
    }
    
    
     var view: UIView {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIView).self)
        }
        
    }
    

    

    
     func presentModel(model: SurvayListModel)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

