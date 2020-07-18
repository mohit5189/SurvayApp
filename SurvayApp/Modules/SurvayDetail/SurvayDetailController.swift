import UIKit

protocol SurvayDetailPresenterProtocol: AnyObject {

}

final class SurvayDetailViewController: UIViewController {
    private let moduleView: SurvayDetailViewProtocol
    private let interactor: SurvayDetailInteractorProtocol
    private let router: SurvayDetailRouterProtocol
    private var survayModel: SurvayModel
    
    init(view: SurvayDetailViewProtocol, interactor: SurvayDetailInteractorProtocol, router: SurvayDetailRouterProtocol, model: SurvayModel) {
        self.moduleView = view
        self.interactor = interactor
        self.router = router
        self.survayModel = model
        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        view = moduleView.view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = Localization.survayDetailTitle.local()
        moduleView.presentModel(model: survayModel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SurvayDetailViewController: SurvayDetailPresenterProtocol {

}
