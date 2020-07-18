import UIKit
import MBProgressHUD

protocol SurvayListRouterProtocol: RouterProtocol {
    func handleLoader(shouldShow: Bool)
}

final class SurvayListRouter: Router, SurvayListRouterProtocol {
    func handleLoader(shouldShow: Bool) {
        if let sourceVC = sourceViewController {
            DispatchQueue.main.async {
                if shouldShow {
                    MBProgressHUD.showAdded(to: sourceVC.view, animated: true)
                } else {
                    MBProgressHUD.hide(for: sourceVC.view, animated: true)
                }
            }
        }
    }
}
