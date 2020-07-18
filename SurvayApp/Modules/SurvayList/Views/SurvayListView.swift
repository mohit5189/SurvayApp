import UIKit

protocol SurvayListViewProtocol: AnyView {
    var survayButtonCallBack: ((SurvayModel) -> ())? { get set}
    var presenter: SurvayListPresenterProtocol? { get set }
    func presentSurvays(_ survays: [SurvayModel])
}

final class SurvayListView: UIView {
    var survayButtonCallBack: ((SurvayModel) -> ())?
    weak var presenter: SurvayListPresenterProtocol?
    lazy private var scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        return scrollView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(scrollView)
        setUpConstraints()
    }

    private func setUpConstraints() {
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SurvayListView: SurvayListViewProtocol {
    func presentSurvays(_ survays: [SurvayModel]) {
        layoutIfNeeded()
        _ = scrollView.subviews.map { $0.removeFromSuperview() }
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        var lastView: SurvayView?
        for (index, survay) in survays.enumerated() {
            let survayView = SurvayView(frame: .zero)
            survayView.configView(survay)
            scrollView.addSubview(survayView)
            
            if let lastView = lastView {
                survayView.snp.makeConstraints {
                    $0.leading.trailing.equalToSuperview()
                    $0.top.equalTo(lastView.snp.bottom)
                    $0.width.height.equalTo(self)
                    if index == survays.count - 1 {
                        $0.bottom.equalToSuperview()
                    }
                }
            } else {
                survayView.snp.makeConstraints {
                    $0.leading.trailing.top.equalToSuperview()
                    $0.width.height.equalTo(self)
                    if index == survays.count - 1 {
                        $0.bottom.equalToSuperview()
                    }
                }
            }
            
            survayView.survayButtonCallBack = { [weak self] survayModel in
                self?.survayButtonCallBack?(survayModel)
            }
            lastView = survayView
        }
    }
}
