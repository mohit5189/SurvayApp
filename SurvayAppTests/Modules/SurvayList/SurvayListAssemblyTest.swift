import XCTest
import Swinject
import Cuckoo
@testable import SurvayApp

final class SurvayListAssemblyTest: XCTestCase {
    func testSurvayListDIAssembly() {
        // Given DependencyManager is setup to create Assembler with `SurvayListDIAssembly`
        // When App Assembly set up a dependency
        let sharedResolver = DependencyManager.shared.resolver

        // Then: the container should be able to resolve classes in SurvayList Module
        let moduleAssembly = sharedResolver.resolve(SurvayListAssembly.self)!
        let view = sharedResolver.resolve(SurvayListViewProtocol.self)!
        let interactor = sharedResolver.resolve(SurvayListInteractorProtocol.self)!
        let router = sharedResolver.resolve(SurvayListRouterProtocol.self)!
        XCTAssertNotNil(moduleAssembly)
        XCTAssertTrue(view is SurvayListView)
        XCTAssertTrue(interactor is SurvayListInteractor)
        XCTAssertTrue(router is SurvayListRouter)
    }

    // MARK: Test creating connection between interactor, presenter & view
    func testSurvayListAssembly() {
        var dummyInteractor: MockSurvayListInteractorProtocol!
        var dummyView: MockSurvayListViewProtocol!
        var dummyRouter: MockSurvayListRouterProtocol!

        // Given an Assembly with mock dependency
        let dummyContainer = Container()
        dummyContainer.register(SurvayListInteractorProtocol.self) { _ in
            dummyInteractor = MockSurvayListInteractorProtocol()
            return dummyInteractor
        }
        dummyContainer.register(SurvayListViewProtocol.self) { _ in
            dummyView = MockSurvayListViewProtocol()
            stub(dummyView) { when($0.presenter.set(any())).thenDoNothing() }
            return dummyView
        }
        dummyContainer.register(SurvayListRouterProtocol.self) { _ in
            let mockRouter = MockSurvayListRouterProtocol()
            stub(mockRouter) {
                when($0.sourceViewController.set(any())).thenDoNothing()
                when($0.closeCompletion.set(any())).thenDoNothing()
            }
            dummyRouter = mockRouter
            return dummyRouter
        }

        let moduleAssembly = SurvayListAssembly(resolver: dummyContainer)

        // When creating controller by the assembly's function
        let presenter = moduleAssembly.module()

        // Then: respective container factory blocks will fire
        XCTAssertTrue(presenter is SurvayListViewController)
        XCTAssertNotNil(dummyInteractor)
        XCTAssertNotNil(dummyView)
        XCTAssertNotNil(dummyRouter)
        verify(dummyRouter).sourceViewController.set(ParameterMatcher<UIViewController?> { $0 === presenter })
        verify(dummyView).presenter.set(ParameterMatcher<SurvayListPresenterProtocol?> { $0 as! SurvayListViewController === presenter })
    }
}
