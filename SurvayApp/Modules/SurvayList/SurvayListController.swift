import UIKit
import MBProgressHUD

protocol SurvayListPresenterProtocol: AnyObject {

}

final class SurvayListViewController: UIViewController {
    private let moduleView: SurvayListViewProtocol
    private let interactor: SurvayListInteractorProtocol
    private let router: SurvayListRouterProtocol
    lazy private var barButtonItem: UIBarButtonItem = {
        var button = UIBarButtonItem(image: #imageLiteral(resourceName: "retry"), style: .plain, target: self, action: #selector(refreshSurvays))
        return button
    }()
    
    init(view: SurvayListViewProtocol, interactor: SurvayListInteractorProtocol, router: SurvayListRouterProtocol) {
        self.moduleView = view
        self.interactor = interactor
        self.router = router

        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        view = moduleView.view
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Localization.screenTitle.local()
        navigationItem.leftBarButtonItem = barButtonItem
        navigationController?.navigationBar.tintColor = .black
     
        router.handleLoader(shouldShow: true)
        interactor.fetchAuthToken { [weak self] authModel in
            guard let authModel = authModel else {
                return
            }
            
            SurvaySharedManager.sharedInstance.authModel = authModel
            self?.getSurvayList()
        }
        
        moduleView.survayButtonCallBack = { [weak self] survayModel in
            self?.router.openSurvayDetails(survayModel)
        }

    }

    private func getSurvayList() {
        interactor.fetchSurvays { [weak self] survays in
            DispatchQueue.main.async {
                self?.router.handleLoader(shouldShow: false)
            }
            guard let survays = survays, !survays.isEmpty else {
                return
            }

            DispatchQueue.main.async {
                self?.moduleView.presentSurvays(survays)
            }
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func refreshSurvays() {
        router.handleLoader(shouldShow: true)
        getSurvayList()
    }
}

extension SurvayListViewController: SurvayListPresenterProtocol {

}
