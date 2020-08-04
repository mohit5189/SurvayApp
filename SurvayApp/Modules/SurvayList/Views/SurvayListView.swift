import UIKit
import SnapKit

private struct Constants {
    static let pageCOntrolWidth = 30
}

protocol SurvayListViewProtocol: AnyView {
    var survayButtonCallBack: ((SurvayModel) -> ())? { get set}
    var presenter: SurvayListPresenterProtocol? { get set }
    func refreshSurvays(_ survays: [SurvayModel])
    func addMoreSurvays(_ survays: [SurvayModel])
}

final class SurvayListView: UIView {
    var survayButtonCallBack: ((SurvayModel) -> ())?
    weak var presenter: SurvayListPresenterProtocol?
    private var lastView: SurvayView?
    var lastViewBottomConstraints: Constraint?

    lazy private var scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        return scrollView
    }()
    
    lazy private var pageControl: UIPageControl = {
        var pageControl = UIPageControl()
        let angle = CGFloat.pi/2
        pageControl.transform = CGAffineTransform(rotationAngle: angle)
        pageControl.tintColor = .white
        pageControl.pageIndicatorTintColor = .black
        pageControl.currentPageIndicatorTintColor = .green
        return pageControl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(scrollView)
        addSubview(pageControl)
        setUpConstraints()
    }

    private func setUpConstraints() {
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        pageControl.snp.makeConstraints {
            $0.trailing.top.bottom.equalToSuperview()
            $0.width.equalTo(Constants.pageCOntrolWidth)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SurvayListView: SurvayListViewProtocol {
    func refreshSurvays(_ survays: [SurvayModel]) {
        layoutIfNeeded()
        lastView = nil
        _ = scrollView.subviews.map { $0.removeFromSuperview() }
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        pageControl.numberOfPages = survays.count
        pageControl.currentPage = 0
        addSurvayViews(survays)
        updatePageControlCircleSize()
    }
    
    func addMoreSurvays(_ survays: [SurvayModel]) {
        layoutIfNeeded()
        if survays.count > 0 {
            removeLastViewBottomConstraint()
        }
        pageControl.numberOfPages = pageControl.numberOfPages + survays.count
        addSurvayViews(survays)
        updatePageControlCircleSize()
    }
    
    private func removeLastViewBottomConstraint() {
        lastViewBottomConstraints?.deactivate()
    }
    
    private func addSurvayViews(_ survays: [SurvayModel]) {
        for (index, survay) in survays.enumerated() {
            let survayView = SurvayView(frame: .zero)
            survayView.configView(survay)
            scrollView.addSubview(survayView)
            
            survayView.snp.makeConstraints {
                $0.leading.trailing.equalToSuperview()
                if let lastView = lastView {
                    $0.top.equalTo(lastView.snp.bottom)
                } else {
                    $0.top.equalToSuperview()
                }
                $0.width.height.equalTo(self)
                if index == survays.count - 1 {
                    lastViewBottomConstraints =  $0.bottom.equalToSuperview().constraint
                }
            }
            
            survayView.survayButtonCallBack = { [weak self] survayModel in
                self?.survayButtonCallBack?(survayModel)
            }
            lastView = survayView
        }
    }
    
    private func updatePageControlCircleSize() {
        pageControl.subviews.forEach {
            $0.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
    }
}

extension SurvayListView: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.y / scrollView.frame.size.height)
        pageControl.currentPage = Int(pageNumber)
        presenter?.handleCurrentPage(pageControl.currentPage)
    }
}
