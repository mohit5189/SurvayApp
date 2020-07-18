import XCTest
import Swinject
import Cuckoo
@testable import SurvayApp

final class SurvayListViewControllerTest: XCTestCase {
    private var container: Container!
    private var viewController: SurvayListViewController!

    private var mockView: MockSurvayListViewProtocol!
    private var mockInteractor: MockSurvayListInteractorProtocol!
    private var mockRouter: MockSurvayListRouterProtocol!

    override func setUp() {
        super.setUp()

        container = Container()
        container.autoregister(SurvayListViewProtocol.self, initializer: MockSurvayListViewProtocol.init).inObjectScope(.container)
        container.autoregister(SurvayListInteractorProtocol.self, initializer: MockSurvayListInteractorProtocol.init).inObjectScope(.container)
        container.autoregister(SurvayListRouterProtocol.self, initializer: MockSurvayListRouterProtocol.init).inObjectScope(.container)

        container.autoregister(SurvayListViewController.self, initializer: SurvayListViewController.init).inObjectScope(.container)

        viewController = container.resolve(SurvayListViewController.self)

        mockView = container.resolve(SurvayListViewProtocol.self) as? MockSurvayListViewProtocol
        mockInteractor = container.resolve(SurvayListInteractorProtocol.self) as? MockSurvayListInteractorProtocol
        mockRouter = container.resolve(SurvayListRouterProtocol.self) as? MockSurvayListRouterProtocol
    }

    override func tearDown() {
        container.resetObjectScope(ObjectScope.container)
        container = nil
        super.tearDown()
    }

    func testInit() {
        XCTAssertNotNil(viewController, "controller to test should not be nil")
    }

    // Please add tests for SurvayListViewController's functions
}
