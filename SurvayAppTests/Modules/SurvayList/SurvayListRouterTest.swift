import XCTest
import UIKit
@testable import SurvayApp

final class SurvayListRouterTest: XCTestCase {

    private var router: SurvayListRouter!
    private var spyNavigationController: UINavigationControllerMock!

    private var existingRootVC: UIViewController!

    override func setUp() {
        super.setUp()
        UIView.setAnimationsEnabled(false)

        let dummyViewController = UIViewController()
        spyNavigationController = UINavigationControllerMock(rootViewController: dummyViewController)

        existingRootVC = UIApplication.shared.keyWindow?.rootViewController
        UIApplication.shared.keyWindow?.rootViewController = spyNavigationController

        router = SurvayListRouter()
        router.sourceViewController = dummyViewController
    }

    override func tearDown() {
        UIView.setAnimationsEnabled(true)
        UIApplication.shared.keyWindow?.rootViewController = existingRootVC
        super.tearDown()
    }

    // Please add tests for SurvayListRouterProtocol's functions
}
