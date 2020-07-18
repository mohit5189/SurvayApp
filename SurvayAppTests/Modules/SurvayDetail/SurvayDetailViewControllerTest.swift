import XCTest
import Swinject
import Cuckoo
@testable import SurvayApp

final class SurvayDetailViewControllerTest: XCTestCase {
    private var container: Container!
    private var viewController: SurvayDetailViewController!

    private var mockView: MockSurvayDetailViewProtocol!
    private var mockInteractor: MockSurvayDetailInteractorProtocol!
    private var mockRouter: MockSurvayDetailRouterProtocol!

    override func setUp() {
        super.setUp()

        container = Container()
        container.autoregister(SurvayDetailViewProtocol.self, initializer: MockSurvayDetailViewProtocol.init).inObjectScope(.container)
        container.autoregister(SurvayDetailInteractorProtocol.self, initializer: MockSurvayDetailInteractorProtocol.init).inObjectScope(.container)
        container.autoregister(SurvayDetailRouterProtocol.self, initializer: MockSurvayDetailRouterProtocol.init).inObjectScope(.container)

        container.autoregister(SurvayDetailViewController.self, initializer: SurvayDetailViewController.init).inObjectScope(.container)

        viewController = container.resolve(SurvayDetailViewController.self)

        mockView = container.resolve(SurvayDetailViewProtocol.self) as? MockSurvayDetailViewProtocol
        mockInteractor = container.resolve(SurvayDetailInteractorProtocol.self) as? MockSurvayDetailInteractorProtocol
        mockRouter = container.resolve(SurvayDetailRouterProtocol.self) as? MockSurvayDetailRouterProtocol
    }

    override func tearDown() {
        container.resetObjectScope(ObjectScope.container)
        container = nil
        super.tearDown()
    }

    func testInit() {
        XCTAssertNotNil(viewController, "controller to test should not be nil")
    }

    // Please add tests for SurvayDetailViewController's functions
}
