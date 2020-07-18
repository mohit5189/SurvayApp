import XCTest
import Swinject
import Cuckoo
@testable import SurvayApp

final class SurvayListInteractorTest: XCTestCase {

    private var container: Container!
    private var interactor: SurvayListInteractor!

    override func setUp() {
        super.setUp()

        // Setup Mock dependency injection
        container = Container()
        container.autoregister(SurvayListInteractorProtocol.self, initializer: SurvayListInteractor.init)

        /* Please Add SurvayListInteractor's dependency here.
        * If SurvayListInteractor's constructor requires an injected Protocol: init(eventService: EventTrackerProtocol)
        * Please add: container.autoregister(EventTrackerProtocol.self, initializer: MockEventTrackerProtocol.init).inObjectScope(.container)
        */

        interactor = container.resolve(SurvayListInteractorProtocol.self) as? SurvayListInteractor
    }

    override func tearDown() {
        // Clean up all injected mock objects
        container.resetObjectScope(ObjectScope.container)
        super.tearDown()
    }

    func testSurvayListInteractorInit() {
        XCTAssertNotNil(interactor)
    }

    // Please add tests for SurvayListInteractorProtocol's functions
}
