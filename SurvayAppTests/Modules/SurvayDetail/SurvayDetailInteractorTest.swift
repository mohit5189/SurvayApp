import XCTest
import Swinject
import Cuckoo
@testable import SurvayApp

final class SurvayDetailInteractorTest: XCTestCase {

    private var container: Container!
    private var interactor: SurvayDetailInteractor!

    override func setUp() {
        super.setUp()

        // Setup Mock dependency injection
        container = Container()
        container.autoregister(SurvayDetailInteractorProtocol.self, initializer: SurvayDetailInteractor.init)

        /* Please Add SurvayDetailInteractor's dependency here.
        * If SurvayDetailInteractor's constructor requires an injected Protocol: init(eventService: EventTrackerProtocol)
        * Please add: container.autoregister(EventTrackerProtocol.self, initializer: MockEventTrackerProtocol.init).inObjectScope(.container)
        */

        interactor = container.resolve(SurvayDetailInteractorProtocol.self) as? SurvayDetailInteractor
    }

    override func tearDown() {
        // Clean up all injected mock objects
        container.resetObjectScope(ObjectScope.container)
        super.tearDown()
    }

    func testSurvayDetailInteractorInit() {
        XCTAssertNotNil(interactor)
    }

    // Please add tests for SurvayDetailInteractorProtocol's functions
}
