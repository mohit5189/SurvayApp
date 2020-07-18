import UIKit

protocol SurvayDetailViewProtocol: AnyView {
    var presenter: SurvayDetailPresenterProtocol? { get set }
    func presentModel(model: SurvayModel)
}

final class SurvayDetailView: UIView {
    weak var presenter: SurvayDetailPresenterProtocol?
    
    lazy private var titleLabel: UILabel = {
        var label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(titleLabel)
        adjustSubviews()
    }

    private func adjustSubviews() {
        setUpConstraints()
    }

    private func setUpConstraints() {
        titleLabel.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SurvayDetailView: SurvayDetailViewProtocol {
    func presentModel(model: SurvayModel) {
        titleLabel.text = model.description
    }
}
