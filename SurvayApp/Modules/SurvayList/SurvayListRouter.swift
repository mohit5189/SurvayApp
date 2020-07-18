import UIKit
import MBProgressHUD

protocol SurvayListRouterProtocol: RouterProtocol {
    func handleLoader(shouldShow: Bool)
    func openSurvayDetails(_ survayModel: SurvayModel)
    func showError()
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
    
    func showError() {
        let alert = UIAlertController(title: nil, message: Localization.errorMessage.local() , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: Localization.okButtonTitle.local(), style: .default, handler: nil))
        sourceViewController?.present(alert, animated: true, completion: nil)

    }
}
