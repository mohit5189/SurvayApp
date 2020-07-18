import UIKit

protocol SurvayListViewProtocol: AnyView {
    var presenter: SurvayListPresenterProtocol? { get set }
    func presentSurvays(model: [SurvayModel])
}

final class SurvayListView: UIView {
    weak var presenter: SurvayListPresenterProtocol?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        adjustSubviews()
    }

    private func adjustSubviews() {
        setUpConstraints()
    }

    private func setUpConstraints() {}

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SurvayListView: SurvayListViewProtocol {
    func presentSurvays(model: [SurvayModel]) {

    }
}
