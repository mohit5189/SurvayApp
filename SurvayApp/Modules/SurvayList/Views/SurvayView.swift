//
//  SurvayView.swift
//  SurvayApp
//
//  Created by Mohit Kumar on 18/7/2020.
//  Copyright © 2020 Mohit Kumar. All rights reserved.
//

import UIKit
import SnapKit
import SDWebImage

private struct Constants {
    static let titleTopConstraints = 200
    static let descTopConstraints = 100
    static let buttonBottomConstraimnts = 100
    static let commonSize: CGFloat = 60
    static let buttonSideConstraints = 50
    static let commonPadding = 16
    static let buttonFontSize: CGFloat = 24
    static let titleFontSize: CGFloat = 40
    static let descriptionFontSize: CGFloat = 20
}

final class SurvayView: UIView {
    var survayButtonCallBack: ((SurvayModel) -> ())?
    
    private var survayItem: SurvayModel? {
        didSet {
            if let imageURL = survayItem?.cover_image_url {
                backgroundColor = .clear
                bgImageView.sd_setImage(with: URL(string: imageURL + "l"), completed: nil)
            } else {
                backgroundColor = .lightGray
            }
            titleLabel.text = survayItem?.title
            descriptionLabel.text = survayItem?.description
        }
    }
    
    lazy private var bgImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy private var titleLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: Constants.titleFontSize)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    lazy private var descriptionLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.systemFont(ofSize: Constants.titleFontSize)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    lazy private var bottomButton: UIButton = {
        var button = UIButton()
        button.setTitle(R.string.localizable.survay_button_title(), for: .normal)
        button.layer.cornerRadius = Constants.commonSize / 2
        button.backgroundColor = .orange
        button.titleLabel?.textColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: Constants.buttonFontSize)
        button.addTarget(self, action: #selector(tapSurvayButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(bgImageView)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(bottomButton)
        clipsToBounds = true
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        bgImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(Constants.titleTopConstraints)
            $0.leading.equalTo(Constants.commonPadding)
            $0.trailing.equalTo(-Constants.commonPadding)
            $0.height.equalTo(Constants.commonSize)
        }
        
        bottomButton.snp.makeConstraints {
            $0.bottom.equalTo(-Constants.buttonBottomConstraimnts)
            $0.leading.equalTo(Constants.buttonSideConstraints)
            $0.trailing.equalTo(-Constants.buttonSideConstraints)
            $0.height.equalTo(Constants.commonSize)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leading.equalTo(Constants.commonPadding)
            $0.trailing.equalTo(-Constants.commonPadding)
            $0.bottom.lessThanOrEqualTo(bottomButton.snp.top)
            $0.top.equalTo(titleLabel.snp.bottom).offset(Constants.descTopConstraints)
        }
    }
    
    @objc private func tapSurvayButton() {
        guard let survayItem = survayItem else {
            return
        }
        survayButtonCallBack?(survayItem)
    }
    
    func configView(_ survayItem: SurvayModel) {
        self.survayItem = survayItem
    }
}
