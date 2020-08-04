import UIKit
import MBProgressHUD

protocol SurvayListPresenterProtocol: AnyObject {
    func handleCurrentPage(_ pageNumber: Int)
}

private struct Constants {
    static let pageSize = 5
}

final class SurvayListViewController: UIViewController {
    private let moduleView: SurvayListViewProtocol
    private let interactor: SurvayListInteractorProtocol
    private let router: SurvayListRouterProtocol
    private var currentPage: Int = 0 {
        didSet {
            getSurvayList(currentPage)
        }
    }
    private var survays: [SurvayModel] = []
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
        navigationItem.title = R.string.localizable.survay_title()
        navigationItem.leftBarButtonItem = barButtonItem
        navigationController?.navigationBar.tintColor = .black
        
        router.handleLoader(shouldShow: true)
        interactor.fetchAuthToken { [weak self] authModel in
            guard let authModel = authModel else {
                self?.showError()
                return
            }
            
            SurvaySharedManager.sharedInstance.authModel = authModel
            self?.currentPage = 0
        }
        
        moduleView.survayButtonCallBack = { [weak self] survayModel in
            self?.router.openSurvayDetails(survayModel)
        }
        
    }

    private func getSurvayList(_ pageNumber: Int) {
        interactor.fetchSurvays(currentPage: pageNumber, pageSize: Constants.pageSize) { [weak self] survays in
            DispatchQueue.main.async {
                self?.router.handleLoader(shouldShow: false)
            }
            guard let survays = survays, !survays.isEmpty else {
                self?.showError()
                return
            }
            self?.survays += survays
            
            DispatchQueue.main.async {
                if self?.currentPage == 0 {
                    self?.moduleView.refreshSurvays(survays)
                } else {
                    self?.moduleView.addMoreSurvays(survays)
                }
            }
        }
    }
    
    private func showError() {
        DispatchQueue.main.async {
            self.router.showError()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func refreshSurvays() {
        router.handleLoader(shouldShow: true)
        currentPage = 0
    }
}

extension SurvayListViewController: SurvayListPresenterProtocol {
    func handleCurrentPage(_ pageNumber: Int) {
        if pageNumber == survays.count - 1 {
            currentPage += 1
            router.handleLoader(shouldShow: true)
        }
    }
}
