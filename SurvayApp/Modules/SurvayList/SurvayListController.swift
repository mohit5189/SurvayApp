import UIKit

protocol SurvayListPresenterProtocol: AnyObject {

}

final class SurvayListViewController: UIViewController {
    private let moduleView: SurvayListViewProtocol
    private let interactor: SurvayListInteractorProtocol
    private let router: SurvayListRouterProtocol

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
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SurvayListViewController: SurvayListPresenterProtocol {

}
