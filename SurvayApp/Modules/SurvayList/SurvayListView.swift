import UIKit

protocol SurvayListViewProtocol: AnyView {
    var presenter: SurvayListPresenterProtocol? { get set }
    func presentModel(model: SurvayListModel)
}

struct SurvayListModel {

}

final class SurvayListView: UIView {
    weak var presenter: SurvayListPresenterProtocol?

    override init(frame: CGRect) {
        super.init(frame: frame)

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
    func presentModel(model: SurvayListModel) {

    }
}
