import XCTest
import Swinject
import Cuckoo
@testable import SurvayApp

final class SurvayDetailAssemblyTest: XCTestCase {
    func testSurvayDetailDIAssembly() {
        // Given DependencyManager is setup to create Assembler with `SurvayDetailDIAssembly`
        // When App Assembly set up a dependency
        let sharedResolver = DependencyManager.shared.resolver

        // Then: the container should be able to resolve classes in SurvayDetail Module
        let moduleAssembly = sharedResolver.resolve(SurvayDetailAssembly.self)!
        let view = sharedResolver.resolve(SurvayDetailViewProtocol.self)!
        let interactor = sharedResolver.resolve(SurvayDetailInteractorProtocol.self)!
        let router = sharedResolver.resolve(SurvayDetailRouterProtocol.self)!
        XCTAssertNotNil(moduleAssembly)
        XCTAssertTrue(view is SurvayDetailView)
        XCTAssertTrue(interactor is SurvayDetailInteractor)
        XCTAssertTrue(router is SurvayDetailRouter)
    }

    // MARK: Test creating connection between interactor, presenter & view
    func testSurvayDetailAssembly() {
        var dummyInteractor: MockSurvayDetailInteractorProtocol!
        var dummyView: MockSurvayDetailViewProtocol!
        var dummyRouter: MockSurvayDetailRouterProtocol!

        // Given an Assembly with mock dependency
        let dummyContainer = Container()
        dummyContainer.register(SurvayDetailInteractorProtocol.self) { _ in
            dummyInteractor = MockSurvayDetailInteractorProtocol()
            return dummyInteractor
        }
        dummyContainer.register(SurvayDetailViewProtocol.self) { _ in
            dummyView = MockSurvayDetailViewProtocol()
            stub(dummyView) { when($0.presenter.set(any())).thenDoNothing() }
            return dummyView
        }
        dummyContainer.register(SurvayDetailRouterProtocol.self) { _ in
            let mockRouter = MockSurvayDetailRouterProtocol()
            stub(mockRouter) {
                when($0.sourceViewController.set(any())).thenDoNothing()
                when($0.closeCompletion.set(any())).thenDoNothing()
            }
            dummyRouter = mockRouter
            return dummyRouter
        }

        let moduleAssembly = SurvayDetailAssembly(resolver: dummyContainer)

        // When creating controller by the assembly's function
        let presenter = moduleAssembly.module()

        // Then: respective container factory blocks will fire
        XCTAssertTrue(presenter is SurvayDetailViewController)
        XCTAssertNotNil(dummyInteractor)
        XCTAssertNotNil(dummyView)
        XCTAssertNotNil(dummyRouter)
        verify(dummyRouter).sourceViewController.set(ParameterMatcher<UIViewController?> { $0 === presenter })
        verify(dummyView).presenter.set(ParameterMatcher<SurvayDetailPresenterProtocol?> { $0 as! SurvayDetailViewController === presenter })
    }
}
