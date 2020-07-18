import UIKit
import MBProgressHUD

protocol SurvayListRouterProtocol: RouterProtocol {
    func handleLoader(shouldShow: Bool)
    func openSurvayDetails(_ survayModel: SurvayModel)
}

final class SurvayListRouter: Router, SurvayListRouterProtocol {
    private var dependencyManager: DependencyManager = DependencyManager.shared

    func handleLoader(shouldShow: Bool) {
        if let sourceVC = sourceViewController {
            if shouldShow {
                MBProgressHUD.showAdded(to: sourceVC.view, animated: true)
            } else {
                MBProgressHUD.hide(for: sourceVC.view, animated: true)
            }
        }
    }
    
    func openSurvayDetails(_ survayModel: SurvayModel) {
        sourceViewController?.navigationController?.pushViewController(SurvayDetailAssembly(resolver: dependencyManager.resolver).module(survayModel: survayModel), animated: true)
    }
}
